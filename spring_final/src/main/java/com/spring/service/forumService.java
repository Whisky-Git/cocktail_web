package com.spring.service;

import java.util.List;

import com.spring.model.Criteria;
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
    public List<forumVO> getListPaging(Criteria cri);
    
    /* 게시판 총 갯수 */
    public int getTotal(Criteria cri);
}
