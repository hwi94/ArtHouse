package com.itbank.artHouse.book;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SeatController {

	@Autowired
	@Qualifier("rDao")
	ResvDAO rDao;
	
	@Autowired
	@Qualifier("tDao")
	TicketDAO tDao;

	@RequestMapping("seatPage")
	public String seatPage(@RequestParam("playtime") String playtime, @RequestParam("takenSeats") String takenSeats,
			String passMovie, String passTheater, String passDate, Model model) throws Exception {
		// ArrayList<ResvDTO> rList = rDao.select("playtime", "2019-02-17
		// 06:50:13");
		
		
		ResvDTO2 rDto2 = new ResvDTO2();
		rDto2.setPlaytime(playtime);
		List<ResvDTO2> rList = rDao.selectTheater(rDto2);
		rDto2 = rList.get(0);
		// ArrayList<String> tList = rDao.selectTheater("2019-02-17 06:50:13");
		model.addAttribute("rDto", rDto2);
		model.addAttribute("passMovie", passMovie);
		model.addAttribute("passTheater", passTheater);
		model.addAttribute("passDate", passDate);
		return "book/book_seats";
	}

	@RequestMapping("seatSelect")
	public String seats(String playtime, String seatTaken, Model model) throws Exception {
		ResvDTO2 rDto2 = new ResvDTO2();
		rDto2.setPlaytime(playtime);
		List<ResvDTO2> tList = rDao.selectTheater(rDto2);

		ResvDTO2 rDto = tList.get(0);

		ArrayList<String> list = new ArrayList<String>();
		String[] arr = rDto.seats.split(",");
		for (int i = 0; i < arr.length; i++) {
			list.add(arr[i]);
		}

		String[] takenList = seatTaken.split("-");
		String change = null;

		for (int i = 0; i < takenList.length; i++) {
			for (int j = 0; j < list.size(); j++) {
				if (takenList[i].equals(list.get(j))) {
					change = list.get(j).substring(1, 2);
					list.set(j, "T" + change);
				}
			}
		}

		model.addAttribute("list", list);
		model.addAttribute("takenList", takenList);
		return "book/seatSelect";
	}

		@RequestMapping("chargePage")
		public String charge(@RequestParam("id")String id,@RequestParam("playtime")String playtime, @RequestParam("click")String click, @RequestParam("money")String money,@RequestParam("movie")String movie, Model model) throws Exception {
			ResvDTO resvDTO = new ResvDTO();
			resvDTO.setPlaytime(playtime);
			List<ResvDTO> list=rDao.selectPlaytime(resvDTO);
			ResvDTO resvDTO1 =list.get(0);
			
			String taken =resvDTO1.getTaken();
			if(taken!=null) {
				resvDTO1.setTaken(taken+"-"+click);
			} else {
				resvDTO1.setTaken(taken);
			}
			
			rDao.update(resvDTO1);
			
			model.addAttribute("resvDTO1",resvDTO1);
			
			TicketDTO ticketDTO = new TicketDTO();
			ticketDTO.setId(id);
			ticketDTO.setMoney(money);
			ticketDTO.setrTime(playtime);
			ticketDTO.setSeats(click);
			tDao.insert(ticketDTO);
			
			return "book/chargePage";
		}
}
