package com.kh.ttp.community.board.model.service;

import java.util.ArrayList;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.community.board.model.vo.BoardVO;
import com.kh.ttp.community.model.vo.RecommendVO;

public interface BoardService {
	public int countBoardList(String boardCtgy);
	public ArrayList<BoardVO> selectBoardList(String boardCtgy, PageInfo pi);
	
	public int increaseBoardCount(int boardNo);
	public BoardVO selectBoard(int boardNo);
	
	public String selectRecommend(RecommendVO rc);
	public int boardRecommend(RecommendVO rc);
	public RecommendVO countRecommend(int contentNo);
	
	public String selectCtgyName(String boardCtgy);
}
