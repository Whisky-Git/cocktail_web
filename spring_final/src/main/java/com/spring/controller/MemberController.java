package com.spring.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.model.MemberInforVO;
import com.spring.model.MemberVO;
import com.spring.service.MemberInforService;
import com.spring.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// memberService 클래스가 controller에 자동 주입되게 선언
	@Autowired
	private MemberService memberservice;

	@Autowired
	private MemberInforService memberinfoservice;
	
	
	
	// mail sender 의존성 주입
	@Autowired
	private JavaMailSender mailSender;
	
	//비밀번호 보안성 강화
	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	// 회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void joinGET() {

		logger.info("회원가입 페이지 진입");

	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member, MemberInforVO info) throws Exception {

		/*  2022-09-12 프로젝트 [8]
		 * logger.info("join 진입");
		 * 
		 * // 회원가입 서비스 실행 memberservice.memberJoin(member);
		 * 
		 * logger.info("join Service 성공");
		 */
		
		String rawPw ="";				//encoding before password
		String encodePw ="";			//encoding after password
		
		rawPw = member.getMemberPw();
		encodePw = pwEncoder.encode(rawPw);	
		member.setMemberPw(encodePw);	//인코딩된 비밀번호 member객체 다시 저장
		

		/* 회원가입 쿼리 진행 */
		memberservice.memberJoin(member);
<<<<<<< HEAD
		memberinfoservice.useInfo(info);
=======
		
>>>>>>> refs/remotes/origin/이종수
		
		return "redirect:/main";
	}

	// 로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {

		logger.info("로그인 페이지 진입");

	}

	// 아이디 중복 검사
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception {

		System.out.println("memberIdChk() 진입");

		int result = memberservice.idCheck(memberId);

		System.out.println("결과값 = " + result);

		if (result != 0) {

			return "fail"; // 중복 아이디가 존재

		} else {

			return "success"; // 중복 아이디 x

		}

	} // memberIdChkPOST() 종료

	/* 이메일 인증 */
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception {

		/* 뷰(View)로부터 넘어온 데이터 확인 */
		System.out.println("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + email);

		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;

		System.out.println("인증번호" + checkNum);

		/* 이메일 보내기 */
		String setFrom = "0j11293@gmail.com"; //이름 설정
		String toMail = email;
		String title = "회원가입 인증 이메일 입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다." + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";

		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String num = Integer.toString(checkNum);
		
		return num;

	}
	
	///////////////////////////		로그인		////////////////////////////////////
<<<<<<< HEAD

    @RequestMapping(value="login.do", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr,MemberInforVO info) throws Exception{
        
        
        HttpSession session = request.getSession();
        String rawPw ="";
        String encodePw = "";
        
        MemberVO lvo = memberservice.memberLogin(member); //제출한 아이디와 일치하는 아이디 확인
        MemberInforVO Mlvo = memberinfoservice.usePrint(info);
        if(lvo != null) { // 일치하는 아이디 존재 시
            
            rawPw = member.getMemberPw();		//사용자가 제출한 비밀번호
            encodePw = lvo.getMemberPw();		//DB에 저장한 인코딩된 비밀번호
            
            //비밀번호 일치 여부 판단
            if(true == pwEncoder.matches(rawPw, encodePw)) {		// 아이디가 존재하지 않을 시 (로그인 실패)
            	
            	lvo.setMemberPw("");
            	session.setAttribute("member", lvo);
            	session.setAttribute("info", Mlvo);
            	return "redirect:/main";
            	
            }
            
            else{
            	rttr.addFlashAttribute("result", 0);
                return "redirect:/member/login"; 	
            }
                  
        }
        else				//일치하지 않는 경우
        {
        	   rttr.addFlashAttribute("result", 0);
               return "redirect:/member/login";
        }
        
    }
    
    /* 비동기방식 로그아웃 메소드 */
    @RequestMapping(value="logout.do", method=RequestMethod.POST)
    @ResponseBody
    public void logoutPOST(HttpServletRequest request)throws Exception{
    	
    	System.out.println("비동기 로그아웃 메소드 진입");
    	
    	HttpSession session = request.getSession();
    	
    	session.invalidate();
    }
    
    
    /* 메인페이지 로그아웃 */
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        
    	logger.info("logoutMainGET 메소드 진입");
    	
    	HttpSession session = request.getSession();
    	
    	session.invalidate();
    	
    	return "redirect:/main";
=======
    @RequestMapping(value="login.do", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
        
        
        HttpSession session = request.getSession();
        String rawPw ="";
        String encodePw = "";
        
        MemberVO lvo = memberservice.memberLogin(member); //제출한 아이디와 일치하는 아이디 확인
        
        if(lvo != null) { // 일치하는 아이디 존재 시
            
            rawPw = member.getMemberPw();		//사용자가 제출한 비밀번호
            encodePw = lvo.getMemberPw();		//DB에 저장한 인코딩된 비밀번호
            
            //비밀번호 일치 여부 판단
            if(true == pwEncoder.matches(rawPw, encodePw)) {		// 아이디가 존재하지 않을 시 (로그인 실패)
            	
            	lvo.setMemberPw("");
            	session.setAttribute("member", lvo);
            	return "redirect:/main";
            	
            }
            
            else{
            	rttr.addFlashAttribute("result", 0);
                return "redirect:/member/login"; 	
            }
                  
        }
        else				//일치하지 않는 경우
        {
        	   rttr.addFlashAttribute("result", 0);
               return "redirect:/member/login";
        }
        
    }
    
    /* 메인페이지 로그아웃 */
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        
    	logger.info("logoutMainGET 메소드 진입");
    	
    	HttpSession session = request.getSession();
    	
    	session.invalidate();
    	
    	return "redirect:/main";
    }
    
    /* 비동기방식 로그아웃 메소드 */
    @RequestMapping(value="logout.do", method=RequestMethod.POST)
    @ResponseBody
    public void logoutPOST(HttpServletRequest request)throws Exception{
    	
    	System.out.println("비동기 로그아웃 메소드 진입");
    	
    	HttpSession session = request.getSession();
    	
    	session.invalidate();
>>>>>>> refs/remotes/origin/이종수
    }
    
}
