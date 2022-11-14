package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.forum_AttachMapper;
import com.spring.model.forum_imageVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class forum_AttachServiceImpl implements forum_AttachService{

	
	@Autowired
	private forum_AttachMapper attachMapper;
	
	
	/* 이미지 데이터 반환 */
	@Override
	public List<forum_imageVO> getAttachList(int forum_no) {
		
		return attachMapper.getAttachList(forum_no);
	}
	
}
