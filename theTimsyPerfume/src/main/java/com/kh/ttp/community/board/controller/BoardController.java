package com.kh.ttp.community.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
		String boardCtgyName = boardService.selectCtgyName(boardCtgy);
		
		mv.addObject("list", list).
		addObject("boardCtgyName", boardCtgyName).
		addObject("boardCtgyCode", boardCtgy).
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
			addObject("boardCtgyCode", boardCtgy).
			setViewName("community/boardWrite");
		} else {
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	@PostMapping("boardWrite.do")
	public ModelAndView boardWrite(BoardVO bo, ModelAndView mv) {
		bo.setBoardTitle(bo.getBoardTitle().replace("<", "&lt;"));
		bo.setBoardTitle(bo.getBoardTitle().replace(">", "&gt;"));
		bo.setBoardContent(bo.getBoardContent().replace("<", "&lt;"));
		bo.setBoardContent(bo.getBoardContent().replace(">", "&gt;"));
		if(boardService.insertBoard(bo)>0) {
			mv.setViewName("redirect:board?boardCtgy="+bo.getBoardCtgyCode());
		} else {
			mv.addObject("alertMsg", "게시물 작성 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@GetMapping("boardUpdate")
	public ModelAndView updateBoardForm(int boardNo, ModelAndView mv) {
		BoardVO board = boardService.selectBoard(boardNo);
		mv.addObject("board",board).
		setViewName("community/boardUpdate");
		return mv;
	}
	@PostMapping("boardUpdate.do")
	public ModelAndView updateBoard(BoardVO bo, ModelAndView mv) {
		bo.setBoardTitle(bo.getBoardTitle().replace("<", "&lt;"));
		bo.setBoardTitle(bo.getBoardTitle().replace(">", "&gt;"));
		bo.setBoardContent(bo.getBoardContent().replace("<", "&lt;"));
		bo.setBoardContent(bo.getBoardContent().replace(">", "&gt;"));
		if(boardService.updateBoard(bo)>0) {
			mv.setViewName("redirect:boardDetail?boardNo="+bo.getBoardNo());
		} else {
			mv.addObject("alertMsg", "게시물 작성 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@GetMapping("boardDelete")
	public ModelAndView deleteBoard(int boardNo, String boardCtgy, ModelAndView mv) {
		if(boardService.deleteBoard(boardNo)>0) {
			mv.setViewName("redirect:board?boardCtgy="+boardCtgy);
		} else {
			mv.addObject("alertMsg", "게시물 삭제 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
}
