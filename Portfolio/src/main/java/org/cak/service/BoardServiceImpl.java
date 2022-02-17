package org.cak.service;

import java.util.ArrayList;

import org.cak.domain.BoardDTO;
import org.cak.domain.Criteria;
import org.cak.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardMapper bmapper;
	
	// 게시판 목록리스트 설계된것을 구현
	public ArrayList<BoardDTO> list(Criteria cri) {
		return bmapper.list(cri);
	}

	// 게시판 페이징에 쓰일 데이터 건수
	public int getTotalCount(Criteria cri) {
		return bmapper.getTotalCount(cri);
	}
	// 게시판 상세 페이지 설계
	public BoardDTO detail(BoardDTO board) {
		bmapper.cntupdate(board);
		return bmapper.detail(board);
	}
}
