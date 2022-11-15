package com.spring.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.spring.model.MemberInforVO;
import com.spring.service.MemberInforService;

@Controller
public class MemberInfoController {

	private static final Logger logger = LoggerFactory.getLogger(MemberInfoController.class);

	@Autowired
	private MemberInforService memberinfoservice;
	
	@RequestMapping(value = "/myinfor", method = RequestMethod.GET)
			public void myinforGet() {
		logger.info("myinfor 페이지 진입");
			
			}
	
	@RequestMapping(value="info.do", method=RequestMethod.POST)
	public String infoPOST(MemberInforVO info,HttpServletRequest request) throws Exception{
		
		 HttpSession session = request.getSession();
		
		
		 //수정 실행
		memberinfoservice.updateInfo(info);
		
		MemberInforVO Mlvo = memberinfoservice.usePrint(info);
		session.setAttribute("info", Mlvo);
		
		
		
		logger.info("updateinfo Service 성공");
		
		return "redirect:/mypage";
		
	}
	
	
}
