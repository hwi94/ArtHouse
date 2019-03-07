package com.itbank.artHouse.movie;

import java.io.File;
import java.text.DecimalFormat;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


@Controller
public class MovieController {
	
	@Autowired
	MovieDAO dao;
	
	@Autowired
	MovieReplyDAO replyDao;
	
	@RequestMapping("selectAllMovie.do")
    public String selectAllMovie(Model model){
        model.addAttribute("movieList", dao.selectAll());
        return "movie/movieList"; //일반 고객용 페이지
    }
	
	@RequestMapping("selectAllMovieAdmin.do")
	public String selectAllMovieAdmin(Model model){
		model.addAttribute("movieList", dao.selectAll());
		return "movie/movieListAdmin";//관리자 페이지
	}

	@RequestMapping("selectDetailMovie.do")
	public String selectDetailMovie(Model model, @RequestParam("code") int code, MovieDTO movieDTO){
		double grade = replyDao.gradeAvg(code);
		DecimalFormat df = new DecimalFormat("#.#");
		movieDTO.setGrade(df.format(grade)+""); //소수점이 너무 길어지면 칼럼의 용량을 초과하기 때문에 포맷을 소숫점 1 자리 까지만 변경해서 넣어줌
		movieDTO.setCode(code);
		
		dao.gradeAvgUpdate(movieDTO);
		
		model.addAttribute("movieDTO", dao.selectDetail(code));
		return "movie/movieDetail";
	}
	
	@RequestMapping("insertMovie.do")
	public String insertMovie(@RequestParam("count") String count,@RequestParam("recommend") String reco,@RequestParam("agerequire") String age,
							MovieDTO movieDTO, Model model, MultipartHttpServletRequest request){
		
		MultipartFile mf = request.getFile("file");
		String path = request.getRealPath("resources/img/movie");
		String fileName = mf.getOriginalFilename();
		File uploadFile = new File(path+"//"+fileName);
		try {
			mf.transferTo(uploadFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		int countInt = Integer.parseInt(count);
		int recoInt = Integer.parseInt(reco);
		int ageInt = Integer.parseInt(age);
		
		movieDTO.setCount(countInt);
		movieDTO.setRecommend(recoInt);
		movieDTO.setAgerequire(ageInt);
		movieDTO.setPhoto(fileName);
		dao.insert(movieDTO);
		
		model.addAttribute("movieList", dao.selectAll());
		return "movie/movieListAdmin";
	}
	
	//업데이트 내용 입력 화면
	@RequestMapping("updateMovie.do")
	public String updateMovie(@RequestParam("code") int code, Model model){
		model.addAttribute("movieDTO", dao.selectDetail(code));
		return "movie/updateMovie";
	}
	
	//실제 업데이트 이뤄지는 메소드
	@RequestMapping("updateMovieAction.do")
	public String updateMovieAction(@RequestParam("code") int code, MovieDTO movieDTO, Model model){
		
		dao.update(movieDTO);
		
		model.addAttribute("movieDTO", dao.selectDetail(code));
		return "movie/movieDetail";
	}
	
	//영화 삭제
	@RequestMapping("deleteMovie.do")
	public String deleteMovie(MovieDTO movieDTO, Model model){
		dao.delete(movieDTO);
		
		model.addAttribute("movieList", dao.selectAll());
		return "movie/movieListAdmin";
	}
	
	//추천 수 증가
	@RequestMapping("addRecommend.do")
	@ResponseBody
	public int addRecommend(@RequestParam("code") int code, @RequestParam("userId") String userId,
							HttpServletResponse response, HttpServletRequest request){
		
		//쿠키를 이용한 추천수 중복 방지
		String name = "";	//쿠키에서 가져올 key를 담을 변수
		String value = "";	//쿠키에서 가져올 value를 담을 변수
		String ckName = "";	//쿠키에서 가져온 key와 요청페이지의 code가 같을 때 ckName = name 대입 
		String ckValue = "";//쿠키에서 가져온 value와 현재 세션 아이디가 같을 때 ckValue = value 대입
		
		Cookie[] getCookie = request.getCookies();
		if(getCookie != null){
			for(int i=0; i<getCookie.length; i++){
				Cookie c = getCookie[i];
				name = c.getName(); // 쿠키 key 가져오기
				value = c.getValue(); // 쿠키 value 가져오기
				
				System.out.println(name + " : " + value);
				if(name.equals(code+"") && value.equals(userId)){ //쿠키에 스트링으로 넣어주기 위해 code+""를 해줌
					ckName = name;
					ckValue = value;
				}
			}
		}
		
		if(ckName.equals(code+"") && ckValue.equals(userId)){
			return -1;
		}else{
			Cookie setCookie = new Cookie(code+"", userId);
			setCookie.setMaxAge(60*60*24);
			response.addCookie(setCookie);
			
			MovieDTO dto = dao.addRecommend(code);
			int recommend = dto.getRecommend();
			return recommend;			
		}
	}
}





