package com.spring.mapper;

import java.util.List;

import com.spring.model.Criteria;
import com.spring.model.forumVO;
import com.spring.model.forum_imageVO;

public interface forumMapper {
	
	
	public void enroll(forumVO forum);
	

	/* 寃뚯떆�뙋 紐⑸줉 */
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
    
    /* 이미지 등록 */
	public void imageEnroll(forum_imageVO vo);
	
	public void viewCount(int forum_no);
	
	/* 상품 id 이름 */
	public forumVO getforumName(int forum_no);

	
	/* 지정 상품 이미지 전체 삭제 */
	public void deleteImageAll(int forum_no);
}
