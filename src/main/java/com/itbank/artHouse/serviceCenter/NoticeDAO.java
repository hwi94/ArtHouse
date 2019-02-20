package com.itbank.artHouse.serviceCenter;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	
	/* 생성 */
	public void insert(NoticeDTO dto)throws Exception{
		mybatis.insert("notice.insert",dto);
	}
	
	
}
