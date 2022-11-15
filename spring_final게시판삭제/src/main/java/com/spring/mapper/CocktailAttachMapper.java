package com.spring.mapper;

import java.util.List;

import com.spring.model.CocktailImageVO;

public interface CocktailAttachMapper {

	/* 이미지 데이터 반환 */
	public List<CocktailImageVO> getAttachList(int cocktailNo);
	
}
