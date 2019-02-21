package com.itbank.artHouse.movie;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieReplyDAO {
	@Autowired
	SqlSessionTemplate myBatis;
	
	public List<MovieDTO> selectAll() {
		return myBatis.selectList("movieReply.selectAll");
	}
	
	public MovieDTO selectDetail(MovieReplyDTO movieReplyDTO) {
		return myBatis.selectOne("movieReply.select", movieReplyDTO.getA_code());
	}
	
	public void insert(MovieReplyDTO movieReplyDTO) {
		myBatis.insert("movieReply.insert", movieReplyDTO);
	}
	
	public void delete(MovieReplyDTO movieReplyDTO) {
		myBatis.delete("movieReply.delete", movieReplyDTO);
	}
	
	public void update(MovieReplyDTO movieReplyDTO) {
		myBatis.update("movieReply.update", movieReplyDTO);
	}
}
