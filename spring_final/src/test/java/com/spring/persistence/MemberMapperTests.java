package com.spring.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.mapper.MemberMapper;
/*import com.spring.model.MemberVO;*/
import com.spring.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private MemberMapper membermapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	/*
	 * //회원가입 쿼리 테스트 메서드
	 * 
	 * @Test public void memberJoin() throws Exception{ MemberVO member = new
	 * MemberVO();
	 * 
	 * member.setMemberId("test_id"); //회원 id member.setMemberPw("test_pw"); //회원
	 * 비밀번호 member.setMemberName("test_name"); //회원 이름
	 * member.setMemberMail("test_mail"); //회원 메일
	 * member.setMemberAddr1("test_add1"); //회원 우편번호
	 * member.setMemberAddr2("test_add2"); //회원 주소
	 * member.setMemberAddr3("test_add3"); //회원 상세주소
	 * 
	 * membermapper.memberJoin(member); //쿼리 메서드 실행
	 * 
	 * }
	 */
	
	/*
	 * // 아이디 중복검사
	 * 
	 * @Test public void memberIdChk() throws Exception{ String id = "admin"; //
	 * 존재하는 아이디 String id2 = "test123"; // 존재하지 않는 아이디 membermapper.idCheck(id);
	 * membermapper.idCheck(id2); }
	 */
	
	/* 로그인 쿼리 mapper 메소드 테스트 */
	@Test
	public void memberLogin() throws Exception{
		
		MemberVO member = new MemberVO();
		
		//올바른 id, pw 입력한 경우
		//member.setMemberId("test1");
		//member.setMemberPw("test1");
		

        /* 올바른 않은 아이디 비번 입력경우 */
        //member.setMemberId("test1123");
        //member.setMemberPw("test1321321");
        
      //  membermapper.memberLogin(member);
       // System.out.println("결과 값 : " + membermapper.memberLogin(member));
		
	}
	
	
}