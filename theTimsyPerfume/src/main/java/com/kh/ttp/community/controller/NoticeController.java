package com.kh.ttp.community.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.common.template.Pagination;
import com.kh.ttp.community.model.service.NoticeService;
import com.kh.ttp.community.model.vo.NoticeVO;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("notice")
	public ModelAndView noticeList(@RequestParam(value = "page", defaultValue = "1")int page, ModelAndView mv) {
		int listCount = noticeService.countNoticeList();
		PageInfo pi = Pagination.getPageInfo(listCount, page, 10, 5);
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		ArrayList<NoticeVO> list = noticeService.selectNoticeList(rowBounds);
		
		mv.addObject("list", list).
		addObject("pi", pi).
		setViewName("community/notice");
		return mv;
	}
	@GetMapping("noticeDetail")
	public String noticeDetail() {
		return "community/notice";
	}
}
