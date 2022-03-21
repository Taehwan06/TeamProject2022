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
@RequestMapping(value="/management")
@Controller
public class ManagementController {
	
	@Autowired
	private BoardService boardService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/member_list.do", method = RequestMethod.GET)
	public String member_list(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "management/member_list";
	}
	
	@RequestMapping(value = "/report_list.do", method = RequestMethod.GET)
	public String report_list(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "management/report_list";
	}
	
	
}
