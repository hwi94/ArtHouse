package com.itbank.artHouse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberDAO dao;
	
	
	/* 회원가입 */
	@RequestMapping("signUp.do")
	public String signUp(MemberDTO dto , Model model) throws Exception{
	dao.insert(dto);
	model.addAttribute("dto",dto);
	return "signUp";
	
	}
	
	
}
