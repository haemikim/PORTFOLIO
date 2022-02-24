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
	// 카테고리 정렬(notice맨위에 정렬)
	private int pin;
	// 답글
	private String reply;
	// 답글 작성자
	private String replyer;
	
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
	
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getReplyer() {
		return replyer;
	}
	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}
	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", category=" + category + ", title=" + title + ", content=" + content
				+ ", writer=" + writer + ", regdate=" + regdate + ", cnt=" + cnt + ", pin=" + pin + ", reply=" + reply
				+ ", replyer=" + replyer + "]";
	}
	
}