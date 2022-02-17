package org.cak.domain;

public class pageDTO {
	// 첫번째 페이지 넘버
	private int startPage;
	// 마지막 페이지 넘버
	private int endPage;
	// 이전페이지를 
	private boolean prev;
	// 다음페이지를
	private boolean next;
	// 총 데이터 건수
	private int total;
	// 마지막 페이지 넘버를 확인을 위해 pageNum이 필요해서
	private Criteria cri;
	
	
	public pageDTO(Criteria cri,int total) {
		this.cri=cri;
		this.total=total;
		this.endPage=(int)(Math.ceil(cri.getPageNum()/10.0))*10;
		this.startPage=this.endPage-9;
		int realEnd=(int)(Math.ceil((total*1.0)/cri.getAmount()));
		if(realEnd<endPage) {
			this.endPage=realEnd;
		}
		this.prev=this.startPage>1;
		this.next=this.endPage<realEnd;
	}
	
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prve) {
		this.prev = prve;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	@Override
	public String toString() {
		return "pageDTO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", cri=" + cri + "]";
	}
	
	
}
