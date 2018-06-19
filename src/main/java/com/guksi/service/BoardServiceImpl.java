package com.guksi.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guksi.dao.BoardDao;
import com.guksi.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService {


private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	@Autowired
	BoardDao Bdao;
	
	@Override
	public List<BoardDto> board_detail() {
		List<BoardDto> bdao =  Bdao.board_detail();
		return bdao;
	}

	@Override
	public BoardDto board_detail2(int board_no) {
		BoardDto bdto = Bdao.board_detail2(board_no);
 		return bdto;
	}

	@Override
	public List<BoardDto> board_desc() {
		List<BoardDto> bdao =  Bdao.board_desc();
		return bdao;
	}

	@Override
	public int board_insert(BoardDto board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int board_delete(int board_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
