package com.spring.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.CocktailCriteria;
import com.spring.model.CocktailVO;
import com.spring.model.PageDTO;
import com.spring.model.ReplyDTO;
import com.spring.service.CocktailService;
import com.spring.service.ReplyService;


@Controller
public class BookController {

	private static final Logger Logger = LoggerFactory.getLogger(BookController.class);
	
	@Autowired
	private CocktailService cocktailService;
	
	@Autowired
	private ReplyService replyService;

	//메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGet(Model model) {
		Logger.info("메인 페이지 진입");
		
		model.addAttribute("ls", cocktailService.likeSelect());
	
	}
	
	//마이페이지 이동
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void mypagePageGet() {
		Logger.info("마이 페이지 진입");
	
	}
	
	//페이지 이동
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void contactPageGet() {
		Logger.info("contact 페이지 진입");
	
	}
	
	//keyword 페이지 이동
		@RequestMapping(value = "/keyword", method = RequestMethod.GET)
		public void keywordPageGet() {
			Logger.info("keyword 페이지 진입");
		
		}
		
	//cocktailList 페이지 이동
		@RequestMapping(value = {"/cocktailList", "/cocktailList2"}, method = RequestMethod.GET)
		public void cocktailListGet(CocktailCriteria cri, Model model) throws Exception{
			Logger.info("칵테일 목록 페이지 접속" + cri);
			
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
		
		/* 칵테일 상세 페이지 */
		@GetMapping({"/service", "/admin/cocktailModify"})
		public void cocktailGetInfoGET(int cocktailNo, CocktailCriteria cri, Model model) throws Exception {
			
			Logger.info("authorDetail......." + cocktailNo);
			
			/* 칵테일 목록 페이지 정보 */
			model.addAttribute("cri", cri);
			
			/* 선택 칵테일 정보 */
			model.addAttribute("cocktailInfo", cocktailService.cocktailGetDetail(cocktailNo));
			
		}
		
		/* 리뷰 쓰기 */
		@GetMapping("/replyEnroll/{memberId}")
		public String replyEnrollWindowGET(@PathVariable("memberId")String memberId, int cocktailNo, Model model) {
			CocktailVO cocktail = cocktailService.getCocktailNoName(cocktailNo);
			model.addAttribute("cocktailInfo", cocktail);
			model.addAttribute("memberId", memberId);
			
			return "/replyEnroll";
		}
		
		/* 리뷰 수정 팝업창 */
		@GetMapping("/replyUpdate")
		public String replyUpdateWindowGET(ReplyDTO dto, Model model) {
			CocktailVO book = cocktailService.getCocktailNoName(dto.getCocktailNo());
			model.addAttribute("cocktailInfo", book);
			model.addAttribute("replyInfo", replyService.getUpdateReply(dto.getReplyId()));
			model.addAttribute("memberId", dto.getMemberId());
			
			return "/replyUpdate";
		}
		
		//keyword 페이지 이동
		//		@RequestMapping(value = "/myinfor", method = RequestMethod.GET)
		//		public void myinforPageGet() {
		//			Logger.info("myinfor 페이지 진입");
		//		
		//		}
		
		
		
}
