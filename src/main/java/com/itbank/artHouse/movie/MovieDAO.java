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
	
	public MovieDTO selectDetail(int code) {
		return myBatis.selectOne("movie.select", code);
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
	
	public MovieDTO addRecommend(int code){
		myBatis.update("movie.addRecommend", code);
		return myBatis.selectOne("movie.selectRecommend", code);
	}
	
	public void gradeAvgUpdate(MovieDTO movie){
		myBatis.update("movie.gradeAvgUpdate", movie);
	}
	
	public List<MovieDTO> selectMovie(MovieDTO movieDTO){
		return myBatis.selectList("movie.selectMovie", movieDTO);
	}
}






