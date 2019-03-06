package com.itbank.artHouse.movie;

import java.io.File;
import java.text.DecimalFormat;

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
        return "movie/movieListAdmin";//임시로 어드민 리턴시켜 놓음
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
	
	@RequestMapping("addRecommend.do")
	@ResponseBody
	public int addRecommend(@RequestParam("code") int code, @RequestParam("userId") String userId, HttpSession session){
		session.setAttribute("userId", "admin"); // 임시로 넣어준 세션값
		if(session.getAttribute("userId").equals(userId)){
			return -1;
		}else{
			MovieDTO dto = dao.addRecommend(code);
			int recommend = dto.getRecommend();
			return recommend;			
		}
	}
}





