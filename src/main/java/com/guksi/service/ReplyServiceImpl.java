package com.guksi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.guksi.dao.ReplyDao;
import com.guksi.dto.ReplyDto;

public class ReplyServiceImpl implements ReplyService{

	@Autowired
	ReplyDao dao;
	
	@Override
	@Transactional
	public int insertReply(ReplyDto dto) {
		int returnValue = dao.insertReply(dto);
		return returnValue;
	}

}
