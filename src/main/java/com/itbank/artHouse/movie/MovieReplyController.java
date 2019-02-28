package com.itbank.artHouse.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MovieReplyController {
	
	@Autowired
	MovieReplyDAO dao;
	@Autowired
	MovieDAO dao2;
	
	@RequestMapping("insertMovieReply.do")
	@ResponseBody
	public void insertMovieReply(MovieReplyDTO movieReplyDTO){
		dao.insert(movieReplyDTO);
	}
	
	@RequestMapping("listMovieReply.do")
	public String listMovieReply(@RequestParam("code") int code, @RequestParam("curPage") int curPage, Model model){
		final int ROWSIZE = 5;	//한 번에 몇 개의 게시물을 보여줄 것인가?
		final int BLOCK = 3;	//하단에 몇 개의 번호를 표시해 줄 것인가?
		
		//리뷰 댓글의 시작번호 - 끝번호
		int start = (curPage * ROWSIZE) - (ROWSIZE - 1);
		int end = (curPage * ROWSIZE);
		
		//페이징 번호 시작 값 - 끝 값 
		int startPg = ((curPage - 1) / BLOCK * BLOCK) + 1;
		int endPg = ((curPage - 1) / BLOCK * BLOCK) + BLOCK;
		
		//리뷰 개수 구하기
		int count = dao.count(code);
		
		//리뷰 개수를 갖고 페이지 총 개수를 구함
		int allPg = (int)Math.ceil(count/(double)ROWSIZE);
		if(endPg > allPg){
			endPg = allPg;
		}
		
		model.addAttribute("listMovieReply", dao.selectAll(code, start, end));
		model.addAttribute("movieDTO", dao2.selectDetail(code));
		model.addAttribute("BLOCK", BLOCK);
		model.addAttribute("curPage", curPage);
		model.addAttribute("startPg", startPg);
		model.addAttribute("endPg", endPg);
		model.addAttribute("allPg", allPg);
		return "movie/listMovieReply";
	}
	
}
