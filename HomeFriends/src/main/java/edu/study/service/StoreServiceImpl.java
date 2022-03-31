package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.StoreDAO;
import edu.study.vo.StoreVO;
import edu.study.vo.SearchVO;


@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreDAO StoreDao;
	
	@Override
	public List<StoreVO> list(SearchVO vo) throws Exception {
		
		List<StoreVO> list = StoreDao.list(vo);
		
		return list;
	}

	@Override
	public StoreVO detail(int spidx) throws Exception {
		
		return StoreDao.detail(spidx);
	}

	@Override
	public int update(StoreVO vo) throws Exception {
		return StoreDao.update(vo);
	}

	@Override
	public int delete(int spidx) throws Exception {
		return StoreDao.delete(spidx);
	}

	@Override
	public int insert(StoreVO vo) throws Exception {
		return StoreDao.insert(vo);
	}

	
	

}