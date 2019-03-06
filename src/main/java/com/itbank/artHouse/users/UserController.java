package com.itbank.artHouse.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	
	@Autowired
	UserDAO dao;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	//아이디 중복체크
	@RequestMapping("users/idCheck.do")
	public String idCheck(@RequestParam String id, Model model) {
		int count = dao.idCheck(id);
		model.addAttribute("count", count);
		
		return "redirect:idCheck.jsp";
	}
	
	//가입처리 -- DB에 삽입
	@RequestMapping("users/join.do")
	public String join(UserDTO userDTO) {
		String pw = userDTO.getPw();
		String pwcp = passwordEncoder.encode(pw);
		userDTO.setPw(pwcp);
		
		dao.insert(userDTO);
		
		return "users/join_success";
	}
	
	//일반로그인 확인
	@RequestMapping("users/login.do")
	public String login(UserDTO userDTO, Model model, HttpSession session) {
		String pw = userDTO.getPw();	//입력한 비밀번호
		
		if (dao.select(userDTO) != null) {
			String pwcp = dao.select(userDTO).getPw();	//인코딩하여 저장한 비밀번호
			String returns = null;
			
			//입력한 비밀번호와 저장한 비밀번호 매치
			boolean found = passwordEncoder.matches(pw, pwcp);
			
			if (found) {	//로그인 성공
				userDTO = dao.select(userDTO);
				session.setAttribute("user", userDTO);
				
				if (dao.select(userDTO).getGrade().equals("A")) {
					model.addAttribute("count", 2);
				} else {
					model.addAttribute("count", 1);					
				}
				
			} else {		//로그인 실패
				model.addAttribute("count", 0);				
			}	
			
		} else {
			model.addAttribute("count", 0);
		}
		
		return "redirect:idCheck.jsp";
	}
	
	//소셜로그인 확인
	@RequestMapping("users/login_social.do")
	public String login_social(@RequestParam String get_id, UserDTO userDTO, HttpSession session) {
		userDTO.setId(get_id);
		
		userDTO = dao.select(userDTO);
		session.setAttribute("user", userDTO);
		
		return "redirect:../main.jsp";
	}
	
	//아이디찾기
	@RequestMapping("users/id_search.do")
	public void id_search(UserDTO userDTO, HttpServletRequest request) {
		String id = dao.id_search(userDTO);
		System.out.println(id);
		
		if (id != null) {
			request.setAttribute("id", id);			
		}		
	}
	
	//회원정보수정
	@RequestMapping("users/update.do")
	public String update(UserDTO userDTO, HttpSession session) {
		//비밀번호까지 수정하는 경우
		if (userDTO.getPw() != "") {
			String pwcp = passwordEncoder.encode(userDTO.getPw());
			userDTO.setPw(pwcp);
			
			dao.update(userDTO);
			
		//비밀번호 수정 안하는 경우
		} else {		
			dao.update2(userDTO);
		}
		
		session.setAttribute("user", userDTO);
		
		return "redirect:mypage_main.jsp";
	}
	
	//회원탈퇴
	@RequestMapping("users/delete.do")
	public String delete(UserDTO userDTO, HttpSession session) {
		dao.delete(userDTO);
		session.invalidate();
		
		return "redirect:../main.jsp";
	}
	
	//로그아웃
	@RequestMapping("users/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:../main.jsp";
	}
}
