package com.kh.ttp.community.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.ttp.community.board.model.service.BoardService;
import com.kh.ttp.community.model.vo.RecommendVO;

@Controller
public class AjaxBoardController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping(value = "boardRecommend", produces = "text/html; charset=UTF-8")
	@ResponseBody
	public String ajaxReviewRecommend(RecommendVO rc) {
		
		String msg="";
		String flag = boardService.selectRecommend(rc);
		if(rc.getLikeFlag().equals("L")) {
			if(flag!=null && flag.equals("L")) {
				msg="이미 추천한 게시글 입니다.";
			} else {
				if(boardService.boardRecommend(rc)>0) {
					msg="게시글을 추천 했습니다.";
				} else {
					msg="Error!";
				}
			}
		} else {
			if(flag!=null && flag.equals("D")) {
				msg="이미 비추천한 게시글 입니다.";
			} else {
				if(boardService.boardRecommend(rc)>0) {
					msg="게시글을 비추천 했습니다.";
				} else {
					msg="Error!";
				}
			}
		}
		return msg;
	}
	@GetMapping(value = "loadBoardRecommend", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String ajaxCountRecommend(int contentNo) {
		return new Gson().toJson(boardService.countRecommend(contentNo));
	}
}
