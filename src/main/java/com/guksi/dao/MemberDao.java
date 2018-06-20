package com.guksi.dao;



import java.util.Map;

import com.guksi.dto.MemberDto;

public interface MemberDao {
	MemberDto idSelect(String id);
	MemberDto loginCheck(Map<String, String> loginInfo);
	int join(MemberDto dto);
}
