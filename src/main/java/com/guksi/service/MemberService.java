package com.guksi.service;


import javax.servlet.http.HttpSession;

import com.guksi.dto.MemberDto;

public interface MemberService {
	MemberDto joinAfter(MemberDto dto);
	MemberDto idSelect(String id);
	MemberDto loginCheck(String id, String pass);
	void logout(HttpSession session);
}

