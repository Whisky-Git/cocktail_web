package com.spring.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.Criteria;
import com.spring.model.forum_replyDTO;
import com.spring.model.forum_replypageDTO;
import com.spring.service.forum_replyService;

@RestController
@RequestMapping("/forumreply")
public class forum_replyController {

	@Autowired
	private forum_replyService service;
	
	/* 댓글 등록 */
	@PostMapping("/enroll")
	public void enrollReplyPOST(forum_replyDTO dto) {
		service.enrollReply(dto);
	}
	
	/* 댓글 페이징 */
	@GetMapping(value="/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public forum_replypageDTO replyListPOST(Criteria cri) {
		
		
		return service.forum_replyList(cri);
	}
	
}
