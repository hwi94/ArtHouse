package com.itbank.artHouse.users;

/* 회원 테이블 DTO */
public class UserDTO {
	private String id;		//아이디
	private String pw;		//비밀번호
	private String name;	//이름
	private String birth;	//생년월일
	private String tel;		//전화번호
	private String mail;	//메일주소
	private String grade;	//회원등급
	private String gender;	//성별
	
	public UserDTO() {
	}
	
	public UserDTO(String id, String pw, String name, String birth, String tel, String mail, String grade,
			String gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.tel = tel;
		this.mail = mail;
		this.grade = grade;
		this.gender = gender;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
}
