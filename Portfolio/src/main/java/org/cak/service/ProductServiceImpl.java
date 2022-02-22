package org.cak.service;

import java.util.ArrayList;

import org.cak.domain.Criteria;
import org.cak.domain.ProductDTO;
import org.cak.mapper.ProductMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper pmapper;

	// 제품 목록 리스트 설계
	public ArrayList<ProductDTO> productList(Criteria cri){
		return pmapper.productList(cri);
	}
	// 게시판 페이징에 쓰일 전체 페이지
	public int getTotalCount(Criteria cri) {
		return pmapper.getTotalCount(cri);
	}
	// 제품 등록 설계한 것을 구현
	@Transactional
	public void addProduct(ProductDTO product) {
		pmapper.addProduct(product);
	}
}
