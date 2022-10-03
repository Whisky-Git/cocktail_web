package com.spring.model;

public class MemberVO {
	
	private String memberId;	//id
	private String memberPw;	//password
	private String memberName;	//name
	private String memberMail;	//mail
	private String memberAddr1;	//회원 우편번호
	private String memberAddr2; //회원 주소
	private String memberAddr3;	//회원 상세주소
	private int adminCk;		//관리자 구분(0: 일반 사용자, 1: 관리자)
	private String regDate;		//등록일자
	private int money;			//회원 돈
	private int point;			//회원 포인트
	
	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public String getMemberPw() {
		return memberPw;
	}
	
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	
	public String getMemberName() {
		return memberName;
	}
	
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public String getMemberMail() {
		return memberMail;
	}
	
	public void setMemberMail(String memberMail) {
		this.memberMail = memberMail;
	}
	
	public String getMemberAddr1() {
		return memberAddr1;
	}
	
	public void setMemberAddr1(String memberAddr1) {
		this.memberAddr1 = memberAddr1;
	}
	
	public String getMemberAddr2() {
		return memberAddr2;
	}
	
	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}
	
	public String getMemberAddr3() {
		return memberAddr3;
	}
	
	public void setMemberAddr3(String memberAddr3) {
		this.memberAddr3 = memberAddr3;
	}
	
	public int getAdminCk() {
		return adminCk;
	}
	
	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}
	
	public String getRegDate() {
		return regDate;
	}
	
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	public int getMoney() {
		return money;
	}
	
	public void setMoney(int money) {
		this.money = money;
	}
	
	public int getPoint() {
		return point;
	}
	
	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
				+ ", memberMail=" + memberMail + ", memberAddr1=" + memberAddr1 + ", memberAddr2=" + memberAddr2
				+ ", memberAddr3=" + memberAddr3 + ", adminCk=" + adminCk + ", regDate=" + regDate + ", money="
				+ money + ", point=" + point + "]";
	}
	
}
