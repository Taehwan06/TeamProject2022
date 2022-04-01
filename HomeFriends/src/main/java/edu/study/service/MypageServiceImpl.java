package edu.study.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.MypageDAO;
import edu.study.vo.MemberVO;
import edu.study.vo.SearchVO;
import edu.study.vo.OrderListVO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAO mypageDao;

	
	 @Override
	 public List<MemberVO> list(SearchVO vo) throws Exception {
	 
	 List<MemberVO> list = mypageDao.list(vo);
	 
	 return list; 
	 
	 }
	 

	@Override
	public MemberVO detail(int midx) throws Exception {

		return mypageDao.detail(midx);
	}

	@Override
	public int update(MemberVO vo) throws Exception {
		int result = mypageDao.update(vo);
		return result;
	}

	@Override
	public int delete(MemberVO vo) throws Exception {
		int result = mypageDao.delete(vo);
		return result;
	}

	@Override
	public int insert(MemberVO vo) throws Exception {
		return mypageDao.insert(vo);
	}

	@Override
	public List<OrderListVO> orderList(OrderListVO vo) throws Exception {

		List<OrderListVO> result = mypageDao.orderList(vo); 
		
		return result;	
		
	}
	
	
	@Override
	public int count(OrderListVO vo) throws Exception{
		int result = mypageDao.count(vo);
		return result;
	}
	
	

}