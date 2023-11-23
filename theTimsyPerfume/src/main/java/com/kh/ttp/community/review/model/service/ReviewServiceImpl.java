package com.kh.ttp.community.review.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.common.model.vo.RecommendVO;
import com.kh.ttp.community.review.model.dao.ReviewDAO;
import com.kh.ttp.community.review.model.vo.ReviewVO;

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
	public ReviewVO selectReviewDetail(int reviewNo) {
		return reviewDao.selectReviewDetail(sqlSession, reviewNo);
	}
	@Override
	public ArrayList<String> selectReviewImage(int reviewNo) {
		return reviewDao.selectReviewImage(sqlSession, reviewNo);
	}
	
	@Override
	public String selectRecommend(RecommendVO rc) {
		return reviewDao.selectRecommend(sqlSession, rc);
	}
	@Override
	public int reviewRecommend(RecommendVO rc) {
		int result = reviewDao.updateRecommend(sqlSession, rc);
		if(result==0) {
			result = reviewDao.insertRecommend(sqlSession, rc);
		}
		return result;
	}
	@Override
	public RecommendVO countRecommend(int contentNo) {
		return reviewDao.countRecommend(sqlSession, contentNo);
	}
}
