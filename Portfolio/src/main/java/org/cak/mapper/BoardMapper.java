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
	
	//--- 댓글용  ----
	// 댓글쓰기 설계
	// 값을 리턴받는다
	public int Rwrite(BoardDTO board);
	// 댓글 수정을 하기위해 댓글내용가져오기
	public BoardDTO Rdetail(int bno);
    // 댓글 목록 리스트 설계
    public BoardDTO Rlist(int bno);
    // 댓글 update 설계
    public int Rupdate(BoardDTO board);
	// 댓글 삭제 설계
	public int Rremove(BoardDTO board);
	

}
