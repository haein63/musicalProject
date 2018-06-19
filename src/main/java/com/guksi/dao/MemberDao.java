package com.guksi.dao;

import com.guksi.dto.MemberDto;

public interface MemberDao {
	MemberDto idSelect(String id);
	String loginCheck(String id, String pass);
	int join(MemberDto dto);
}
