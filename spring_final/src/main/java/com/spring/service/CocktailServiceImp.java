package com.spring.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CocktailMapper;
import com.spring.model.CocktailVO;
import com.spring.model.SelectDTO;
import com.spring.model.CocktailCriteria;

@Service
public class CocktailServiceImp implements CocktailService{

	private static final Logger log = LoggerFactory.getLogger(CocktailServiceImp.class);
	
	@Autowired
	CocktailMapper cocktailMapper;
	
	/* 칵테일 목록 */
    @Override
    public List<CocktailVO> cocktailGetList(CocktailCriteria cri) throws Exception {
        
        return cocktailMapper.cocktailGetList(cri);
    }
    
    /* 칵테일 총 수 */
    @Override
    public int cocktailGetTotal(CocktailCriteria cri) throws Exception {
        log.info("(service)cocktailGetTotal()......." + cri);
        return cocktailMapper.cocktailGetTotal(cri);
    }
    
    /* 칵테일 상세 페이지 */
	@Override
	public CocktailVO cocktailGetDetail(int cocktailNo) throws Exception {
		log.info("cocktailGetDetail........" + cocktailNo);
		return cocktailMapper.cocktailGetDetail(cocktailNo);
	}
	
	/* 칵테일 등록 */
	@Override
    public void cocktailEnroll(CocktailVO cocktail) throws Exception {
        
        cocktailMapper.cocktailEnroll(cocktail);
        
    }
	
	/* 칵테일 수정 */
	@Override
	public int cocktailModify(CocktailVO cocktail) throws Exception {
		log.info("(service) cocktialModify........." + cocktail);
		return cocktailMapper.cocktailModify(cocktail);
	}
	
	/* 칵테일 삭제 */
	@Override
	public int cocktailDelete(int cocktailNo) {
		
		log.info("cocktailDelete..........");
		
		return cocktailMapper.cocktailDelete(cocktailNo);
	}
	
	/* 칵테일 이름 */
	@Override
	public CocktailVO getCocktailNoName(int cocktailNo) {
		
		return cocktailMapper.getCocktailNoName(cocktailNo);
	}
	
	/* 평줌순 상품 정보 */
	@Override
	public List<SelectDTO> likeSelect() {
		
		List<SelectDTO> list = cocktailMapper.likeSelect();	
		
		return list;	

	}
}