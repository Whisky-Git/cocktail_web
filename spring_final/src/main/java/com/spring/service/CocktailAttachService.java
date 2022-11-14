package com.spring.service;

import java.util.List;

import com.spring.model.CocktailImageVO;

public interface CocktailAttachService {

	/* 이미지 데이터 반환 */
	public List<CocktailImageVO> getAttachList(int cocktailNo);	
	
}