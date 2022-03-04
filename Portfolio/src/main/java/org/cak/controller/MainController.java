package org.cak.controller;


import org.cak.domain.BoardDTO;
import org.cak.domain.Criteria;
import org.cak.domain.pageDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.cak.service.BoardService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {
	@Autowired
	private BoardService service;
	
	@GetMapping("home")
	public void home() {}
	
	// <게시판 목록 페이지>로 이동
	@GetMapping("list")
	public void list(Criteria cri,Model model) {
		model.addAttribute("list", service.list(cri));
		int total=service.getTotalCount(cri);
		model.addAttribute("pageMaker", new pageDTO(cri,total));
	}
	
	// <게시판 상세 페이지>로 이동
	@GetMapping("detail")
	public void detail(BoardDTO board, Model model) {
		model.addAttribute("detail", service.detail(board));
	}
	
	// <게시판 글쓰기 페이지>로 이동
	@GetMapping("write")
	public void write() {
	}
	
	// <게시판 글쓰기 페이지>에서 글쓰기 버튼을 클릭하면
	@PostMapping("write")
	public String writePost(BoardDTO board) {
		service.write(board);
		
		return "redirect:/list";
	}
	
	// <게시판 수정 페이지>로 이동
	@GetMapping("modify")
	public void modify(BoardDTO board, Model model) {
		model.addAttribute("detail", service.detail(board));
	}
	

	// <게시판 수정 페이지>에서 수정 버튼을 클릭하면
	@PostMapping("modify")
	public String modifyPost(BoardDTO board, RedirectAttributes rttr) {
		service.modify(board);
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/detail";
	}
	
	// <게시판 상세 페이지>에서 삭제 버튼을 클릭하면
	@GetMapping("remove")
	public String remove(BoardDTO board) {
		service.remove(board);
		
		return "redirect:/list";
	}
	
	
	// 보고 하면 새로 컨트롤러 만들기
	@GetMapping("hallOfFame")
	public void hallOfFames() {}
	
	
	@PutMapping(value="new",consumes="application/json", produces={MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody BoardDTO board){ // ResponseEntity가 json타입을 사용하여 호출한 곳으로 다시보내줄때 사용!!
		System.out.println("BoardDTO111="+board);
		int result=service.Rwrite(board);
		System.out.println("result="+result);
		
		return result==1?new ResponseEntity<>("success",HttpStatus.OK) //새로운 생성자  <배열> 성공, 코드상태.ok
						:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		//									  insert가 비정상적으로 처리가 되었을떄
	}// js에 getRList의JSON주소를 가져온다
   @GetMapping(value="Rlist/{bno}", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
   public ResponseEntity<BoardDTO> getRList(@PathVariable int bno) {
	   System.out.println("Rlist");
      return new ResponseEntity<>(service.Rlist(bno),HttpStatus.OK);
   }

   @PutMapping(value="Rupdate", produces= {MediaType.TEXT_PLAIN_VALUE})
   public ResponseEntity<String> Rupdate(@RequestBody BoardDTO board) {
	   System.out.println("BoardDTO="+board);
		return service.Rupdate(board)==1?new ResponseEntity<>("success",HttpStatus.OK)			 // insert가 정상적으로 처리가 되었을떄
				:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); // update가 비정상적으로 처리가 되었을떄
   }
	@PutMapping(value="Rremove",consumes="application/json", produces={MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> Rremove(@RequestBody BoardDTO board){
		System.out.println("BoardDTO12345="+board);	
		return service.Rremove(board)==1?new ResponseEntity<>("success",HttpStatus.OK)			 // insert가 정상적으로 처리가 되었을떄
										:new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR); // update가 비정상적으로 처리가 되었을떄
	
	}	
	
}
