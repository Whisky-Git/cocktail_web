package com.spring.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ReplyDTO {

	private int replyId;
	
	private int cocktailNo;
	
	private String memberId;

	@JsonFormat(shape= JsonFormat.Shape.STRING, pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date regDate;
	
	private String content;
	
	private double rating;

	public int getReplyId() {
		return replyId;
	}

	public void setReplyId(int replyId) {
		this.replyId = replyId;
	}

	public int getCocktailNo() {
		return cocktailNo;
	}

	public void setCocktailNo(int cocktailNo) {
		this.cocktailNo = cocktailNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "ReplyDTO [replyId=" + replyId + ", cocktailNo=" + cocktailNo + ", memberId=" + memberId + ", regDate="
				+ regDate + ", content=" + content + ", rating=" + rating + "]";
	}

	
    
}
