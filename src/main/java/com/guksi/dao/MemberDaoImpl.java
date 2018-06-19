package com.guksi.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.guksi.dto.MemberDto;
@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSessionTemplate session;
	
	@Override
	public MemberDto idSelect(String id) {
		return session.selectOne("idSelect",id);
	}

	@Override
	public String logincheck(String id, String pass) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pass);
		return session.selectOne("logincheck",map);
	}

}
