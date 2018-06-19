package com.guksi.dao;

import java.util.List;

import com.guksi.dto.MusicalDto;

public interface MusicalDao {
	List<MusicalDto> getCurrentMusicals();

	List<MusicalDto> getPastMusicals();
	
	List<MusicalDto> getFutureMusicals();
	
	MusicalDto getMusicals(String title);
	
	int currentMusicalCnt();
}