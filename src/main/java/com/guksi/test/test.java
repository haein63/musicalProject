package com.guksi.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.guksi.config.InfraConfig;
import com.guksi.dao.MusicalDao;
import com.guksi.dto.MusicalDto;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = { InfraConfig.class })
public class test {

	

	private static Logger mylog = LoggerFactory.getLogger(test.class);
	
	@Autowired
	MusicalDao mdao;
	
	@Test
	public void test() {
		List<MusicalDto> list = mdao.musical_desc();
		for (int i = 0; i < list.size(); i++) {
			mylog.trace(list.get(i).toString());
		}
		
	}

}
