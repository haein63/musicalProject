package com.guksi.dao;

import java.util.List;

import com.guksi.dto.BoardDto;

public interface BoardDao {

	List<BoardDto> board_detail();
	BoardDto board_detail2(int board_no);
	List<BoardDto> board_desc();
	int board_delete(int board_no);
	int board_insert(BoardDto board);
	
}
