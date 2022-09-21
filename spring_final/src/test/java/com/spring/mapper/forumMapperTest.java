package com.spring.mapper;

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
public class forumMapperTest {
	private static final Logger log = LoggerFactory.getLogger(forumMapperTest.class);
    
    @Autowired
    private forumMapper mapper;
/*
    @Test
    public void testEnroll() {
        
        forumVO vo = new forumVO();
        
        vo.setForum_title("����");
        vo.setForum_date("����");
        vo.setForum_content("�з�");
        vo.setForum_views(1);
        vo.setForum_recommend(5);
        vo.setForum_memberID("admin");
        
        mapper.enroll(vo); 
    }*/
    /* 게시판 목록 테스트 */
    
//    @Test
//    public void testGetList() {
//        
//        
//        List list = mapper.getList();
//       /* 일반적 for문 */
//        for(int i = 0; i < list.size();i++) {
//            log.info("" + list.get(i));
//        }
//        
//       /* foreach문(향상된 for문) */
//        for(Object a : list) {
//            log.info("" + a);
//        }
//        
//       /* foreach문 & 람다식 */
//        list.forEach(forum -> log.info("" + forum));
//        
//    }
    /* 게시판 조회 */
//    @Test
//   public void testGetPage() {
//       
//       /* 실제 존재하는 페이지 */
//       int forum_no = 3;
//       
//       log.info("" + mapper.getPage(forum_no));
//       
//   }
//   
//    /* 게시판 수정 */
//    @Test
//    public void testModify() {
//        
//        forumVO forum = new forumVO();
//        forum.setForum_no(2);
//        forum.setForum_title("수정 제목");
//        forum.setForum_content("수정 내용");
//        
//        
//        int result = mapper.modify(forum);
//        System.out.println("result : " +result);
//        
//    }
    /* 게시판 삭제 */
//    @Test
//    public void testDelete() {
//        
//        int result = mapper.delete(3);
//        System.out.println("result : " + result);	
//        
//    }
    
    
    @Test
    public void testGetListPaging() {
        
        Criteria cri = new Criteria();
        cri.setPageNum(2);
        List list = mapper.getListPaging(cri);
        
        list.forEach(forum -> System.out.println("" + forum));
    }
}
