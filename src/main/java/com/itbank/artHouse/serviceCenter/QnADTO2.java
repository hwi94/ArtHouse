package com.itbank.artHouse.serviceCenter;

public class QnADTO2 {
	
	private String informationConsent;		//동의여부	ex) agree type 하나.
	private String name;					//이름
	private String email;					//이메일
	private String mobile1;					//연락처
	private String mobile2;					//연락처
	private String mobile3;					//연락처
	private String areaSelectBox;			//지역 or 전체
	private String selectMovieTheater;		//체인
	private String questionType;			//문의유형
	private String contents;				//내용
	private String title;					//제목
	
	
	
	public QnADTO2() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	
	
	public QnADTO2(String informationConsent, String name, String email, String mobile1, String mobile2, String mobile3,
			String areaSelectBox, String selectMovieTheater, String questionType, String contents, String title) {
		this.informationConsent = informationConsent;
		this.name = name;
		this.email = email;
		this.mobile1 = mobile1;
		this.mobile2 = mobile2;
		this.mobile3 = mobile3;
		this.areaSelectBox = areaSelectBox;
		this.selectMovieTheater = selectMovieTheater;
		this.questionType = questionType;
		this.contents = contents;
		this.title = title;
	}
	public String getInformationConsent() {
		return informationConsent;
	}
	public void setInformationConsent(String informationConsent) {
		this.informationConsent = informationConsent;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile1() {
		return mobile1;
	}
	public void setMobile1(String mobile1) {
		this.mobile1 = mobile1;
	}
	public String getMobile2() {
		return mobile2;
	}
	public void setMobile2(String mobile2) {
		this.mobile2 = mobile2;
	}
	public String getMobile3() {
		return mobile3;
	}
	public void setMobile3(String mobile3) {
		this.mobile3 = mobile3;
	}
	public String getAreaSelectBox() {
		return areaSelectBox;
	}
	public void setAreaSelectBox(String areaSelectBox) {
		this.areaSelectBox = areaSelectBox;
	}
	public String getSelectMovieTheater() {
		return selectMovieTheater;
	}
	public void setSelectMovieTheater(String selectMovieTheater) {
		this.selectMovieTheater = selectMovieTheater;
	}
	public String getQuestionType() {
		return questionType;
	}
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	
	
	
}
