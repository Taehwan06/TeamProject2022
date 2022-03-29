package edu.study.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.MemberDAO;
import edu.study.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDao;
	
	@Override
	public int insert(MemberVO vo) throws Exception {
		return memberDao.insert(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return memberDao.login(vo);
	}

	@Override
	public MemberVO findId(MemberVO vo) throws Exception {
		return memberDao.findId(vo);
	}

	@Override
	public MemberVO findPwd(MemberVO vo) throws Exception {
		return memberDao.findPwd(vo);
	}

	@Override
	public int updateTempPwd(MemberVO vo) throws Exception {
		return memberDao.updateTempPwd(vo);
	}

	
	

}
