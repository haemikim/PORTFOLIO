package org.cak.service;

import java.util.ArrayList;

import org.cak.domain.Criteria;
import org.cak.domain.HOFDTO;
import org.cak.mapper.HOFMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class HOFServiceImpl implements HOFService{
	@Autowired
	private HOFMapper hmapper;

	// 제품 목록 리스트 설계
	public ArrayList<HOFDTO> hallOfFame(Criteria cri){
		return hmapper.hallOfFame(cri);
	}
	// 게시판 페이징에 쓰일 전체 페이지
	public int getTotalCount(Criteria cri) {
		return hmapper.getTotalCount(cri);
	}
	// 제품 등록 설계한 것을 구현
	@Transactional
	public void addHOF(HOFDTO hof) {
		hmapper.addHOF(hof);
	}
}
