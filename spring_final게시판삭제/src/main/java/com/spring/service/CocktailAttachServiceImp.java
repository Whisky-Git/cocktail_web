package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CocktailAttachMapper;
import com.spring.model.CocktailImageVO;


@Service
public class CocktailAttachServiceImp implements CocktailAttachService{

	@Autowired
	private CocktailAttachMapper attachMapper;
	
	
	/* 이미지 데이터 반환 */
	@Override
	public List<CocktailImageVO> getAttachList(int cocktailNo) {
		
		
		return attachMapper.getAttachList(cocktailNo);
	}
	

}