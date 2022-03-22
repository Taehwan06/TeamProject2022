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
@RequestMapping(value="/store")
@Controller
public class StoreController {
	
	@Autowired
	private BoardService boardService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/store.do", method = RequestMethod.GET)
	public String store(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/store";
	}
	
	@RequestMapping(value = "/store_insert.do", method = RequestMethod.GET)
	public String store_insert(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/store_insert";
	}
	
	@RequestMapping(value = "/store_modify.do", method = RequestMethod.GET)
	public String store_modify(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/store_modify";
	}
	
	@RequestMapping(value = "/store_list.do", method = RequestMethod.GET)
	public String store_list(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/store_list";
	}
	
	@RequestMapping(value = "/store_view.do", method = RequestMethod.GET)
	public String store_view(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/store_view";
	}
	
	@RequestMapping(value = "/category.do", method = RequestMethod.GET)
	public String category(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/category";
	}
	
	@RequestMapping(value = "/best.do", method = RequestMethod.GET)
	public String best(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/best";
	}
	
	@RequestMapping(value = "/hotdeal.do", method = RequestMethod.GET)
	public String hotdeal(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/hotdeal";
	}
	
	@RequestMapping(value = "/recommend.do", method = RequestMethod.GET)
	public String recommend(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/recommend";
	}
	
	@RequestMapping(value = "/likey.do", method = RequestMethod.GET)
	public String likey(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/likey";
	}
	
	@RequestMapping(value = "/event.do", method = RequestMethod.GET)
	public String event(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/event";
	}
	
	@RequestMapping(value = "/event_view.do", method = RequestMethod.GET)
	public String event_view(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "store/event_view";
	}
	
	
}
