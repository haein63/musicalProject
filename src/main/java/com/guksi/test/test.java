package com.guksi.test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.guksi.config.ApplicationConfig;
import com.guksi.config.InfraConfig;
import com.guksi.dao.MusicalDao;
import com.guksi.dto.MusicalDto;
import com.guksi.service.MusicalService;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class test {

	

	private static Logger mylog = LoggerFactory.getLogger(test.class);
	
	@Autowired
	MusicalDao mdao;
	
	@Autowired
	MusicalService service;
	
	@Autowired
	SqlSessionTemplate template;
	
	@Test
	public void testBean() {
		assertThat(template, is(notNullValue()));
		assertThat(mdao, is(notNullValue()));
		/*List<MusicalDto> current = mdao.getCurrentmusicals_desc();
		for (int i = 0; i < current.size(); i++) {
			mylog.trace(current.get(i).toString());
		}
		System.out.println("data 개수: {}"+ current.size());
		
		List<MusicalDto> future = mdao.getFutureMusicals_desc();
		for (int i = 0; i < future.size(); i++) {
			mylog.trace(future.get(i).toString());
		}*/
		
		List<MusicalDto> past = mdao.getPastMusicals_desc();
		for (int i = 0; i < past.size(); i++) {
			mylog.trace(past.get(i).toString());
		}
	}

}
