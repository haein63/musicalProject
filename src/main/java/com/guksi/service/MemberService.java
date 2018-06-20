package com.guksi.service;

import com.guksi.dao.MemberDao;
import com.guksi.dto.MemberDto;

public interface MemberService {
	MemberDto joinAfter(MemberDto dto);
	MemberDto idSelect(String id);
	MemberDto loginCheck(MemberDto dto);

}
