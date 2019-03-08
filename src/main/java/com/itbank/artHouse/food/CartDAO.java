package com.itbank.artHouse.food;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dao2")
public class CartDAO {
	
	@Autowired
	SqlSessionTemplate myBatis;
	
	public void insert(CartDTO dto){
		myBatis.insert("cart.insert",dto );
	}
	
	public List<CartDTO> select(String id)  {
		return myBatis.selectOne("cart.select");
	}
	
	public List<CartDTO> selectAll() { // 전체조회 메서드
		return myBatis.selectList("cart.selectAll");
	} // selectAll()종료
	
	public void delete(CartDTO dto) {
		myBatis.delete("cart.delete", dto);
	}
	
	public void update(CartDTO dto)  {
		myBatis.update("cart.update", dto);
	}
	

}
