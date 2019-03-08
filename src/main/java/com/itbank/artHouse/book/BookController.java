package com.itbank.artHouse.book;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itbank.artHouse.movie.MovieDAO;
import com.itbank.artHouse.movie.MovieDTO;
import com.mysql.fabric.xmlrpc.base.Array;

@Controller
public class BookController {

	@Autowired
	@Qualifier("rDao")
	ResvDAO rDao;
	
	@Autowired
	MovieDAO mDao;
	
	@RequestMapping("moviePage")
	public String select(Model model, @RequestParam("movie")String movieGiven) throws Exception{

		// = rDao.selectAll();
		List<ResvDTO> list = rDao.selectMovie();
		model.addAttribute("list",list);
		
		
		Calendar cal = Calendar.getInstance();
		int day = cal.get(Calendar.DAY_OF_MONTH);
		String[] dayList = new String[9];
		for (int i = 0; i < dayList.length; i++) {
			dayList[i] = day+i+"";
		}
		
		model.addAttribute("dayList",dayList);
		model.addAttribute("movieGiven",movieGiven);
		return "book/book";
	}
	
	@RequestMapping("movieInfo")
	public String select(@RequestParam("movie")String movie ,Model model) throws Exception{
		ResvDTO dto = new ResvDTO();
		dto.setMovie(movie);
		model.addAttribute("list",rDao.selectName(dto));
		return "book/movieInfo";
	}
	
	@RequestMapping("playtimeInfo")
	public String select2(String movie, Model model) throws Exception {
		ResvDTO dto = new ResvDTO();
		dto.setMovie(movie);
		model.addAttribute("list",rDao.select(dto));
		return "book/playtimeInfo";
	}
	
	@RequestMapping("movieInformation")
	public String selectMovie(String movie, Model model) throws Exception{
		MovieDTO movieDTO = new MovieDTO();
		movieDTO.setTitle(movie);
		List<MovieDTO> list=mDao.selectMovie(movieDTO);
		movieDTO=list.get(0);
		model.addAttribute("movieDTO",movieDTO);
		
		return "book/movieInformation";
		
	}
}
