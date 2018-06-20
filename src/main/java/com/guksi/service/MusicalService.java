package com.guksi.service;

import java.util.List;

import com.guksi.dto.MusicalDto;

public interface MusicalService {
	//현재공연 시작날짜로 가지고 오기
	List<MusicalDto> getCurrentmusicals_desc();
	//지난공연 시작날짜로 가지고 오기
	List<MusicalDto> getPastMusicals_desc();
	//공연예정 시작날짜로 가지고 오기
	List<MusicalDto> getFutureMusicals_desc();
	//공연이름으로 가지고 오기
	MusicalDto getMusicals(String title);
}
