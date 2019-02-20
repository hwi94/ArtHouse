package com.itbank.artHouse.book;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itbank.artHouse.book.ResvDTO;

@Repository("rDao")
public class ResvDAO {
	
	@Autowired
	SqlSessionTemplate myBatis;
	
	public List<ResvDTO> selectAll() throws Exception {
		return myBatis.selectList("resv.selectAll");
	}

	public List<ResvDTO> select(ResvDTO resvDTO) throws Exception {
		return myBatis.selectList("resv.select", resvDTO);
	}

	public List<ResvDTO> selectName(ResvDTO resvDTO) throws Exception {
		return myBatis.selectList("resv.selectName",resvDTO);
	}

	public List<ResvDTO> selectMovie() throws Exception {
		return myBatis.selectList("resv.selectMovie");
	}
	
	public List<ResvDTO2> selectTheater(ResvDTO2 resvDTO2) throws Exception {
		return myBatis.selectList("resv.selectTheater",resvDTO2);
	}
	
	public List<ResvDTO> selectPlaytime(ResvDTO resvDTO) throws Exception {
		return myBatis.selectList("resv.selectPlaytime",resvDTO);
	}
	
	public void insert(ResvDTO resvDTO) throws Exception {
		myBatis.insert("resv.insert",resvDTO);
	}
	public void update(ResvDTO resvDTO) throws Exception {
		myBatis.insert("resv.update",resvDTO);
	}
	/*
	 * public void login(String input1, String input2) throws Exception { // 1.
	 * 드라이버(connector) 셋팅 Class.forName("com.mysql.jdbc.Driver");
	 * 
	 * // 2. DB연결(->my서버설정+db명+id+pw) String url =
	 * "jdbc:mysql://localhost:3306/computer"; String user = "root"; String
	 * password = "1234";
	 * 
	 * Connection con = DriverManager.getConnection(url, user, password);
	 * 
	 * // id와 pw 맞는지 체크-방법1 String sql =
	 * "select * from member where id = ? and pw = ?"; PreparedStatement ps =
	 * con.prepareStatement(sql); ps.setString(1, input1); ps.setString(2,
	 * input2);
	 * 
	 * ResultSet rs = ps.executeQuery();
	 * 
	 * if(rs.next()) { System.out.println("아이디: " + rs.getString(1));
	 * System.out.println("패스워드: " + rs.getString(2));
	 * System.out.println("로그인 성공."); }else { System.out.println("로그인 실패."); }
	 * System.out.println();
	 * 
	 * // id와 pw 맞는지 체크-방법2 String sql2 =
	 * "select count(*) from member where id = ? and pw = ?"; PreparedStatement
	 * ps2 = con.prepareStatement(sql2); ps2.setString(1, input1);
	 * ps2.setString(2, input2);
	 * 
	 * ResultSet rs2 = ps2.executeQuery(); rs2.next(); if(rs2.getInt(1) == 1) {
	 * System.out.println("로그인 성공."); }else { System.out.println("로그인 실패."); }
	 * 
	 * }
	 */
}
