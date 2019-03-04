package com.itbank.artHouse.movie;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieReplyDAO {
	@Autowired
	SqlSessionTemplate myBatis;
	
	public List<MovieReplyDTO> selectAll(int code, int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", code);
		map.put("start", start);
		map.put("end", end);
		return myBatis.selectList("movieReply.selectAll", map);
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
	
	public int count(int code){
		return myBatis.selectOne("movieReply.count", code);
	}
}






