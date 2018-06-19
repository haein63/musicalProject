package com.guksi.dao;

import com.guksi.dto.MemberDto;

public interface MemberDao {
	MemberDto idSelect(String id);
	String logincheck(String id, String pass);
}
