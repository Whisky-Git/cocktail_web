package com.spring.service;

import java.util.List;

import com.spring.model.CocktailStuffVO;
import com.spring.model.CocktailVO;

public interface CocktailStuffService {
	
	public List<CocktailStuffVO> getStuffList();
	public List<CocktailStuffVO> getTypeList();
	/* 칵테일 등록 */
    public void cocktailstuffEnroll(CocktailStuffVO cocktailstuff) throws Exception;
}
