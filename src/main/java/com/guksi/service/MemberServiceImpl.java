package com.guksi.service;

import java.util.List;

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

	/*@Override
	public String loginCheck(String id, String pass) {

		return dao.loginCheck(id, pass);
	}*/
	
	

	@Override
	public MemberDto joinAfter(MemberDto dto) {
		int result = dao.join(dto);
		if (result == 1) {
			return dao.idSelect(dto.getId());
		}
		return null;
	}

	@Override
	public List<MemberDao> loginCheck(String id, String password) {
	
		return dao.loginCheck(id, password);
	}
}
