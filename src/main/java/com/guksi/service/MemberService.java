package com.guksi.service;


import java.util.List;

import com.guksi.dao.MemberDao;
import com.guksi.dto.MemberDto;

public interface MemberService {
	MemberDto joinAfter(MemberDto dto);
	MemberDto idSelect(String id);
	List<MemberDao> loginCheck(String id, String password);
}
