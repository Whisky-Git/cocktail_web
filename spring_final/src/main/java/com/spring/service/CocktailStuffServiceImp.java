package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CocktailStuffMapper;
import com.spring.model.CocktailStuffVO;

@Service
public class CocktailStuffServiceImp implements CocktailStuffService {

	@Autowired
	private CocktailStuffMapper stuffmapper;
	
	
	 @Override
	 public List<CocktailStuffVO> getStuffList() {
	        
		 return stuffmapper.getStuffList();
	        
	 }
	
	 @Override
	 public List<CocktailStuffVO> getTypeList() {
	        
		 return stuffmapper.getTypeList();
	        
	 }
	
	
}
