package com.guksi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.guksi.dto.BoardDto;
import com.guksi.service.BoardService;

@Controller
public class BoardController {
	

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	@Autowired
	BoardService board;
	
	@GetMapping(value="board")
	public String board(Model model) {
		List<BoardDto> bdto = board.board_desc();
		model.addAttribute("board", bdto);
		return "board";
	}
	
	@GetMapping(value="/Main")
	public String Main(Model model) {
		List<BoardDto> bdto = board.board_detail();
		model.addAttribute("board", bdto);
		return "Main";
	}
	@GetMapping(value="/board_detail")
	public String board_detail(@RequestParam int board_no,Model model) {
		BoardDto bdto = board.board_detail2(board_no);
		model.addAttribute("board",bdto);
		return "board_detail";
	}
	
	
	
	
}
