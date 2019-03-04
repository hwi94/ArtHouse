package com.itbank.artHouse.serviceCenter;

public class QnADTO {
	
	private String informationConsent;		//동의여부	ex) agree type 하나.
	private String name;					//이름
	private String tel;						//연락처
	private String email;					//이메일
	private String areaSelectBox;					//지역 or 전체
	private String selectMovieTheater;					//체인
	private String questionType;			//문의유형
	private String contents;				//내용
	private String attachments; 			//첨부파일
	private String title;					//제목
	
	public QnADTO() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	
	public QnADTO(String informationConsent, String name, String tel, String email, String areaSelectBox,
			String selectMovieTheater, String questionType, String contents, String attachments, String title) {
		this.informationConsent = informationConsent;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.areaSelectBox = areaSelectBox;
		this.selectMovieTheater = selectMovieTheater;
		this.questionType = questionType;
		this.contents = contents;
		this.attachments = attachments;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getAttachments() {
		return attachments;
	}
	public void setAttachments(String attachments) {
		this.attachments = attachments;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	
	
	
	
	
	
	
	
	
}
