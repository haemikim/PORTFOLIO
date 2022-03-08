package org.cak.domain;

public class HOFDTO {
	// 업로드된 파일 이름
	private String fileName;
	// 업로드된 파일 경로
	private String uploadPath;
	// uuid
	private String uuid;
	// 리뷰 번호
	private int rno;
	// 작성메뉴
	private String rtitle;
	// 작성자
	private String rwriter;
	// 리뷰
    private String review;
	// 좋아요 총 갯수
	private int goodCnt;
	// 클릭 수 
	private int cnt;
	// 날짜
	private String regdate;
	

	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public int getrno() {
		return rno;
	}
	public void setrno(int rno) {
		this.rno = rno;
	}
	public String getrtitle() {
		return rtitle;
	}
	public void setrtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getrwriter() {
		return rwriter;
	}
	public void setrwriter(String rwriter) {
		this.rwriter = rwriter;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getGoodCnt() {
		return goodCnt;
	}
	public void setGoodCnt(int goodCnt) {
		this.goodCnt = goodCnt;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "HOFDTO [fileName=" + fileName + ", uploadPath=" + uploadPath + ", uuid=" + uuid + ", rno=" + rno
				+ ", rtitle=" + rtitle + ", rwriter=" + rwriter + ", review=" + review + ", goodCnt=" + goodCnt
				+ ", cnt=" + cnt + ", regdate=" + regdate + "]";
	}

	

	
	
}
