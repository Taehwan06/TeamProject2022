package edu.study.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/search_result.do", method = RequestMethod.GET)
	public String search_result(Locale locale, Model model) {
		
		
		return "search_result";
	}
	
	@RequestMapping(value = "/search_result_none.do", method = RequestMethod.GET)
	public String search_result_none(Locale locale, Model model) {
		
		
		return "search_result_none";
	}
		
	@RequestMapping(value = "/last_view.do", method = RequestMethod.GET)
	public String last_view(Locale locale, Model model) {
		
		
		return "last_view";
	}
	
}
