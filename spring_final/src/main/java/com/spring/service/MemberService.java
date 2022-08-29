package com.spring.service;

import com.spring.model.MemberVO;

public interface MemberService {

	//sign in
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String memberId) throws Exception;

}
