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

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("board")
	public ModelAndView boardList(@RequestParam(value = "page", defaultValue = "1")int page, String boardCtgy, ModelAndView mv) {
		System.out.println(page);
		System.out.println(boardCtgy);
		int listCount = boardService.countBoardList(boardCtgy);
		PageInfo pi = Pagination.getPageInfo(listCount, page, 9, 5);
		System.out.println("1");
		ArrayList<BoardVO> list = boardService.seletcBoardList(boardCtgy, pi);
		
		mv.addObject("list", list).
		addObject("pi", pi).
		setViewName("community/board");
		return mv;
	}
	
}
