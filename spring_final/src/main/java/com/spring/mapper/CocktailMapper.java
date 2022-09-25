package com.spring.mapper;

import java.util.List;

import com.spring.model.CocktailVO;
import com.spring.model.CocktailCriteria;

public interface CocktailMapper {
	
	/* 칵테일 목록 */
	public List<CocktailVO> cocktailGetList(CocktailCriteria cri);
	
	/* 칵테일 총 수 */
    public int cocktailGetTotal(CocktailCriteria cri);
    
    /* 칵테일 상세 */
	public CocktailVO cocktailGetDetail(int cocktailNo);
}
