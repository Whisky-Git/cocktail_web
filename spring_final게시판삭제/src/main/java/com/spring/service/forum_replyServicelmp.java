package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.forum_replyMapper;
import com.spring.model.PageMakerDTO;
import com.spring.model.forum_criteria;
import com.spring.model.forum_replyDTO;
import com.spring.model.forum_replypageDTO;


@Service
public class forum_replyServicelmp implements forum_replyService {
	
	@Autowired
	private forum_replyMapper mapper;

	/* 댓글등록 */
	@Override
	public int enrollReply(forum_replyDTO dto) {
		
		int result = mapper.enrollReply(dto);
		
		return result;
	}
	
	@Override
	public forum_replypageDTO forum_replyList(forum_criteria cri) {
		forum_replypageDTO dto = new forum_replypageDTO();
		
		dto.setList(mapper.getForumReplyList(cri));
		dto.setPageInfo(new PageMakerDTO(cri, mapper.getForumReplyTotal(cri.getForum_no())));
		
		return dto;
	}
	
	
	@Override
	public int updateReply(forum_replyDTO dto) {
		
		int result = mapper.updateReply(dto); 
		
		return result;
	}
	
	@Override
	public forum_replyDTO getUpdateReply(int replyId) {
		
		return mapper.getUpdateReply(replyId);
	}
	
	@Override
	public int deleteReply(forum_replyDTO dto) {
		
		int result = mapper.deleteReply(dto.getForum_replyId()); 
		
		return result;
	}
	
}
