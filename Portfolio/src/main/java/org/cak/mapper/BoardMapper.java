package org.cak.mapper;

import java.util.ArrayList;

import org.cak.domain.BoardDTO;
import org.cak.domain.Criteria;

public interface BoardMapper {
	// 게시판 글쓰기 설계
	public void write(BoardDTO board);
	// 게시판 목록 리스트 설계
	public ArrayList<BoardDTO> list(Criteria cri);
	// 게시판 페이징에 쓰일 페이징 전체
	public int getTotalCount(Criteria cri);
	// 게시판 목록리스트에서 제목을 클릭했을떄 조회수 +1
	public void cntupdate(BoardDTO board);
	// 게시판 상세 페이지 설계
	public BoardDTO detail(BoardDTO board);
	// 게시판 수정 페이지 설계
	public void modify(BoardDTO board);
	// 게시판 삭제 설계
	public void remove(BoardDTO board);
	

}
