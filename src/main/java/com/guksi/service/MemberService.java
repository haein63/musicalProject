package com.guksi.service;


import com.guksi.dto.MemberDto;

public interface MemberService {
	MemberDto joinAfter(MemberDto dto);
	MemberDto idSelect(String id);
	String loginCheck(String id , String pass);
}
