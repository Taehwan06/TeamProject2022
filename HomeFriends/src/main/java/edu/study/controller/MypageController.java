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
@RequestMapping(value="/mypage")
@Controller
public class MypageController {
	
	@Autowired
	private BoardService boardService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/member_modify.do", method = RequestMethod.GET)
	public String member_modify(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/member_modify";
	}
	
	@RequestMapping(value = "/member_delete.do", method = RequestMethod.GET)
	public String member_delete(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/member_delete";
	}
	
	@RequestMapping(value = "/order_list.do", method = RequestMethod.GET)
	public String order_list(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/order_list";
	}
	
	@RequestMapping(value = "/payment.do", method = RequestMethod.GET)
	public String payment(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/payment";
	}
	
	@RequestMapping(value = "/order_success.do", method = RequestMethod.GET)
	public String order_success(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/order_success";
	}
	
	@RequestMapping(value = "/order_fail.do", method = RequestMethod.GET)
	public String order_fail(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/order_fail";
	}
	
	@RequestMapping(value = "/basket.do", method = RequestMethod.GET)
	public String basket(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/basket";
	}
	
	@RequestMapping(value = "/review_list.do", method = RequestMethod.GET)
	public String review_list(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/review_list";
	}
	
	@RequestMapping(value = "/review_insert.do", method = RequestMethod.GET)
	public String review_insert(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/review_insert";
	}
	
	@RequestMapping(value = "/delivery.do", method = RequestMethod.GET)
	public String delivery(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/delivery";
	}
	
	@RequestMapping(value = "/mileage.do", method = RequestMethod.GET)
	public String mileage(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/mileage";
	}
	
	@RequestMapping(value = "/address_list.do", method = RequestMethod.GET)
	public String address_list(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/address_list";
	}
	
	@RequestMapping(value = "/address_insert.do", method = RequestMethod.GET)
	public String address_insert(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/address_insert";
	}
	
	@RequestMapping(value = "/address_modify.do", method = RequestMethod.GET)
	public String address_modify(Locale locale, Model model, SearchVO vo) throws Exception {
		
		return "mypage/address_modify";
	}
	
	
}
