package com.guksi.dao;

import java.util.List;

import com.guksi.dto.MemberDto;

public interface MemberDao {
	MemberDto idSelect(String id);
	List <MemberDao> loginCheck(String id, String password);
	int join(MemberDto dto);
}
