package com.itbank.artHouse.serviceCenter;

public class NoticeDTO {

	private String title;
	private int titleNo;
	private String uploadDate;
	private String movieTheaters;
	private String contents;
	
	public NoticeDTO() {
		super();
	}
	
	public NoticeDTO(String title, int titleNo, String uploadDate, String movieTheaters, String contents) {
		this.title = title;
		this.titleNo = titleNo;
		this.uploadDate = uploadDate;
		this.movieTheaters = movieTheaters;
		this.contents = contents;
	}
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getTitleNo() {
		return titleNo;
	}
	public void setTitleNo(int titleNo) {
		this.titleNo = titleNo;
	}
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getMovieTheaters() {
		return movieTheaters;
	}
	public void setMovieTheaters(String movieTheaters) {
		this.movieTheaters = movieTheaters;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	
}
