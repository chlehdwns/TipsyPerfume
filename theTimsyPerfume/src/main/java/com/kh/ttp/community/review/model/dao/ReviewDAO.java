package com.kh.ttp.community.review.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.community.model.vo.CommentVO;
import com.kh.ttp.community.model.vo.RecommendVO;
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

	public String selectRecommend(SqlSessionTemplate sqlSession, RecommendVO rc) {
		return sqlSession.selectOne("reviewMapper.selectRecommend", rc);
	}

	public int updateRecommend(SqlSessionTemplate sqlSession, RecommendVO rc) {
		return sqlSession.update("reviewMapper.updateRecommend", rc);
	}

	public int insertRecommend(SqlSessionTemplate sqlSession, RecommendVO rc) {
		return sqlSession.insert("reviewMapper.insertRecommend", rc);
	}

	public RecommendVO countRecommend(SqlSessionTemplate sqlSession, int contentNo) {
		return sqlSession.selectOne("reviewMapper.countRecommend", contentNo);
	}


}
