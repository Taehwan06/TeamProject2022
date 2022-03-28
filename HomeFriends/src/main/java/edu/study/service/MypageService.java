package edu.study.service;

import java.util.List;

import edu.study.vo.MemberVO;
import edu.study.vo.SearchVO;

public interface MypageService {

	List<MemberVO> list(SearchVO vo) throws Exception;
	MemberVO detail(int midx) throws Exception;
	int update(MemberVO vo) throws Exception;
	int delete(int midx) throws Exception;
	int insert(MemberVO vo) throws Exception;
	
}
