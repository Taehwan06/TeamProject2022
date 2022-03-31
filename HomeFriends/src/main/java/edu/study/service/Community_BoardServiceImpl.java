package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.Community_BoardDAO;
import edu.study.vo.Community_BoardVO;
import edu.study.vo.SearchVO;

@Service
public class Community_BoardServiceImpl implements Community_BoardService {
	
	@Autowired
	private Community_BoardDAO Community_boardDao;
	
	@Override
	public List<Community_BoardVO> list(SearchVO vo) throws Exception {
		
		List<Community_BoardVO> list = Community_boardDao.list(vo);
		
		return list;
	}
	
	@Override
	public Community_BoardVO detail(int cbidx) throws Exception{
		return Community_boardDao.detail(cbidx);
	}

	@Override
	public int update(Community_BoardVO vo) throws Exception {
		
		return Community_boardDao.update(vo);
	}

	@Override
	public int delete(int cbidx) throws Exception {

		return Community_boardDao.delete(cbidx);
	}

	@Override
	public int insert(Community_BoardVO vo) throws Exception {
		
		return Community_boardDao.insert(vo);
		
	}

	@Override
	public int getBoardlistCnt(SearchVO vo) throws Exception {
		
		return Community_boardDao.listCnt(vo);
	}
	
	@Override
	public Community_BoardVO getCommunity_Mainimage() throws Exception {
		
		return Community_boardDao.Community_Mainimage();
	}

}
