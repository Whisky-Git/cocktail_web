package com.spring.service;

import java.util.ArrayList;
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
import com.spring.model.forum_imageVO;

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
    /*
  게시판 조회(페이징 적용)
    @Test
    public void testGetListPaging() {
        
        Criteria cri = new Criteria();
        
        List list = Service.getListPaging(cri);
        
        list.forEach(forum -> System.out.println("" + forum));
        
        
    } 
     */
    /* 상품 등록 & 상품 이미지 등록 테스트 */
	@Test
	public void bookEnrollTEsts() {
		forumVO forum = new forumVO();
		// 상품 정보
		forum.setForum_title("service 테스트");
		forum.setForum_recommend(5);
		forum.setForum_views(5);
		forum.setForum_memberID("노트북");
		

		// 이미지 정보
		List<forum_imageVO> imageList = new ArrayList<forum_imageVO>(); 
		
		forum_imageVO image1 = new forum_imageVO();
		forum_imageVO image2 = new forum_imageVO();
		
		image1.setForum_fileName("test Image 1");
		image1.setForum_uploadPath("test image 1");
		image1.setForum_uuid("test1111");
		
		 // 수정 코드
        image2.setForum_fileName("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		image2.setForum_uploadPath("test image 2");
		image2.setForum_uuid("test2222");
		
		imageList.add(image1);
		imageList.add(image2);
		
		forum.setImageList(imageList);        
		
		// bookEnroll() 메서드 호출
		Service.enroll(forum);
		
		System.out.println("등록된 VO : " + forum);
		
	}
    
}