package org.cak.service;

import java.util.ArrayList;

import org.cak.domain.BoardDTO;
import org.cak.domain.Criteria;

public interface BoardService {
	// 게시판 목록 리스트 설계
	public ArrayList<BoardDTO> list(Criteria cri);
	// 게시판 목록리스트에서 제목을 클릭했을 때 내용이 나오는 상세페이지
	public BoardDTO detail(BoardDTO board);
	// 게시판 페이징에 쓰일 페이징 전체
	public int getTotalCount(Criteria cri);
	// 게시판 글쓰기 설계한 것을 구현
	public void write(BoardDTO board);
	// 게시판 수정 페이지 설계
	public void modify(BoardDTO board);
	// 게시판 삭제 설계
	public void remove(BoardDTO board);
	
}
