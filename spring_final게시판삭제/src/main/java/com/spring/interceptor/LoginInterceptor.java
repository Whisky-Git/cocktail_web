package com.spring.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;


public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse responce, Object handler) throws Exception{
		System.out.println("LoginInterceptor preHandle 작동");
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return true;
	}
}
