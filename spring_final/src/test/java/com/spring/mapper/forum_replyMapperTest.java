package com.spring.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.model.forum_replyDTO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")


public class forum_replyMapperTest {
	@Autowired
	private forum_replyMapper mapper;
	
	@Test
	public void replyEnrollTest() {
		
		String id = "admin";
		int forum_no = 3;
		double rating = 3.5;
		String content = "댓글 테스트";
		
		forum_replyDTO dto = new forum_replyDTO();
		dto.setForum_no(forum_no);
		dto.setForum_mk(id);
		dto.setForum_rating(rating);
		dto.setForum_content(content);
		
		mapper.enrollReply(dto);
		
		
	}
	
	
}
