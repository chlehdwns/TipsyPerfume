package com.kh.ttp.community.board.model.service;

import java.util.ArrayList;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.board.model.vo.BoardVO;

public interface BoardService {
	public int countBoardList(String boardCtgy);
	public ArrayList<BoardVO> seletcBoardList(String boardCtgy, PageInfo pi);
}
