package com.itbank.artHouse;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itbank.artHouse.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSessionTemplate myBatis;
	
	
	/* 수정 */
	public void update(MemberDTO dto) throws Exception {
		myBatis.update("member.update", dto);
	}
	/* 삭제 */
	public void delete(MemberDTO dto) throws Exception {
		myBatis.delete("member.delete", dto);
	}
	/* 생성 */
	public void insert(MemberDTO dto) throws Exception {
		myBatis.insert("member.insert", dto);
	}
	/* 전체목록 */
	public List<MemberDTO> selectAll() throws Exception {		//select 와 selectAll 판단해서 잘사용하기.
		return myBatis.selectList("member.selectAll");
	}
	/* 지정목록 */
	public MemberDTO select(MemberDTO dto) throws Exception {	//검색결과는 하나여야한다.selectOne
		return myBatis.selectOne("member.select", dto);
	}
	
}
