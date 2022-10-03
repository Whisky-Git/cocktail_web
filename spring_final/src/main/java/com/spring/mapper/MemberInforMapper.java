package com.spring.mapper;

import com.spring.model.MemberInforVO;


public interface MemberInforMapper {

	//마이페이지 정보
	public void useInfo(MemberInforVO info);
	//마이페이지 수정
	public void updateInfo(MemberInforVO info);
	//마이페이지 출력
	public MemberInforVO usePrint(MemberInforVO info);
}
