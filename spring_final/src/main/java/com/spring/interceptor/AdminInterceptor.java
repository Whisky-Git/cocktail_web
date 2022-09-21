package com.spring.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.spring.model.MemberVO;

public class AdminInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse responce, Object handler) throws Exception{
		
		HttpSession session = request.getSession();
		
		MemberVO lvo = (MemberVO)session.getAttribute("member");
		
		if(lvo == null || lvo.getAdminCk() == 0) {
			responce.sendRedirect("/main");
		}
		return true;
		
	}
}
