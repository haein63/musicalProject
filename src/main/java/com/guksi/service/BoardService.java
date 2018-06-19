package com.guksi.service;

import java.util.List;

import com.guksi.dto.BoardDto;

public interface BoardService {
	
	List<BoardDto> board_detail();
	BoardDto board_detail2(int board_no);
	List<BoardDto> board_desc();
	int board_insert(BoardDto board);
	int board_delete(int board_no);
	
}
