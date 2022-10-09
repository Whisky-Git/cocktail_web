package com.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.service.CocktailStuffService;

@Controller
public class CocktailStuffController {
	
	private static final Logger log= LoggerFactory.getLogger(CocktailStuffController.class);

	
	@Autowired
	private CocktailStuffService cservice;
	

	
	  @GetMapping("/keyword")
	    // => @RequestMapping(value="/keyword", method=RequestMethod.GET)
	    public void StuffListGET(Model model) {
	        
	        log.info("재료 목록 페이지 진입");
	        
	        model.addAttribute("slist", cservice.getStuffList());
	        model.addAttribute("tlist", cservice.getTypeList());
	   }

}
