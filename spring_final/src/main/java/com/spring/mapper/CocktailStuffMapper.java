package com.spring.mapper;

import java.util.List;

import com.spring.model.CocktailStuffVO;
import com.spring.model.CocktailVO;

public interface CocktailStuffMapper {
	
	public List<CocktailStuffVO> getStuffList();

	public List<CocktailStuffVO> getTypeList();
	
	
	/* 칵테일 등록 */
    public void cocktailstuffEnroll(CocktailStuffVO cocktailstuff);
}
