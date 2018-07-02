package com.guksi.dao;



import static org.hamcrest.CoreMatchers.nullValue;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

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


	@Override
	public int join(MemberDto dto) {
		int result =session.insert("join",dto);
		return result; 
	}


	@Override
	public MemberDto loginCheck(Map<String, String> loginInfo) {
		MemberDto dto = session.selectOne("loginCheck", loginInfo);
		return dto;
	}


	@Override
	public void logout(HttpSession session) {
		
	}


	@Override
	public void update(MemberDto dto) {
		session.update("update",dto );
	}


	@Override
	public void delete(String id) {
		session.delete("delete",id);
	}


}