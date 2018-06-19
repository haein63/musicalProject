package com.guksi.dao;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.guksi.dto.MusicalDto;

@Repository
public class MusicalImpl implements MusicalDao{
	private final String ns = "com.homepage.dto.Musical.";
	
	@Autowired
	SqlSessionTemplate session;

	@Override
	public List<MusicalDto> getCurrentMusicals() {
		String statement = ns+"getCurrentMusicals";
		return session.selectList(statement);
	}

	@Override
	public List<MusicalDto> getPastMusicals() {
		String statement = ns+"getPastMusicals";
		return session.selectList(statement);
	}

	@Override
	public List<MusicalDto> getFutureMusicals() {
		String statement = ns+"getFutureMusicals";
		return session.selectList(statement);
	}

	@Override
	public MusicalDto getMusicals(String title) {
		String statement = ns+"getMusicals";
		return session.selectOne(statement,title);
	}

	@Override
	public int currentMusicalCnt() {
		String statement = ns+"currentMusicalCnt";
		return session.selectOne(statement);
	}

	
	}
	

	


