package com.itbank.artHouse.food;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itbank.artHouse.food.FoodDTO;;

@Repository("dao")
public class FoodDAO {
	
	@Autowired
	SqlSessionTemplate myBatis;
	
	public void insert(FoodDTO dto){
		myBatis.insert("food.insert",dto );
	}
	
	public FoodDTO select(FoodDTO dto) throws Exception {
		return myBatis.selectOne("food.select", dto);
	}
	
	public List<FoodDTO> selectAll() throws Exception { // 전체조회 메서드
		return myBatis.selectList("food.selectAll");
	} // selectAll()종료
	
	public void delete(FoodDTO dto) throws ClassNotFoundException, SQLException{
		myBatis.delete("food.delete", dto);
	}
	
	public void update(FoodDTO dto) throws Exception {
		myBatis.update("food.update", dto);
	}
	
}
