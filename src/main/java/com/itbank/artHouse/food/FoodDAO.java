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
	
	public FoodDTO select(FoodDTO dto) {
		return myBatis.selectOne("food.select", "dto");
	}
	
	/*public FoodDTO selectCode(String code) {
		return myBatis.selectOne("food.select", dto);
	}*/
	
	public List<FoodDTO> selectAll()  { // 전체조회 메서드
		return myBatis.selectList("food.selectAll");
	} // selectAll()종료
	
	public void delete(FoodDTO dto) {
		myBatis.delete("food.delete", dto);
	}
	
	public void update(FoodDTO dto) {
		myBatis.update("food.update", dto);
	}
	
}
