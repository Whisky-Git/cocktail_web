package com.spring.service;

import com.spring.model.Criteria;
import com.spring.model.forum_replyDTO;
import com.spring.model.forum_replypageDTO;

public interface forum_replyService {
	/* 댓글 등록 */
	public int enrollReply(forum_replyDTO dto);

	/* 댓글 페이징 */
	public forum_replypageDTO forum_replyList(Criteria cri);

	/* 댓글 수정 */
	public int updateReply(forum_replyDTO dto);
	
	/* 댓글 한개 정보(수정페이지) */
	public forum_replyDTO getUpdateReply(int replyId);
	
	/* 댓글 삭제 */
	public int deleteReply(forum_replyDTO dto);
}


