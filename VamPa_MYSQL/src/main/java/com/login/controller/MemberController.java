package com.login.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vam.model.MemberVO;
import com.vam.service.MemberService;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// memberService Ŭ������ controller�� �ڵ� ���Եǰ� ����
	@Autowired
	private MemberService memberservice;

	// mail sender ������ ����
	@Autowired
	private JavaMailSender mailSender;

	// ȸ������ ������ �̵�
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {

		logger.info("ȸ������ ������ ����");

	}

	// ȸ������
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception {

		logger.info("join ����");

		// ȸ������ ���� ����
		memberservice.memberJoin(member);

		logger.info("join Service ����");

		return "redirect:/main";
	}

	// �α��� ������ �̵�
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {

		logger.info("�α��� ������ ����");

	}

	// ���̵� �ߺ� �˻�
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception {

		logger.info("memberIdChk() ����");

		int result = memberservice.idCheck(memberId);

		logger.info("����� = " + result);

		if (result != 0) {

			return "fail"; // �ߺ� ���̵� ����

		} else {

			return "success"; // �ߺ� ���̵� x

		}

	} // memberIdChkPOST() ����

	/* �̸��� ���� */
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception{

		/* ��(View)�κ��� �Ѿ�� ������ Ȯ�� */
		logger.info("�̸��� ������ ���� Ȯ��");
		logger.info("�̸���Ȯ�� : " + email);

		/* ������ȣ(����) ���� */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("������ȣ " + checkNum);

		/* �̸��� ������ */
		String setFrom = "whdtn2730@naver.com";
		String toMail = email;
		String title = "ȸ������ ���� �̸��� �Դϴ�.";
		String content = "Ȩ�������� �湮���ּż� �����մϴ�." + "<br><br>" + "���� ��ȣ�� " + checkNum + "�Դϴ�." + "<br>"
				+ "�ش� ������ȣ�� ������ȣ Ȯ�ζ��� �����Ͽ� �ּ���.";

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
}