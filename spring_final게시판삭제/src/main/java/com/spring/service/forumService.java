package com.spring.service;

import java.util.List;

import com.spring.model.forum_criteria;
import com.spring.model.forum_imageVO;
import com.spring.model.forumVO;

public interface forumService {
	
	 /* �Խ��� ��� */
    public void enroll(forumVO forum);
    
    /* 게시판 목록 */
    public List<forumVO> getList();
    
    /* 게시판 조회 */
    public forumVO getPage(int forum_no);
    
    /* 게시판 수정 */
    public int modify(forumVO forum);
    
    /* 게시판 삭제 */
    public int delete(int forum_no);
    
    /* 게시판 목록(페이징 적용) */
    public List<forumVO> getListPaging(forum_criteria cri);
    
    /* 게시판 총 갯수 */
    public int getTotal(forum_criteria cri);
    
 public void viewCount(int forum_no);
    
    /* 상품 id 이름 */
	public forumVO getforumName(int forum_no);
	
	/* 지정 게시글 이미지 정보 얻기 */
	public List<forum_imageVO> getAttachInfo(int forum_no);
}