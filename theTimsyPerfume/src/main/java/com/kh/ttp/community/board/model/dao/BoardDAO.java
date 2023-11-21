package com.kh.ttp.community.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.community.board.model.vo.BoardVO;

@Repository
public class BoardDAO {

	public int countBoardList(SqlSessionTemplate sqlSession, String boardCtgy) {
		return sqlSession.selectOne("boardMapper.countBoardList", boardCtgy);
	}

	public ArrayList<BoardVO> seletcBoardList(SqlSessionTemplate sqlSession, String boardCtgy, RowBounds rowBounds) {
		return (ArrayList)sqlSession.selectList("boardMapper.seletcBoardList", boardCtgy, rowBounds);
	}

}
