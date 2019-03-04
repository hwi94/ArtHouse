package com.itbank.artHouse.serviceCenter;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnADAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	
	/* 1:1문의 등록 사용자 > 관리자 */
	public void QnAUpload(QnADTO qnaDto)throws Exception{
		mybatis.insert("qna.insert",qnaDto);
	}
}
