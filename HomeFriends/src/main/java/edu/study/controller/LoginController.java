package edu.study.controller;

import java.util.Locale;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.service.MemberService;
import edu.study.util.RandomNumber;
import edu.study.util.RandomPass;
import edu.study.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */

@RequestMapping(value="/login")
@Controller
public class LoginController {
	
	@Autowired	
	private JavaMailSender mailSender;
	@Autowired
	private MemberService memberService;
	private RandomNumber randomNumber;
	private RandomPass randomPass;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model) throws Exception {
		
		return "login/join";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(Locale locale, Model model, MemberVO vo) throws Exception {
		
		int result = memberService.insert(vo);
		
		model.addAttribute("vo", vo);
		
		return "login/join_result";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model) throws Exception {
		
		return "login/login";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(Locale locale, Model model, HttpServletRequest req, MemberVO vo) throws Exception {
		
		HttpSession session = req.getSession();
		MemberVO loginUser = memberService.login(vo);
		
		if(loginUser == null) {
			session.setAttribute("loginUser", null);
			return "login/login_fail";
		}else {
			session.setAttribute("loginUser", loginUser);
			return "redirect: /controller/";
		}
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpSession session) throws Exception {
		
		session.invalidate();
		
		return "redirect: /controller/";
	}
	
	@RequestMapping(value = "/join_result.do", method = RequestMethod.GET)
	public String join_result(Locale locale, Model model) throws Exception {
		
		return "login/join_result";
	}
	
	@RequestMapping(value = "/find_id.do", method = RequestMethod.GET)
	public String find_id(Locale locale, Model model) throws Exception {
		
		return "login/find_id";
	}
	
	@RequestMapping(value = "/find_id.do", method = RequestMethod.POST)
	public String find_id(Locale locale, Model model, MemberVO vo) throws Exception {
		
		MemberVO user = memberService.findId(vo);
		
		if(user == null) {
			return "login/find_id_result_none";
		}else {
			model.addAttribute("user", user);
			
			return "login/find_id_result";
		}			
	}
	
	@RequestMapping(value = "/find_id_result.do", method = RequestMethod.GET)
	public String find_id_result(Locale locale, Model model) throws Exception {
		
		return "login/find_id_result";
	}
	
	@RequestMapping(value = "/find_pwd_result.do", method = RequestMethod.GET)
	public String find_pwd_result(Locale locale, Model model) throws Exception {
		
		return "login/find_pwd_result";
	}
	
	@RequestMapping(value = "/find_pwd.do", method = RequestMethod.GET)
	public String find_pwd(Locale locale, Model model) throws Exception {
		
		return "login/find_pwd";
	}
	
	@RequestMapping(value = "/find_pwd.do", method = RequestMethod.POST)
	public String find_pwd(Locale locale, Model model, MemberVO vo, HttpServletRequest request) throws Exception {
		
		MemberVO user = memberService.findPwd(vo);
		
		if(user == null) {
			return "login/find_pwd_result_none";
		}else {	
			String ranPass = randomPass.random();
			user.setPass(ranPass);
			
			int result = memberService.updateTempPwd(user);
			model.addAttribute("user", user);
			
			if(result>0) {
				
				String setfrom = "testmaillth@gmail.com";
				String tomail = user.getId(); // 받는 사람 이메일
				String title = "[홈 프렌즈] 임시 비밀번호 입니다."; // 제목
				String content = "회원님의 임시 비밀번호는 "+ranPass+" 입니다."; // 내용

				try {
					MimeMessage message = mailSender.createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(message,
							true, "UTF-8");

					messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
					messageHelper.setTo(tomail); // 받는사람 이메일
					messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
					messageHelper.setText(content); // 메일 내용

					mailSender.send(message);
					
					return "login/find_pwd_result";
					
				} catch (Exception e) {
					System.out.println(e);
				}
				
				return "login/find_pwd_result_none";
				
			}else {
				return "login/find_pwd_result_fail";
			}
		}
	}
	
		
	
}
