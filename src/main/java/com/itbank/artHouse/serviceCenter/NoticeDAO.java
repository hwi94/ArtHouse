package com.itbank.artHouse.serviceCenter;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


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
	
	/* 공지사항 리스트  + 갯수*/
	public List<NoticeDTO> selectListAll(){
		return mybatis.selectList("notice.selectAll");
	}

	/*공지사항 10개씩끊어오기*/
	public List<NoticeDTO> selectCountList(int x, int y){
		HashMap<String,Object> map = new HashMap<>();
		map.put("start", x);
		map.put("end", y);
		System.out.println(map.get("start"));
		System.out.println(map.get("end"));
		return mybatis.selectList("notice.selectListCount",map);
		
	}

	/*제목클릭으로 게시판조회*/
	public NoticeDTO selectOne(String title) {
		return mybatis.selectOne("notice.select",title);
	}
	
	
	



	
	
}
