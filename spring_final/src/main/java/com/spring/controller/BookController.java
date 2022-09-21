package com.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class BookController {

	private static final Logger Logger = LoggerFactory.getLogger(BookController.class);

	//메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGet() {
		Logger.info("메인 페이지 진입");
	
	}
	
	//마이페이지 이동
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void mypagePageGet() {
		Logger.info("마이 페이지 진입");
	
	}
	
	//페이지 이동
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public void servicePageGet() {
		Logger.info("service 페이지 진입");
	
	}
	
	//페이지 이동
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void contactPageGet() {
		Logger.info("contact 페이지 진입");
	
	}
	
	//keyword 페이지 이동
		@RequestMapping(value = "/keyword", method = RequestMethod.GET)
		public void keywordPageGet() {
			Logger.info("keyword 페이지 진입");
		
		}
}
