package com.spring.service;

import java.util.List;

import com.spring.model.CocktailVO;
import com.spring.model.SelectDTO;
import com.spring.model.CocktailCriteria;
import com.spring.model.CocktailImageVO;

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
	
	/* 칵테일 이름 */
	public CocktailVO getCocktailNoName(int cocktailNo);
	
	/* 평줌순 상품 정보 */
	public List<SelectDTO> likeSelect();
	
	/* top 30 */
	public List<SelectDTO> likeSelect2();
	
	/* 지정 상품 이미지 정보 얻기 */
	public List<CocktailImageVO> getAttachInfo(int cocktailNo);
	
	/* 비슷한 칵테일 추천 */
	public List<CocktailVO> recommandGetList(String recommand) throws Exception;
	
}
