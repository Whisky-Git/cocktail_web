package com.spring.model;

public class forum_imageVO {
	/* 경로 */
	private String forum_uploadPath;
	
	/* uuid */
	private String forum_uuid;
	
	/* 파일 이름 */
	private String forum_fileName;
	
	/* 상품 id */
	private int forum_no;

	public String getForum_uploadPath() {
		return forum_uploadPath;
	}

	public String getForum_uuid() {
		return forum_uuid;
	}

	public String getForum_fileName() {
		return forum_fileName;
	}

	public int getForum_no() {
		return forum_no;
	}

	public void setForum_uploadPath(String forum_uploadPath) {
		this.forum_uploadPath = forum_uploadPath;
	}

	public void setForum_uuid(String forum_uuid) {
		this.forum_uuid = forum_uuid;
	}

	public void setForum_fileName(String forum_fileName) {
		this.forum_fileName = forum_fileName;
	}

	public void setForum_no(int forum_no) {
		this.forum_no = forum_no;
	}

	@Override
	public String toString() {
		return "forum_imageVO [forum_uploadPath=" + forum_uploadPath + ", forum_uuid=" + forum_uuid
				+ ", forum_fileName=" + forum_fileName + ", forum_no=" + forum_no + "]";
	}

	
	
}
