package com.spring.service;

import com.spring.model.MemberInforVO;


public interface MemberInforService {
	
	//마이페이지 정보
	public void useInfo(MemberInforVO info) throws Exception;
	
	public void updateInfo(MemberInforVO info) throws Exception;

	//마이페이지 출력
		public MemberInforVO usePrint(MemberInforVO info) throws Exception;
	
}
