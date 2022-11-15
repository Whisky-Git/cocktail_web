package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mapper.forumMapper;
import com.spring.model.forum_criteria;
import com.spring.model.forum_imageVO;
import com.spring.model.forumVO;

@Service
public class forumServicelmp implements forumService{
	
	@Autowired
	private forumMapper mapper;
	
	
	@Override
    public void enroll(forumVO forum) {
        
        mapper.enroll(forum);
        
        if(forum.getImageList() == null || forum.getImageList().size() <= 0) {
			return;
		}
        
        forum.getImageList().forEach(attach ->{
			
        	
        	attach.setForum_no(forum.getForum_no());
        	
        	mapper.imageEnroll(attach);
        	System.out.println("attach : " + attach);
        	
        	
		});
        
    }
	@Override
    public List<forumVO> getList() {
        
        return mapper.getList();
    }
    
    /* 게시판 조회 */
    @Override
    public forumVO getPage(int forum_no) {
         
        return mapper.getPage(forum_no);
    }    
    
    /* 게시판 수정 */
    @Transactional
    @Override
    public int modify(forumVO forum) {
    	int result = mapper.modify(forum);
		
		if(result == 1 && forum.getImageList() != null && forum.getImageList().size() > 0) {
			
			mapper.deleteImageAll(forum.getForum_no());
			
			forum.getImageList().forEach(attach -> {
				
				attach.setForum_no(forum.getForum_no());
				mapper.imageEnroll(attach);
				
			});
			
		}
		
		return result;
		
		
     //   return mapper.modify(forum);
    }
    
    /* 게시판 삭제 */
    @Override
    public int delete(int forum_no) {
        
    	mapper.deleteImageAll(forum_no);
		
		return mapper.delete(forum_no);
    }    
    
    /* 게시판 목록(페이징 적용) */
    @Override
    public List<forumVO> getListPaging(forum_criteria cri) {
        
        return mapper.getListPaging(cri);
    }    
    
    /* 게시물 총 갯수 */
    @Override
    public int getTotal(forum_criteria cri) {
        
        return mapper.getTotal(cri);
    }    
    @Override
    public void viewCount(int forum_no) {
    	
    	 mapper.viewCount(forum_no);
    }
    
    @Override
	public forumVO getforumName(int forum_no) {
		
		return mapper.getforumName(forum_no);
	}
    

	/* 지정 상품 이미지 정보 얻기 */
	@Override
	public List<forum_imageVO> getAttachInfo(int forum_no) {
		
		
		return mapper.getAttachInfo(forum_no);
	}
}