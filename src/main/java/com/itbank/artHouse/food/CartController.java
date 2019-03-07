package com.itbank.artHouse.food;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {
	
	@Autowired
	CartDAO dao2;
	int total = 0;
	ArrayList<CartDTO> list;
	List<CartDTO> list2;
	
	
	@RequestMapping("cartInsert.do")
	public String cartInsert(CartDTO cartDTO,Model model, HttpSession session, @RequestParam("name") String name) throws Exception{
		String user_id = (String)session.getValue("id");
		cartDTO.setUser_id(user_id);
		System.out.println("user_id: "+cartDTO.getUser_id());
		System.out.println("상품코드: "+cartDTO.getCode());
		System.out.println("가격: "+cartDTO.getPrice());
		System.out.println("수량: "+cartDTO.getAmount());
		total = cartDTO.getAmount()*cartDTO.getPrice();
		cartDTO.setPrice(total);
		
		dao2.insert(cartDTO);  //db에 insert
		list = new ArrayList<CartDTO>(); 
		
		list.add(cartDTO);
		model.addAttribute("list", list);
		
		System.out.println("Insert 완료!");
		System.out.println("---------------------------");
		return "food/cartInsert";
	}
	
	@RequestMapping("/cartView")
	public String selectCart(CartDTO cartDTO,HttpServletRequest request,Model model) throws Exception{
		
		String user_id = request.getParameter("user_id");
		return "food/cartView";
	}
	
	/*@RequestMapping("test02.do")
	public void selectTest(CartDTO cartDTO) throws Exception {
		CartDTO dto2 = new CartDTO();
		dto2 = dao2.select(cartDTO);
		System.out.println(dto2.getPrice());
	}*/
}
