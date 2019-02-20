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
}
