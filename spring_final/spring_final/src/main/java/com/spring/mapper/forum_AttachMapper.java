package com.spring.mapper;

import java.util.List;

import com.spring.model.forum_imageVO;

public interface forum_AttachMapper {

	/* 이미지 데이터 반환 */
	public List<forum_imageVO> getAttachList(int forum_no);
	
}
