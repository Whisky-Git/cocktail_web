package com.spring.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.spring.model.CocktailStuffVO;
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
	  
	  
	    /* 칵테일 등록 페이지 접속 */
	    @RequestMapping(value = "/admin/cocktailstuffEnroll", method = RequestMethod.GET)
	    public void cocktailstuffEnrollGET() throws Exception{
	       
	        
	    }
		/* 칵테일 등록 */
	    @RequestMapping(value="/admin/cocktailstuffEnroll.do", method = RequestMethod.POST)
	    public String cocktailEnrollPOST(CocktailStuffVO cocktailstuff, RedirectAttributes rttr) throws Exception{
	 
	    	log.info("cocktailEnroll :" +  cocktailstuff);
	        
	    	cservice.cocktailstuffEnroll(cocktailstuff);      // 칵테일 등록 쿼리 수행
	        
	        //rttr.addFlashAttribute("enroll_result", cocktailstuff.getCocktailName());
	        
	        return "redirect:/admin/main";
	        
	    }
	    
	    
	    
	    
	    
//
//	    /* 칵테일 관리 페이지 접속 */
//	    @RequestMapping(value = "cocktailManage", method = RequestMethod.GET)
//	    public void cocktailManageGET(CocktailCriteria cri, Model model) throws Exception{
//	    	logger.info("칵테일 목록 페이지 접속" + cri);
//			/* 칵테일 목록 출력 데이터 */
//	        List list = cocktailService.cocktailGetList(cri);
//	        
//	        if(!list.isEmpty()) {
//				model.addAttribute("list",list);	// 칵테일 존재 경우
//			} else {
//				model.addAttribute("listCheck", "empty");	// 칵테일 존재하지 않을 경우
//			}
//	        
//	        /* 페이지 이동 인터페이스 데이터 */
//	        int total = cocktailService.cocktailGetTotal(cri);
//	        
//	        PageDTO pageMaker = new PageDTO(cri, total);
//	        
//	        model.addAttribute("pageMaker", pageMaker);
//	    }   
//	    
	    
	    
	    
	    
	    

	    /* 칵테일 관리 페이지 접속 */
	    @RequestMapping(value = "cocktailstuffManage", method = RequestMethod.GET)
	    public void cocktailstuffManageGET( Model model) throws Exception{
	    	
	    	//logger.info("칵테일 목록 페이지 접속" + cri);
			/* 칵테일 목록 출력 데이터 */
	        //List list = cservice.cocktailGetList(cri);
	    	
	        model.addAttribute("slist", cservice.getStuffList());
	        
	        
//	        if(!list.isEmpty()) {
//				model.addAttribute("list",list);	// 칵테일 존재 경우
//			} else {
//				model.addAttribute("listCheck", "empty");	// 칵테일 존재하지 않을 경우
//			}
	        
	        
	        
//	        
//	        /* 페이지 이동 인터페이스 데이터 */
//	        int total = cocktailService.cocktailGetTotal(cri);
//	        
//	        PageDTO pageMaker = new PageDTO(cri, total);
//	        
//	        model.addAttribute("pageMaker", pageMaker);
	    }   
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
}
