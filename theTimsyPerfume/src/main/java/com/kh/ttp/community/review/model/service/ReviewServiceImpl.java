package com.kh.ttp.community.review.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.review.model.dao.ReviewDAO;
import com.kh.ttp.community.review.model.vo.CommentVO;
import com.kh.ttp.community.review.model.vo.ReviewVO;

@Service
@EnableTransactionManagement
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
	public ArrayList<CommentVO> selectCommentList(HashMap<String, Integer> map) {
		return reviewDao.selectCommentList(sqlSession, map);
	}
	@Override
	/*@Transactional*/
	public int insertComment(CommentVO comment) {
		reviewDao.increaseCommentIndex(sqlSession, comment.getCommentGroup());
		return reviewDao.insertComment(sqlSession, comment);
	}
}
