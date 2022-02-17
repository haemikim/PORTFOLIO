package org.cak.domain;

public class BoardDTO {
	// 게시물 번호
	private int bno;
	// 카테고리
	private String category;
	// 제목
	private String title;
	// 내용
	private String content;
	// 작성자
	private String writer;
	// 날짜
	private String regdate;
	// 클릭 수 
	private int cnt;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", category=" + category + ", title=" + title + ", content=" + content
				+ ", writer=" + writer + ", regdate=" + regdate + ", cnt=" + cnt + "]";
	}
	
}