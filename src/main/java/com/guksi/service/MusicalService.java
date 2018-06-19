package com.guksi.service;

import java.util.List;

import com.guksi.dto.MusicalDto;

public interface MusicalService {
	//현재 공연 가지고 오기
	List<MusicalDto> getCurrentMusicals();
	//지난 공연 가지고 오기
	List<MusicalDto> getPastMusicals();
	//공연 예정작 가지고 오기
	List<MusicalDto> getFutureMusicals();
	//공연 이름으로 가지고 오기
	MusicalDto getMusicals(String title);
}
