package com.guksi.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.guksi.dto.MemberDto;
@Repository
public class MemberDaoImpl implements MemberDao {
	private final String ns = "com.guksi.dto.MemberDto.";
	@Autowired
	SqlSessionTemplate session;
	
	@Override
	public MemberDto idSelect(String id) {
		System.out.println("dao"+id);
		MemberDto dto = session.selectOne(ns+"idSelect",id);
		System.out.println("da결과: "+dto);
		return dto;
	}

	@Override
	public String loginCheck(String id, String pass) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pass);
		return session.selectOne(ns+"loginCheck",map);
	}

	@Override
	public int join(MemberDto dto) {
		int result =session.insert(ns+"join",dto);
		return result; 
	}

	

}
