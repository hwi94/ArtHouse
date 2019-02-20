package com.itbank.artHouse.food;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	@Autowired
	FoodDAO dao;
	
	@RequestMapping("selectAll.do")
	public String selectAll(Model model) throws Exception{
		List<FoodDTO> list = dao.selectAll();
		model.addAttribute("list", list);
		return "food/foodList";
	}
	
	
	
}
