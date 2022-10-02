package com.spring.service;

import com.spring.model.MemberVO;

public interface MemberService {

	//회원 가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String memberId) throws Exception;
	
	//로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;

}
