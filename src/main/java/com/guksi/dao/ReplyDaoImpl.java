package com.guksi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.guksi.dto.ReplyDto;

public class ReplyDaoImpl implements ReplyDao {

	// 1. mapper의 namespace
	String ns = "com.example.dto.MyEmp.";
	// 2. query를 수행할 sqlSessionTemplate
	@Autowired
	SqlSessionTemplate template;

	@Override
	public int insertReply(ReplyDto dto) {
		String statement = ns+"insertReply";
		return template.insert(statement, dto);
	}

}
