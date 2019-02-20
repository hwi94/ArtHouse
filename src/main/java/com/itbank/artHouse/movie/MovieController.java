package com.itbank.artHouse.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@Autowired
	MovieDAO dao;
	
	@RequestMapping("selectAllMovie.do")
    public String selectAllProduct(Model model){
        model.addAttribute("movieList", dao.selectAll());
        return "movie/movieMain";
    }

	
}
