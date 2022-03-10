package org.cak.service;

import java.util.ArrayList;

import org.cak.domain.Criteria;
import org.cak.domain.HOFDTO;



public interface HOFService {
	// 제품 목록 리스트 설계
	public ArrayList<HOFDTO> hallOfFame(Criteria cri);
	// 게시판 페이징에 쓰일 전체 페이지
	public int getTotalCount(Criteria cri);
	// 제품 등록 설계
	public void addHOF(HOFDTO hof);
	
}
