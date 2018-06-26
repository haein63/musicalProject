package com.guksi.dao;



import java.util.Map;

import javax.servlet.http.HttpSession;

import com.guksi.dto.MemberDto;

public interface MemberDao {
	MemberDto idSelect(String id);
	MemberDto loginCheck(Map<String, String> loginInfo);
	int join(MemberDto dto);
	void logout(HttpSession session);
}
