package com.spring.service;

import java.util.List;

import com.spring.model.CocktailVO;
import com.spring.model.CocktailCriteria;

public interface CocktailService {

	/* 칵테일 목록 */
    public List<CocktailVO> cocktailGetList(CocktailCriteria cri) throws Exception;

    /* 칵테일 총 수 */
    public int cocktailGetTotal(CocktailCriteria cri) throws Exception; 
    
    /* 칵테일 상세 페이지 */
	public CocktailVO cocktailGetDetail(int cocktailNo) throws Exception;
}
