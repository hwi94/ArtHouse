package com.itbank.artHouse.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MovieController {
	
	@Autowired
	MovieDAO dao;
	
	@RequestMapping("selectAllMovie.do")
    public String selectAllMovie(Model model){
        model.addAttribute("movieList", dao.selectAll());
        return "movie/movieList";//임시로 어드민 리턴시켜 놓음
    }
	
	@RequestMapping("selectDetailMovie.do")
	public String selectDetailMovie(Model model, MovieDTO movieDTO){
		model.addAttribute("movieDTO", dao.selectDetail(movieDTO));
		return "movie/movieDetail";
	}
	
	@RequestMapping("insertMovie.do")
	public String insertMovie(@RequestParam("code") String code,
							@RequestParam("count") String count,
							@RequestParam("recommend") String reco,
							@RequestParam("agerequire") String age,
							MovieDTO movieDTO, Model model){
		int codeInt = Integer.parseInt(code);
		int countInt = Integer.parseInt(count);
		int recoInt = Integer.parseInt(reco);
		int ageInt = Integer.parseInt(age);
		movieDTO.setCode(codeInt);
		movieDTO.setCount(countInt);
		movieDTO.setRecommend(recoInt);
		movieDTO.setAgerequire(ageInt);
		dao.insert(movieDTO);
		
		model.addAttribute("movieList", dao.selectAll());
		return "movie/movieListAdmin";
	}
	
	@RequestMapping("deleteMovie.do")
	public String deleteMovie(MovieDTO movieDTO, Model model){
		dao.delete(movieDTO);
		
		model.addAttribute("movieList", dao.selectAll());
		return "movie/movieListAdmin";
	}
	
	//업데이트 내용 입력 화면
	@RequestMapping("updateMovie.do")
	public String updateMovie(MovieDTO movieDTO, Model model){
		model.addAttribute("movieDTO", dao.selectDetail(movieDTO));
		return "movie/updateMovie";
	}
	
	//실제 업데이트 이뤄지는 메소드
	@RequestMapping("updateMovieAction.do")
	public String updateMovieAction(MovieDTO movieDTO, Model model){
		dao.update(movieDTO);
		model.addAttribute("movieDTO", dao.selectDetail(movieDTO));
		return "movie/movieDetail";
	}
	
}





