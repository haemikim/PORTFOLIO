package org.cak.domain;

public class Criteria {
	// 페이지 번호
	private int pageNum;
	// 페이지 갯수
	private int amount;
	// 검색 키워드
	private String keyword;
	// 옵션
	private String order;
	
	Criteria(){
		this(1,9); //한페이지에 9개
	}
	Criteria(int pageNum, int amount){ // 정해진 숫자에 따라 나오게 하기
		this.pageNum=pageNum;
		this.amount=amount;
	}

	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", amount=" + amount + ", keyword=" + keyword + ", order=" + order
				+ "]";
	}
	
	
	
	
}
