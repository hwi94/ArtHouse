package com.itbank.artHouse.movie;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAO {
	
	@Autowired
	SqlSessionTemplate myBatis;
	
	public List<MovieDTO> selectAll() {
		return myBatis.selectList("movie.selectAll");
	}
	
	public MovieDTO selectDetail(MovieDTO movieDTO) {
		return myBatis.selectOne("movie.select", movieDTO.getCode());
	}
	
	public void insert(MovieDTO movieDTO) {
		myBatis.insert("movie.insert", movieDTO);
	}
	
	public void delete(MovieDTO movieDTO) {
		myBatis.delete("movie.delete", movieDTO);
	}
	
	public void update(MovieDTO movieDTO) {
		myBatis.update("movie.update", movieDTO);
	}
	
}






