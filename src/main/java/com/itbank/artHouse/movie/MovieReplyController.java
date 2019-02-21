package com.itbank.artHouse.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieReplyController {
	
	@Autowired
	MovieReplyDAO dao;
	
	@RequestMapping("insertMovieReply.do")
	public String insertMovieReply(MovieReplyDTO movieReplyDTO, Model model){
		dao.insert(movieReplyDTO);
		model.addAttribute("reply", movieReplyDTO);
		return "movie/replyResult";
	}
}
