package com.spring.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.model.CocktailCriteria;
import com.spring.model.CocktailVO;
import com.spring.model.PageDTO;
import com.spring.service.CocktailService;

//관리자와 관련된 페이지 이동, 기능 수행 메소드 관리
@Controller
@RequestMapping("/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	 @Autowired
	 private CocktailService cocktailService;
	
	//관리자 메인 페이지 이동
	@RequestMapping(value="main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception{
		
		System.out.println("관리자 페이지 이동");
	}
    
    /* 칵테일 등록 페이지 접속 */
    @RequestMapping(value = "cocktailEnroll", method = RequestMethod.GET)
    public void cocktailEnrollGET() throws Exception{
        logger.info("칵테일 등록 페이지 접속");
        
    }
    
    /* 칵테일 관리 페이지 접속 */
    @RequestMapping(value = "cocktailManage", method = RequestMethod.GET)
    public void cocktailManageGET(CocktailCriteria cri, Model model) throws Exception{
    	logger.info("칵테일 목록 페이지 접속" + cri);
		/* 칵테일 목록 출력 데이터 */
        List list = cocktailService.cocktailGetList(cri);
        
        if(!list.isEmpty()) {
			model.addAttribute("list",list);	// 칵테일 존재 경우
		} else {
			model.addAttribute("listCheck", "empty");	// 칵테일 존재하지 않을 경우
		}
        
        /* 페이지 이동 인터페이스 데이터 */
        int total = cocktailService.cocktailGetTotal(cri);
        
        PageDTO pageMaker = new PageDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMaker);
    }   
    
    /* 회원 관리 페이지 접속 */
    @RequestMapping(value = "memberManage", method = RequestMethod.GET)
    public void memberManageGET() throws Exception{
        logger.info("회원 관리 페이지 접속");
    }  
	
	/* 칵테일 등록 */
    @RequestMapping(value="cocktailEnroll.do", method = RequestMethod.POST)
    public String cocktailEnrollPOST(CocktailVO cocktail, RedirectAttributes rttr) throws Exception{
 
        logger.info("cocktailEnroll :" +  cocktail);
        
        cocktailService.cocktailEnroll(cocktail);      // 칵테일 등록 쿼리 수행
        
        rttr.addFlashAttribute("enroll_result", cocktail.getCocktailName());
        
        return "redirect:/admin/cocktailManage";
        
    }
    
    /* 칵테일 수정 */
	@PostMapping("/cocktailModify")
	public String authorModifyPOST(CocktailVO cocktail, RedirectAttributes rttr) throws Exception{
		
		logger.info("cocktailModifyPOST......." + cocktail);
		
		int result = cocktailService.cocktailModify(cocktail);
		
		rttr.addFlashAttribute("modify_result", cocktail);
		
		return "redirect:/admin/cocktailManage";
		
	}
	
	/* 칵테일 삭제 */
	@PostMapping("/cocktailDelete")
	public String cocktailDeletePOST(int cocktailNo, RedirectAttributes rttr) {
		
		logger.info("cocktailDeletePOST..........");
		
		int result = 0;
		
		result = cocktailService.cocktailDelete(cocktailNo);
		
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/admin/cocktailManage";
		
	}	
	 
}
