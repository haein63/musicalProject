package com.guksi.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
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
		System.out.println("dao"+id);
		MemberDto dto = session.selectOne("idSelect",id);
		System.out.println("da결과: "+dto);
		return dto;
	}

	/*@Override
	public String loginCheck(String id, String pass) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pass);
		return session.selectOne("loginCheck",map);
	}*/

	@Override
	public int join(MemberDto dto) {
		int result =session.insert("join",dto);
		return result; 
	}

	@Override
	public List <MemberDao> loginCheck(String id, String password) {
		return null;
		
	}

	

}
