package com.itbank.artHouse.users;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/* 회원 테이블 DAO */
@Repository
public class UserDAO {
	
	@Autowired
	SqlSessionTemplate myBatis;
	
	//회원등록
	public void insert(UserDTO dto) {
		myBatis.insert("users.insert_user", dto);
	}
	
	//아이디 중복체크
	public int idCheck(String id) {
		return myBatis.selectOne("users.idCheck", id);
	}
	
	//아이디 찾기
	public String id_search(UserDTO dto) {
		return myBatis.selectOne("users.id_search", dto);
	}
	
	//회원정보보기
	public UserDTO select(UserDTO dto) {
		return myBatis.selectOne("users.select_user", dto);
	}
	
	//회원정보수정 (비밀번호, 이름, 생년월일, 전화번호, 메일주소)
	public void update(UserDTO dto) {
		myBatis.update("users.update_user", dto);
	}
	
	//회원정보수정2 (이름, 생년월일, 전화번호, 메일주소)
	public void update2(UserDTO dto) {
		myBatis.update("users.update2_user", dto);
	}
	
	//회원탈퇴
	public void delete(UserDTO dto) {
		myBatis.delete("users.delete_user", dto);
	}
	
	//전체 회원 리스트
	public List<UserDTO> selectAll() {
		return myBatis.selectList("users.selectAll_user");
	}
}
