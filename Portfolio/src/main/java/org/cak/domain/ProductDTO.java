package org.cak.domain;

public class ProductDTO {
	// 업로드된 파일 이름
	private String fileName;
	// 업로드된 파일 경로
	private String uploadPath;
	// uuid
	private String uuid;
	// 제품 이름
	private String ptitle;
	// 제품 가격
	private int price;
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
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "ProductDTO [fileName=" + fileName + ", uploadPath=" + uploadPath + ", uuid=" + uuid + ", ptitle="
				+ ptitle + ", price=" + price + ", regdate=" + regdate + "]";
	}
	
	
	
	
	
	
	
	
}