package com.spring.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.model.Criteria;
import com.spring.model.forumVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class forumServiceTest {
	
	
	private static final Logger log = LoggerFactory.getLogger(forumServiceTest.class);
    
	
    @Autowired
    private forumService Service;

//    @Test
//    public void testGetList() {
//        
//        Service.getList().forEach(forum -> log.info("" + forum));        
//        
//    }
    
//    /*게시판 조회*/
//    @Test
//    public void testGETPage() {
//        
//        int forum_no = 3;
//        
//       System.out.println("" + Service.getPage(forum_no));
//        
//    }
    
//    /* 게시판 삭제 */
//    @Test
//    public void testDelete() {
//        
//        int result = Service.delete(3);
//        System.out.println("result : " + result);	
//        
//    }
    
    /* 게시판 조회(페이징 적용) */
    @Test
    public void testGetListPaging() {
        
        Criteria cri = new Criteria();
        
        List list = Service.getListPaging(cri);
        
        list.forEach(forum -> System.out.println("" + forum));
        
        
    }
    
}