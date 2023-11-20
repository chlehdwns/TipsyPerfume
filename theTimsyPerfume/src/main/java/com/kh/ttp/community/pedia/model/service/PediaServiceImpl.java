package com.kh.ttp.community.pedia.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.community.pedia.model.dao.PediaDAO;
import com.kh.ttp.product.model.vo.ProductVO;

@Service
public class PediaServiceImpl implements PediaService {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	PediaDAO pediaDao;
	
	@Override
	public ArrayList<ProductVO> selectPediaList(String pdtCteg) {
		return pediaDao.selectPediaList(sqlSession, pdtCteg);
	}

	@Override
	public ProductVO selectPediaInfo(int pdtNo) {
		return pediaDao.selectPediaInfo(sqlSession, pdtNo);
	}

}
