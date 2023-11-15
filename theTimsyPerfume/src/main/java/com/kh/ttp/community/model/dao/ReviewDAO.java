package com.kh.ttp.community.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.community.model.vo.CommentVO;
import com.kh.ttp.community.model.vo.ReviewVO;

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

}
