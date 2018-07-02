package com.guksi.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guksi.dto.MusicalDto;
import com.guksi.dao.MusicalDao;

@Service
public class MusicalServiceImpl implements MusicalService{

	@Autowired
	MusicalDao mDao;

	@Override
	public List<MusicalDto> getCurrentmusicals_desc() {
		List<MusicalDto> result = mDao.getCurrentmusicals_desc();
		return result;
	}

	@Override
	public List<MusicalDto> getPastMusicals_desc() {
		List<MusicalDto> result = mDao.getPastMusicals_desc();
		return result;
	}

	@Override
	public List<MusicalDto> getFutureMusicals_desc() {
		List<MusicalDto> result = mDao.getFutureMusicals_desc();
		return result;
	}

	@Override
	public MusicalDto getMusicals(String title) {
		MusicalDto result = mDao.getMusicals(title);
		return result;
		
	}

	
}
