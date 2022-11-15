package com.spring.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.mapper.MemberInforMapper;
import com.spring.model.MemberInforVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class MemberInforMapperTest {
		
	@Autowired
	private MemberInforMapper informapper;
	/*
	@Test
	public void useInfo() {
		
		String id = "test";
		String mdti = "isfp";		
		String date = "2011-01-05";
		int age = 21;
		
		MemberInforVO info = new MemberInforVO();
		info.setMemberId(id);
		info.setMemberMbti(mdti);
		info.setMemberDate(date);
		info.setMemberAge(age);
		
		informapper.useInfo(info);
		
		
	}*/
	
}
