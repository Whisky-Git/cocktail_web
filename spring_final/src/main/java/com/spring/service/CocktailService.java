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
	
	/* 칵테일 등록 */
    public void cocktailEnroll(CocktailVO cocktail) throws Exception;
    
    /* 칵테일 수정 */
	public int cocktailModify(CocktailVO cocktail) throws Exception;
	
	/* 칵테일 삭제 */
	public int cocktailDelete(int cocktailNo);
}
