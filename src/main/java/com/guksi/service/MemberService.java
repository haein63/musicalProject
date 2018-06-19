package com.guksi.service;


import com.guksi.dto.MemberDto;

public interface MemberService {
	MemberDto idSelect(String id);
	String logincheck(String id , String pass);
}
