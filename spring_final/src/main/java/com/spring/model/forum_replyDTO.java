package com.spring.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class forum_replyDTO {

	private int forum_replyId;
	
	private int forum_no;
	
	private String forum_mk;

	@JsonFormat(shape= JsonFormat.Shape.STRING, pattern="yyyy-MM-dd", timezone="Asia/Seoul")
	private Date forum_regDate;
	
	private String forum_content;
	
	private double forum_rating;

	public int getForum_replyId() {
		return forum_replyId;
	}

	public int getForum_no() {
		return forum_no;
	}

	public String getForum_mk() {
		return forum_mk;
	}

	public Date getForum_regDate() {
		return forum_regDate;
	}

	public String getForum_content() {
		return forum_content;
	}

	public double getForum_rating() {
		return forum_rating;
	}

	public void setForum_replyId(int forum_replyId) {
		this.forum_replyId = forum_replyId;
	}

	public void setForum_no(int forum_no) {
		this.forum_no = forum_no;
	}

	public void setForum_mk(String forum_mk) {
		this.forum_mk = forum_mk;
	}

	public void setForum_regDate(Date forum_regDate) {
		this.forum_regDate = forum_regDate;
	}

	public void setForum_content(String forum_content) {
		this.forum_content = forum_content;
	}

	public void setForum_rating(double forum_rating) {
		this.forum_rating = forum_rating;
	}

	@Override
	public String toString() {
		return "forum_replyDTO [forum_replyId=" + forum_replyId + ", forum_no=" + forum_no + ", forum_mk=" + forum_mk
				+ ", forum_regDate=" + forum_regDate + ", forum_content=" + forum_content + ", forum_rating="
				+ forum_rating + "]";
	}
	
	
	
	


	
}
