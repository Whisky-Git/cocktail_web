package com.spring.model;

import java.util.Date;
import java.util.List;

public class forumVO {
	
	
/*�Խù� ��ȣ*/
private int forum_no;

/*�Խù� ����*/
private String forum_title;

/*�Խù� ����*/
private Date forum_date;

/*�Խù� ������*/
private String forum_content;


/*�Խù� �湮�ڼ�*/	
private int forum_views;

/*�Խù� ��õ��*/
private int forum_recommend;





/*�Խù� �ۼ���*/
private String forum_memberID;

private forum_imageVO imageVO;

/* 이미지 정보 */
private List<forum_imageVO> imageList;





public forum_imageVO getImageVO() {
	return imageVO;
}






public void setImageVO(forum_imageVO imageVO) {
	this.imageVO = imageVO;
}






public List<forum_imageVO> getImageList() {
	return imageList;
}






public void setImageList(List<forum_imageVO> imageList) {
	this.imageList = imageList;
}




public String getForum_memberID() {
	return forum_memberID;
}




public void setForum_memberID(String forum_memberID) {
	this.forum_memberID = forum_memberID;
}




public int getForum_no() {
	return forum_no;
}




public void setForum_no(int forum_no) {
	this.forum_no = forum_no;
}

public String getForum_title() {
	return forum_title;
}

public void setForum_title(String forum_title) {
	this.forum_title = forum_title;
}



public Date getForum_date() {
	return forum_date;
}




public void setForum_date(Date forum_date) {
	this.forum_date = forum_date;
}




public String getForum_content() {
	return forum_content;
}

public void setForum_content(String forum_content) {
	this.forum_content = forum_content;
}

public int getForum_views() {
	return forum_views;
}

public void setForum_views(int forum_views) {
	this.forum_views = forum_views;
}

public int getForum_recommend() {
	return forum_recommend;
}

public void setForum_recommend(int forum_recommend) {
	this.forum_recommend = forum_recommend;
}






@Override
public String toString() {
	return "forumVO [forum_no=" + forum_no + ", forum_title=" + forum_title + ", forum_date=" + forum_date
			+ ", forum_content=" + forum_content + ", forum_views=" + forum_views + ", forum_recommend="
			+ forum_recommend + ", forum_memberID=" + forum_memberID + ", imageList=" + imageList + "]";
}


















}
