package edu.study.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;

import edu.study.service.Community_BoardService;
import edu.study.service.HomeService;
import edu.study.service.StoreService;
import edu.study.vo.Community_BoardVO;
import edu.study.vo.HomeSearchVO;
import edu.study.vo.HomeStoreVO;
import edu.study.vo.HomeStoryVO;
import edu.study.vo.NaverLoginVO;
import edu.study.vo.SearchVO;
import edu.study.vo.StoreVO;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeService;
	@Autowired
	private Community_BoardService Community_boardService;
	@Autowired
	private StoreService storeService;
	
	private String apiResult = null;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, SearchVO vo, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession(); 
	 	session.setAttribute("nowUri", null);
		
		int deleteResult = homeService.deleteSearchList();
		
		List<HomeSearchVO> searchList = homeService.listSearchList();
		
		model.addAttribute("searchList", searchList);
		
		List<Community_BoardVO> list = Community_boardService.list4(vo);
	      
	    model.addAttribute("list",list);
	    
	    SearchVO searchvo = new SearchVO();
	    searchvo.setReview_cnt("yes");
	    searchvo.setPage("limit");
	    List<StoreVO> storeList = storeService.list(searchvo);
	    
	    model.addAttribute("storeList",storeList);
				
		return "home";
	}
	
	@RequestMapping(value = "/search.do", method = RequestMethod.GET)
	public String search(Locale locale, Model model, HomeSearchVO vo, HttpServletRequest request) throws Exception {

		String nowUri = request.getRequestURI();
		
		HttpSession session = request.getSession();
		session.setAttribute("nowUri", null);
		
		int insertResult = homeService.insertSearchList(vo);
		int deleteResult = homeService.deleteSearchList();
		
		String searchValue = vo.getSearch_value();
		
		String[] searchValueAry = searchValue.split(" ");
		
		vo.setSearchValueAry(searchValueAry);
		
		List<HomeSearchVO> searchList = homeService.listSearchList();
		
		model.addAttribute("searchList", searchList);
		
		if(vo.getSearch_value() != null) {
			String searchVal = vo.getSearch_value();
			String[] splitStr = searchVal.split(",");
			String searchValueSplit = splitStr[0];
			vo.setSearch_value(searchValueSplit);
		}		
		
		List<HomeStoryVO> storyList = homeService.searchStory(vo);
		
		model.addAttribute("storyList", storyList);
		
		List<HomeStoreVO> storeList = homeService.searchStore(vo);
		
		model.addAttribute("storeList", storeList);
		
		int cnt = storyList.size() + storeList.size();
		vo.setCnt(cnt);
		model.addAttribute("searchvo", vo);
		
		if(storyList.size() > 0 || storeList.size() > 0) {
			return "search_result";
		}else {
			SearchVO searchvo = new SearchVO();
		    searchvo.setReview_cnt("yes");
		    searchvo.setPage("limit");
		    
		    List<StoreVO> storeListN = storeService.list(searchvo);
		    
		    model.addAttribute("storeList",storeListN);
			
			return "search_result_none";
		}
	}
	
	@RequestMapping(value = "/recentView.do", method = RequestMethod.GET)
	public String recentView(Locale locale, Model model, HttpServletResponse response, HttpServletRequest request, HomeStoreVO vo) throws Exception {
		
		String nowUri = request.getRequestURI();
		
		HttpSession session = request.getSession();
		session.setAttribute("nowUri", nowUri);
		
		
		int deleteResult = homeService.deleteSearchList();
		
		List<HomeSearchVO> searchList = homeService.listSearchList();
		
		model.addAttribute("searchList", searchList);		
			
		Cookie[] myCookies = request.getCookies();
		String recentView = null;

	    for(int i = 0; i < myCookies.length; i++) {
	    	if(myCookies[i].getName().equals("recentView")) {
	    		recentView = myCookies[i].getValue();
	    	}
	    }
	    
	    if(recentView != null) {
		    String[] spidxAryDup = recentView.split("&"); 
		    int size = spidxAryDup.length;
		    
			String[] reverseSpidxAry = new String[size];
			
			for (int i = size - 1, j = 0; i >= 0; i--, j++) {
				reverseSpidxAry[j] = spidxAryDup[i];
			}	    
			
			LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>(Arrays.asList(reverseSpidxAry));
			
			String[] spidxAry = linkedHashSet.toArray(new String[0]);
			
			List<HomeStoreVO> recentViewList = new ArrayList<HomeStoreVO>();
			
			size = spidxAry.length;
			
			if(size > 12) {
				for(int i=0; i<12; i++) {
					vo.setSpidx(Integer.parseInt(spidxAry[i]));
					HomeStoreVO recentvo = homeService.recentViewStore(vo);
					recentViewList.add(recentvo);
				}
			}else {
				for(int i=0; i<size; i++) {
					vo.setSpidx(Integer.parseInt(spidxAry[i]));
					HomeStoreVO recentvo = homeService.recentViewStore(vo);
					recentViewList.add(recentvo);
				}
			}
			
			model.addAttribute("recentViewList", recentViewList);
			
			return "recentView";
	    }else {
	    	SearchVO searchvo = new SearchVO();
	 	    searchvo.setReview_cnt("yes");
	 	    searchvo.setPage("limit");
	 	    List<StoreVO> storeList = storeService.list(searchvo);
	 	    
	 	    model.addAttribute("storeList",storeList);
	 	    
	    	return "recentView_none";
	    }
	}
	
}
