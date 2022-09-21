package com.spring.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.model.Criteria;
import com.spring.model.PageMakerDTO;
import com.spring.model.forumVO;
import com.spring.service.forumService;

@Controller
@RequestMapping("/forum/*")
public class forumController {
	
    private static final Logger log = LoggerFactory.getLogger(forumController.class);

    @Autowired
    private forumService bservice;
    
    
    /* 게시판 목록 페이지 접속(페이징 적용) */
    @GetMapping("/list")
    public void forumListGET(Model model, Criteria cri) {
        
        System.out.println("forumListGET");
        
        model.addAttribute("list", bservice.getListPaging(cri));
        
        int total = bservice.getTotal();
        
        PageMakerDTO pageMake = new PageMakerDTO(cri, total);
        
        model.addAttribute("pageMaker", pageMake);
        
    }    
 
    
    @GetMapping("/enroll")
    // => @RequestMapping(value="enroll", method=RequestMethod.GET)
    public void forumEnrollGET() {
        
        log.info("�Խ��� ��� ������ ����");
        
    }
    
    /* 게시판 등록 */
    @PostMapping("/enroll")
    public String forumEnrollPOST(forumVO forum, RedirectAttributes rttr) {
        
        log.info("forumVO : " + forum);
        bservice.enroll(forum);
        
        rttr.addFlashAttribute("result","enroll success");
        return "redirect:/forum/list";
    }
    
    /* 게시판 조회 */
    @GetMapping("/get")
    public void forumGetPageGET(int forum_no, Model model,Criteria cri) {
        
        model.addAttribute("pageInfo", bservice.getPage(forum_no));
        model.addAttribute("cri",cri);
    }
    
    /* 수정 페이지 이동 */
    @GetMapping("/modify")
    public void forumModifyGET(int forum_no, Model model) {
        
        model.addAttribute("pageInfo", bservice.getPage(forum_no));
      
    }
    
    /* 페이지 수정 */
    @PostMapping("/modify")
    public String forumModifyPOST(forumVO forum, RedirectAttributes rttr) {
    	System.out.println(forum);
        bservice.modify(forum);
       
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/forum/list";
        
    }
    
    /* 페이지 삭제 */
    @PostMapping("/delete")
    public String forumDeletePOST(int forum_no, RedirectAttributes rttr) {
        
        bservice.delete(forum_no);
        
        rttr.addFlashAttribute("result", "delete success");
        
        return "redirect:/forum/list";
    }
    
    
}
