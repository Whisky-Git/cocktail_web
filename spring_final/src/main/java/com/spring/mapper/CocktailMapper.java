package com.spring.mapper;

import java.util.List;

import com.spring.model.CocktailVO;
import com.spring.model.SelectDTO;
import com.spring.model.CocktailCriteria;

public interface CocktailMapper {
	
	/* 칵테일 목록 */
	public List<CocktailVO> cocktailGetList(CocktailCriteria cri);
	
	/* 칵테일 총 수 */
    public int cocktailGetTotal(CocktailCriteria cri);
    
    /* 칵테일 상세 */
	public CocktailVO cocktailGetDetail(int cocktailNo);
	
	/* 칵테일 등록 */
    public void cocktailEnroll(CocktailVO cocktail);
    
    /* 칵테일 수정 */
	public int cocktailModify(CocktailVO cocktail);
	
	/* 칵테일 삭제 */
	public int cocktailDelete(int cocktailNo);
	
	/* 칵테일 이름 */
	public CocktailVO getCocktailNoName(int cocktailNo);
	
	/* 평줌순 상품 정보 */
	public List<SelectDTO> likeSelect();
}
