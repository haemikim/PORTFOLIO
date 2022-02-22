package org.cak.mapper;

import java.util.ArrayList;

import org.cak.domain.Criteria;
import org.cak.domain.ProductDTO;

public interface ProductMapper {
	// 제품 목록 리스트 설계
	public ArrayList<ProductDTO> productList(Criteria cri);
	// 게시판 페이징에 쓰일 전체 페이지
	public int getTotalCount(Criteria cri);
	// 제품 등록 설계
	public void addProduct(ProductDTO product);
}
