package edu.study.service;

import java.util.List;

import edu.study.vo.HomeSearchVO;
import edu.study.vo.HomeStoryVO;

public interface HomeService {
	
	List<HomeStoryVO> searchStory(HomeSearchVO vo) throws Exception;
	
}
