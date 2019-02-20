package com.itbank.artHouse.book;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("tDao")
public class TicketDAO {

	@Autowired
	SqlSessionTemplate myBatis;
	
	public List<TicketDTO> select(TicketDTO ticketDTO) throws Exception {
		return myBatis.selectList("ticket.select", ticketDTO);
	}
	public List<TicketDTO> selectAll() throws Exception {
		return myBatis.selectList("ticket.selectAll");
	}
	public void insert(TicketDTO ticketDTO) throws Exception {
		myBatis.insert("ticket.insert",ticketDTO);
	}
	public void delete(TicketDTO ticketDTO) throws Exception {
		myBatis.delete("ticket.insert",ticketDTO);
	}
}
