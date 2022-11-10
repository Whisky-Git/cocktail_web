package com.spring.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mapper.CocktailAttachMapper;
import com.spring.mapper.CocktailMapper;
import com.spring.model.CocktailVO;
import com.spring.model.SelectDTO;
import com.spring.model.CocktailCriteria;
import com.spring.model.CocktailImageVO;

@Service
public class CocktailServiceImp implements CocktailService{

	private static final Logger log = LoggerFactory.getLogger(CocktailServiceImp.class);
	
	@Autowired
	private CocktailMapper cocktailMapper;
	
	@Autowired
	private CocktailAttachMapper attachMapper;
	
	/* 칵테일 목록 */
    @Override
    public List<CocktailVO> cocktailGetList(CocktailCriteria cri) throws Exception {
        
    	List<CocktailVO> list = cocktailMapper.cocktailGetList(cri);
		
		list.forEach(cocktail -> {
			
			int cocktailNo = cocktail.getCocktailNo();
			
			List<CocktailImageVO> imageList = attachMapper.getAttachList(cocktailNo);
			
			cocktail.setImageList(imageList);
			
		});
    	
        return list;
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
	@Transactional
	@Override
    public void cocktailEnroll(CocktailVO cocktail) throws Exception {
        
        cocktailMapper.cocktailEnroll(cocktail);
        
        cocktail.getImageList().forEach(attach ->{
        	
        	if(cocktail.getImageList() == null || cocktail.getImageList().size() <= 0) {
    			return;
    		}			
        	attach.setCocktailNo(cocktail.getCocktailNo());
			cocktailMapper.imageEnroll(attach);
		});
        
    }
	
	/* 칵테일 수정 */
	@Transactional
	@Override
	public int cocktailModify(CocktailVO vo) {
		
		int result = cocktailMapper.cocktailModify(vo);
		if(result == 1 && vo.getImageList() != null && vo.getImageList().size() > 0) {
			
			cocktailMapper.deleteImageAll(vo.getCocktailNo());
			
			vo.getImageList().forEach(attach -> {
				
				attach.setCocktailNo(vo.getCocktailNo());
				cocktailMapper.imageEnroll(attach);
				
			});
			
		}
		
		return result;
	}
	
	/* 칵테일 삭제 */
	@Override
	@Transactional
	public int cocktailDelete(int cocktailNo) {
		
		log.info("cocktailDelete..........");
		
		cocktailMapper.deleteImageAll(cocktailNo);
		
		return cocktailMapper.cocktailDelete(cocktailNo);
	}
	
	/* 칵테일 이름 */
	@Override
	public CocktailVO getCocktailNoName(int cocktailNo) {
		
		return cocktailMapper.getCocktailNoName(cocktailNo);
	}
	
	/* 평점순 상품 정보 */
	@Override
	public List<SelectDTO> likeSelect() {
		
		List<SelectDTO> list = cocktailMapper.likeSelect();	
		
		list.forEach(dto -> {
			
			int cocktailNo = dto.getCocktailNo();
			
			List<CocktailImageVO> imageList = attachMapper.getAttachList(cocktailNo);
			
			dto.setImageList(imageList);
			
		});	
		
		return list;	

	}
	
	/* 지정 상품 이미지 정보 얻기 */
	@Override
	public List<CocktailImageVO> getAttachInfo(int cocktailNo) {
		
		log.info("getAttachInfo........");
		
		return cocktailMapper.getAttachInfo(cocktailNo);
	}
}