package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.forumMapper;
import com.spring.model.Criteria;
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
        	System.out.println("attach : " + attach);
        	mapper.imageEnroll(attach);
        	
        	
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
    @Override
    public int modify(forumVO forum) {
        
        return mapper.modify(forum);
    }
    
    /* 게시판 삭제 */
    @Override
    public int delete(int forum_no) {
        
        return mapper.delete(forum_no);
    }    
    
    /* 게시판 목록(페이징 적용) */
    @Override
    public List<forumVO> getListPaging(Criteria cri) {
        
        return mapper.getListPaging(cri);
    }    
    
    /* 게시물 총 갯수 */
    @Override
    public int getTotal(Criteria cri) {
        
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
    
    
}
