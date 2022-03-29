package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.HomeDAO;
import edu.study.vo.BoardVO;
import edu.study.vo.HomeSearchVO;
import edu.study.vo.HomeStoryVO;
import edu.study.vo.MemberVO;


@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeDAO homeDao;

	@Override
	public List<HomeStoryVO> searchStory(HomeSearchVO vo) throws Exception {
		
		List<HomeStoryVO> list = homeDao.searchStory(vo);
		
		return list;
	
	}
	
}
