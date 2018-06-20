package com.guksi.dao;



import com.guksi.dto.MemberDto;

public interface MemberDao {
	MemberDto idSelect(String id);
	MemberDto loginCheck(MemberDto dto);
	int join(MemberDto dto);
}
