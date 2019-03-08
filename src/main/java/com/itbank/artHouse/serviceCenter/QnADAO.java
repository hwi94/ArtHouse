package com.itbank.artHouse.serviceCenter;

import java.util.HashMap;
import java.util.List;

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
	
	
	/* 1:1문의 - 내역조회(관리자로그인시) */
	public List selectQnAList(){
		return mybatis.selectList("qna.selectAll");
	}
	
	public List selectCountList(int x, int y){
		HashMap<String,Object> map = new HashMap<>();
		map.put("start", x);
		map.put("end", y);
		System.out.println(map.get("start"));
		System.out.println(map.get("end"));
		return mybatis.selectList("qna.selectCountList",map);
	}
	
	/*1:1문의 - 내역조회(제목클릭시, 제목에해당하는 내용을전부보여준다.)*/
	public QnADTO selectOne(String title){
		System.out.println("이곳은.. QNADAO의 selectOne메소드안이다..");
		return mybatis.selectOne("qna.selectOne",title);
	}
	
	/* 1:1문의 - 답변완료후 내역삭제 */
	public void delete(String title){
		mybatis.delete("qna.delete",title);
	}
	
	
	
}
