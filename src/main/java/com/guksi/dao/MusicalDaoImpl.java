package com.guksi.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.guksi.dto.MusicalDto;

@Repository
public class MusicalDaoImpl implements MusicalDao {
	private final String ns = "com.guksi.dto.MusicalDto.";

	@Autowired
	SqlSessionTemplate session;

	@Override
	public MusicalDto getMusicals(String title) {
		String statement = ns + "getMusicals";
		return session.selectOne(statement, title);
	}

	@Override
	public int currentMusicalCnt() {
		String statement = ns + "currentMusicalCnt";
		return session.selectOne(statement);
	}

	@Override
	public List<MusicalDto> getCurrentmusicals_desc() {
		String statement = ns + "getCurrentmusicals_desc";
		return session.selectList(statement);
	}

	@Override
	public List<MusicalDto> getPastMusicals_desc() {
		String statement = ns + "getPastMusicals_desc";
		return session.selectList(statement);
	}

	@Override
	public List<MusicalDto> getFutureMusicals_desc() {
		String statement = ns + "getFutureMusicals_desc";
		return session.selectList(statement);
	}

}
