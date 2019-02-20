package com.itbank.artHouse.serviceCenter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@Autowired
	NoticeDAO dao;
	
	@RequestMapping("serviceCenter/noticeUpload.do")
	/* 공지사항등록 */
	public String noticeUpload(NoticeDTO dto, Model model) throws Exception{
		System.out.println("여기는컨트롤러 내가받은 title = " + dto.getTitle());
		System.out.println("여기는컨트롤러 내가받은 titleNo = " + dto.getTitleNo());
		System.out.println("여기는컨트롤러 내가받은 MovieTheaters = " + dto.getMovieTheaters());
		System.out.println("여기는컨트롤러 내가받은 UploadDate = " + dto.getUploadDate());
		System.out.println("여기는컨트롤러 내가받은 Contents = " + dto.getContents());
		
		dao.insert(dto);
		model.addAttribute("dto",dto);
		
		return "complete";
	}
	
	
}
