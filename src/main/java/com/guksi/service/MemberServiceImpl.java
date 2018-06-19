package com.guksi.service;

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
		MemberDto member = dao.idSelect(id);  
		return member;
	}

	@Override
	public String logincheck(String id, String pass) {
		
		return dao.logincheck(id, pass);
	}

}
