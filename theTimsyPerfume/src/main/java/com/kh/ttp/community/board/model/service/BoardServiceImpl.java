package com.kh.ttp.community.board.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.board.model.dao.BoardDAO;
import com.kh.ttp.community.board.model.vo.BoardVO;
import com.kh.ttp.community.model.vo.RecommendVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	@Autowired
	BoardDAO boardDao;
	
	@Override
	public int countBoardList(String boardCtgy) {
		return boardDao.countBoardList(sqlSession, boardCtgy);
	}

	@Override
	public ArrayList<BoardVO> selectBoardList(String boardCtgy, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return boardDao.selectBoardList(sqlSession, boardCtgy, rowBounds);
	}
	
	@Override
	public int increaseBoardCount(int boardNo) {
		return boardDao.increaseBoardCount(sqlSession, boardNo);
	}

	@Override
	public BoardVO selectBoard(int boardNo) {
		return boardDao.selectBoard(sqlSession, boardNo);
	}

	@Override
	public String selectRecommend(RecommendVO rc) {
		return boardDao.selectRecommend(sqlSession, rc);
	}

	@Override
	public int boardRecommend(RecommendVO rc) {
		int result = boardDao.updateRecommend(sqlSession, rc);
		if(result==0) {
			result = boardDao.insertRecommend(sqlSession, rc);
		}
		return result;
	}

	@Override
	public RecommendVO countRecommend(int contentNo) {
		return boardDao.countRecommend(sqlSession, contentNo);
	}

	@Override
	public String selectCtgyName(String boardCtgy) {
		return boardDao.selectCtgyName(sqlSession, boardCtgy);
	}

	@Override
	public int insertBoard(BoardVO bo) {
		return boardDao.insertBoard(sqlSession, bo);
	}


}
