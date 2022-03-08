package org.cak.domain;

public class LikeDTO {
	// 좋아요 번호
	private int lno;
	// 좋아요 누른 회원
	private String id;
	// 게시판 번호
	private int rno;
	public int getLno() {
		return lno;
	}
	public void setLno(int lno) {
		this.lno = lno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	@Override
	public String toString() {
		return "LikeList [lno=" + lno + ", id=" + id + ", rno=" + rno + "]";
	}
	
}
