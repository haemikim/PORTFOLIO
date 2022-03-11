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
	// 게시판 글쓰기 설계한 것을 구현
	public void write(BoardDTO board) {
		bmapper.write(board);
	}
	// 게시판 수정 페이지 설계한 것을 구현
	public void modify(BoardDTO board) {
		System.out.println("service="+board);
		bmapper.modify(board);
	}
	
	// 게시판 삭제 설계한 것을 구현
	public void remove(BoardDTO board) {
		bmapper.remove(board);
	}

//---- 댓글 -------
	
	// 게시판 글쓰기 설계된것을 구현
	public int Rwrite(BoardDTO board) {
		// insert 성공시 ReplyMapper.xml로 부터1
		// insert 성공시 ReplyMapper.xml로 부터0
		// 값을 리턴받는다
		return bmapper.Rwrite(board);
	}
   // 댓글 목록 리스트 설계한 것을 구현
	public BoardDTO Rlist(int bno){
      return bmapper.Rlist(bno);
   }
	// 댓글 update 설계
    public int Rupdate(BoardDTO board) {
    	return bmapper.Rupdate(board);
    }
	// 댓글 삭제 설계
	public int Rremove(BoardDTO board) {
		return bmapper.Rremove(board);
	}

	
}
