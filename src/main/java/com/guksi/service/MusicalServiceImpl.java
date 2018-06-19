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
	public List<MusicalDto> getCurrentMusicals() {
		List<MusicalDto> result = mDao.getCurrentMusicals();
		return result;
	}

	@Override
	public List<MusicalDto> getPastMusicals() {
		List<MusicalDto> result = mDao.getPastMusicals();
		return result;
	}

	@Override
	public List<MusicalDto> getFutureMusicals() {
		List<MusicalDto> result = mDao.getFutureMusicals();
		return result;
	}

	@Override
	public MusicalDto getMusicals(String title) {
		MusicalDto result = mDao.getMusicals(title);
		return result;
	}

}
