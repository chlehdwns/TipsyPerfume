package com.kh.ttp.community.review.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.community.review.model.vo.CommentVO;
import com.kh.ttp.community.review.model.vo.ReviewVO;

@Repository
public class ReviewDAO {

	public int countReviewList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("reviewMapper.countReviewList");
	}
	
	public ArrayList<ReviewVO> seletcReviewList(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return (ArrayList)sqlSession.selectList("reviewMapper.seletcReviewList", null, rowBounds);
	}

	public ReviewVO selectReviewDetail(SqlSessionTemplate sqlSession, int reviewNo) {
		return sqlSession.selectOne("reviewMapper.selectReviewDetail", reviewNo);
	}
	
	public ArrayList<String> selectReviewImage(SqlSessionTemplate sqlSession, int reviewNo) {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectReviewImage", reviewNo);
	}

	public ArrayList<CommentVO> selectCommentList(SqlSessionTemplate sqlSession, HashMap<String, Integer> map) {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectCommentList", map);
	}

	public int increaseCommentIndex(SqlSessionTemplate sqlSession, int commentGroup) {
		return sqlSession.update("reviewMapper.increaseCommentIndex", commentGroup);
	}
	
	public int insertComment(SqlSessionTemplate sqlSession, CommentVO comment) {
		return sqlSession.insert("reviewMapper.insertComment", comment);
	}

	public int selectRecommend(SqlSessionTemplate sqlSession, HashMap map) {
		return sqlSession.selectOne("reviewMapper.selectRecommend", map);
	}

	public int updateRecommend(SqlSessionTemplate sqlSession, HashMap map) {
		return sqlSession.update("reviewMapper.updateRecommend", map);
	}

	public int insertRecommend(SqlSessionTemplate sqlSession, HashMap map) {
		return sqlSession.insert("reviewMpper.insertRecommend", map);
	}


}
