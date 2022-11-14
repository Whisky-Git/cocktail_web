package com.spring.mapper;

import java.util.List;

import com.spring.model.Criteria;
import com.spring.model.forum_replyDTO;

public interface forum_replyMapper {

	/* 댓글 등록 */
	public int enrollReply(forum_replyDTO dto);
	
	
	/* 댓글 페이징 */
	public List<forum_replyDTO> getForumReplyList(Criteria cri);
	
	/* 댓글 총 갯수(페이징) */
	public int getForumReplyTotal(int forum_no);
	
	/* 댓글 수정 */
	public int updateReply(forum_replyDTO dto);
	
	/* 댓글 한개 정보(수정페이지) */
	public forum_replyDTO getUpdateReply(int replyId);
	
	/* 댓글 삭제 */
	public int deleteReply(int replyId);
}
