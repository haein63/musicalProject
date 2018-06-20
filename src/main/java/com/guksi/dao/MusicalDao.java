package com.guksi.dao;

import java.util.List;

import com.guksi.dto.MusicalDto;

public interface MusicalDao {
	List<MusicalDto> getCurrentmusicals_desc();
	
	List<MusicalDto> getPastMusicals_desc();
	
	List<MusicalDto> getFutureMusicals_desc();
	
	MusicalDto getMusicals(String title);
	
	int currentMusicalCnt();
}