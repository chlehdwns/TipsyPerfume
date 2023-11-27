package com.kh.ttp.community.pedia.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.community.pedia.model.dao.PediaDAO;
import com.kh.ttp.community.pedia.model.vo.PediaVO;

@Service
public class PediaServiceImpl implements PediaService {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	PediaDAO pediaDao;
	
	@Override
	public ArrayList<PediaVO> selectPediaList(HashMap map) {
		return pediaDao.selectPediaList(sqlSession, map);
	}

	@Override
	public PediaVO selectPediaInfo(HashMap map) {
		return pediaDao.selectPediaInfo(sqlSession, map);
	}

}
