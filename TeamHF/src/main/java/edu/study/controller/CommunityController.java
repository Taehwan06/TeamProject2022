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
@RequestMapping(value="/community")
@Controller
public class CommunityController {
	
	@Autowired
	private BoardService boardService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/home_insert.do", method = RequestMethod.GET)
	public String home_insert(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/home_insert";
	}
	
	@RequestMapping(value = "/home_modify.do", method = RequestMethod.GET)
	public String home_modify(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/home_modify";
	}
	
	@RequestMapping(value = "/home_story.do", method = RequestMethod.GET)
	public String home_story(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/home_story";
	}
	
	@RequestMapping(value = "/home_list.do", method = RequestMethod.GET)
	public String home_list(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/home_list";
	}
	
	@RequestMapping(value = "/home_view.do", method = RequestMethod.GET)
	public String home_view(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/home_view";
	}
	
	@RequestMapping(value = "/following.do", method = RequestMethod.GET)
	public String following(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/following";
	}
	
	@RequestMapping(value = "/scrap.do", method = RequestMethod.GET)
	public String scrap(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/scrap";
	}
	
	@RequestMapping(value = "/qna.do", method = RequestMethod.GET)
	public String qna(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/qna";
	}
	
	@RequestMapping(value = "/qna_insert.do", method = RequestMethod.GET)
	public String qna_insert(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/qna_insert";
	}
	
	@RequestMapping(value = "/qna_modify.do", method = RequestMethod.GET)
	public String qna_modify(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "community/qna_modify";
	}
	
	
}
