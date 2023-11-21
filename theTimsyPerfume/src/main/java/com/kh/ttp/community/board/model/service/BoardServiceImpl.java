package com.kh.ttp.community.board.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.board.model.dao.BoardDAO;
import com.kh.ttp.community.board.model.vo.BoardVO;

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
	public ArrayList<BoardVO> seletcBoardList(String boardCtgy, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return boardDao.seletcBoardList(sqlSession, boardCtgy, rowBounds);
	}

}
