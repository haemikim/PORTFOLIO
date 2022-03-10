package org.cak.mapper;

import java.util.ArrayList;

import org.cak.domain.Criteria;
import org.cak.domain.HOFDTO;



public interface HOFMapper {
	// 제품 목록 리스트 설계
	public ArrayList<HOFDTO> hallOfFame(Criteria cri);
	// 게시판 페이징에 쓰일 전체 페이지
	public int getTotalCount(Criteria cri);
	// 제품 등록 설계
	public void addHOF(HOFDTO hof);
	// 게시판 목록리스트에서 제목을 클릭했을떄 조회수 +1
	public void CNTupdate(HOFDTO board);

}
