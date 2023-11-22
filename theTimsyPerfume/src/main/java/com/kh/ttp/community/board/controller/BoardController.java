package com.kh.ttp.community.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.common.template.Pagination;
import com.kh.ttp.community.board.model.service.BoardService;
import com.kh.ttp.community.board.model.vo.BoardVO;
import com.kh.ttp.community.notice.model.vo.NoticeVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("board")
	public ModelAndView boardList(@RequestParam(value = "page", defaultValue = "1")int page, String boardCtgy, ModelAndView mv) {
		int listCount = boardService.countBoardList(boardCtgy);
		PageInfo pi = Pagination.getPageInfo(listCount, page, 9, 5);
		ArrayList<BoardVO> list = boardService.selectBoardList(boardCtgy, pi);
		
		mv.addObject("list", list).
		addObject("pi", pi).
		setViewName("community/board");
		return mv;
	}
	
	@GetMapping("boardDetail")
	public ModelAndView boardDetail(int boardNo, ModelAndView mv) {
		if(boardService.increaseBoardCount(boardNo)>0) {
			BoardVO board = boardService.selectBoard(boardNo);
			mv.addObject("board",board).
			setViewName("community/boardDetail");
		} else {
			mv.addObject("alertMsg", "조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@GetMapping("boardWrite")
	public ModelAndView boardWriteForm(String boardCtgy, ModelAndView mv) {
		String boardCtgyName = boardService.selectCtgyName(boardCtgy);
		if(boardCtgyName!=null) {
			mv.addObject("boardCtgyName", boardCtgyName).
			setViewName("community/boardWrite");
		} else {
			mv.setViewName("redirect:/");
		}
		return mv;
	}
}
