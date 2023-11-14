package com.kh.ttp.community.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.model.dao.ReviewDAO;
import com.kh.ttp.community.model.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int countReviewList() {
		return reviewDao.countReviewList(sqlSession);
	}
	
	@Override
	public ArrayList<ReviewVO> seletcReviewList(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return reviewDao.seletcReviewList(sqlSession, rowBounds);
	}

	@Override
	public ReviewVO selectReview(int reviewNo) {
		return reviewDao.selectReview(sqlSession, reviewNo);
	}

	@Override
	public ArrayList<String> selectReviewImage(int reviewNo) {
		return reviewDao.selectReviewImage(sqlSession, reviewNo);
	}
}
