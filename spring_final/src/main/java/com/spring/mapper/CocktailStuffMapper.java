package com.spring.mapper;

import java.util.List;

import com.spring.model.CocktailStuffVO;

public interface CocktailStuffMapper {
	
	public List<CocktailStuffVO> getStuffList();

	public List<CocktailStuffVO> getTypeList();
}
