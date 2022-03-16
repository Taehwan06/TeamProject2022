package edu.study.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.study.service.BoardService;
import edu.study.vo.BoardVO;
import edu.study.vo.SearchVO;

/**
 * Handles requests for the application home page.
 */
@RequestMapping(value="/login")
@Controller
public class LoginController {
	
	@Autowired
	private BoardService boardService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "login/join";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "login/login";
	}
	
	@RequestMapping(value = "/join_result.do", method = RequestMethod.GET)
	public String join_result(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "login/join_result";
	}
	
	@RequestMapping(value = "/find_id.do", method = RequestMethod.GET)
	public String find_id(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "login/find_id";
	}
	
	@RequestMapping(value = "/find_id_result.do", method = RequestMethod.GET)
	public String find_id_result(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "login/find_id_result";
	}
	
	@RequestMapping(value = "/find_pwd_result.do", method = RequestMethod.GET)
	public String find_pwd_result(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "login/find_pwd_result";
	}
	
	@RequestMapping(value = "/find_pwd.do", method = RequestMethod.GET)
	public String find_pwd(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "login/find_pwd";
	}
	
		
	
}
