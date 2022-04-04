package edu.study.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import edu.study.service.Community_ReplyService;
import edu.study.vo.Community_ReplyVO;

@RequestMapping(value="/reply")
@Controller
public class ReplyController {
	
	@Autowired
	private Community_ReplyService replyService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @return 
	 * @throws Exception 
	 */	
	
	//댓글 조회
	
	//댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(Community_ReplyVO vo, HttpServletRequest request) throws Exception {
		
		replyService.write(vo);
		      
		return "redirect:/community/home_view.do?cbidx=" + vo.getCbidx();
		
	}
	
	//댓글 삭제
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String postDelete(int cbridx, Model model, Community_ReplyVO vo) throws Exception {
		
		replyService.delete(cbridx);
		
		model.addAttribute("cbridx", cbridx);
		
		return "redirect:/community/home_view.do?cbidx=" + vo.getCbidx();
	}
}
