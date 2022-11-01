package com.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//관리자와 관련된 페이지 이동, 기능 수행 메소드 관리
@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger Logger = LoggerFactory.getLogger(AdminController.class);
	
	//관리자 메인 페이지 이동
	@RequestMapping(value="main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception{
		
		System.out.println("관리자 페이지 이동");
		
		
	}
		
	
	 
}
