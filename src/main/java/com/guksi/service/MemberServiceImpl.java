package com.guksi.service;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guksi.dao.MemberDao;
import com.guksi.dto.MemberDto;


@Service
public class MemberServiceImpl implements MemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
	@Autowired
	MemberDao dao;

	@Override
	public MemberDto idSelect(String id) {
		System.out.println("service++"+id);
		MemberDto member = dao.idSelect(id);
		if ( member== null) {
			return null;
		} else {
			return member;
		}
	}
	

	@Override
	public MemberDto joinAfter(MemberDto dto) {
		int result = dao.join(dto);
		if (result == 1) {
			return dao.idSelect(dto.getId());
		}
		return null;
	}

	@Override
	public MemberDto loginCheck(String id,String pass) {
		Map<String, String> loginInfo = new HashMap<>();
		loginInfo.put("id", id);
		loginInfo.put("pass", pass);
		MemberDto dto = dao.loginCheck(loginInfo);
		return dto;
	}


	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}


	@Override
	public void update(MemberDto dto) {
		dao.update(dto);
		
	}


	@Override
	public void delete(String id) {
		dao.delete(id);
	}


	
}
