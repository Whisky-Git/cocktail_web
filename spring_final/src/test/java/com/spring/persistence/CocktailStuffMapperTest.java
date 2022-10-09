package com.spring.persistence;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.service.CocktailStuffService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class CocktailStuffMapperTest {
	
	private static final Logger log = LoggerFactory.getLogger(CocktailStuffService.class);

	@Autowired
	private CocktailStuffService stuffs;
	
 
	
	@Test
	public void testGetStuffList() {
		
		log.info("집입");
		stuffs.getTypeList().forEach(board -> log.info("" + board));
		
	}
	
	

}
