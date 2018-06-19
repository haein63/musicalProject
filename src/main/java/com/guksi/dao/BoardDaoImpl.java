package com.guksi.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.guksi.dto.BoardDto;
@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	SqlSessionTemplate sql;
	
	@Override
	public List<BoardDto> board_detail() {
		return sql.selectList("board_detail");
	}

	@Override
	public BoardDto board_detail2(int board_no) {
		return sql.selectOne("board_detail2",board_no);
	}

	@Override
	public List<BoardDto> board_desc() {
		
		return sql.selectList("board_desc");
	}

	@Override
	public int board_delete(int board_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int board_insert(BoardDto board) {
		// TODO Auto-generated method stub
		return 0;
	}
}
