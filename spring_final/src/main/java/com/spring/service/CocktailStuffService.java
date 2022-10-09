package com.spring.service;

import java.util.List;

import com.spring.model.CocktailStuffVO;

public interface CocktailStuffService {
	
	public List<CocktailStuffVO> getStuffList();
	public List<CocktailStuffVO> getTypeList();

}
