package com.spring.mapper;

import java.util.List;

import com.spring.model.CocktailVO;
import com.spring.model.SelectDTO;
import com.spring.model.CocktailCriteria;
import com.spring.model.CocktailImageVO;

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
	
	/* top 30 */
	public List<SelectDTO> likeSelect2();
	
	/* 이미지 등록 */
	public void imageEnroll(CocktailImageVO vo);
	
	/* 지정 칵테일 이미지 전체 삭제 */
	public void deleteImageAll(int cocktailNo);
	
	/* 어제자 날짜 이미지 리스트 */
	public List<CocktailImageVO> checkFileList();
	
	/* 지정 상품 이미지 정보 얻기 */
	public List<CocktailImageVO> getAttachInfo(int cocktailNo);
	
	/* 비슷한 칵테일 추천 */
	public List<CocktailVO> recommandGetList(String recommand);
	
	/* mbti 칵테일 리스트 */
	public List<CocktailVO> cocktailMbtiGetList(CocktailCriteria cri);
}
