package com.spring.model;

public class MemberInforVO {
	
	private String memberId;	//id
	private String memberMbti;	//mbti
	private String memberDate;	//생년월일
	private String memberAge;	//나이
	
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberMbti() {
		return memberMbti;
	}
	public void setMemberMbti(String memberMbti) {
		this.memberMbti = memberMbti;
	}
	public String getMemberDate() {
		return memberDate;
	}
	public void setMemberDate(String memberDate) {
		this.memberDate = memberDate;
	}
	public String getMemberAge() {
		return memberAge;
	}
	public void setMemberAge(String memberAge) {
		this.memberAge = memberAge;
	}
	@Override
	public String toString() {
		return "MemberInforVO [memberId=" + memberId + ", memberMbti=" + memberMbti + ", memberDate=" + memberDate
				+ ", memberAge=" + memberAge + "]";
	}




}
