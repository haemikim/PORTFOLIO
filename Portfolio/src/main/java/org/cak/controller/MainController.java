package org.cak.controller;


import org.cak.domain.Criteria;
import org.cak.domain.pageDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.cak.service.BoardService;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	
	// 보고 하면 새로 컨트롤러 만들기
	@GetMapping("hallOfFame")
	public void hallOfFames() {}
}
