package com.kh.ttp.community.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.common.template.Pagination;
import com.kh.ttp.community.model.service.NoticeService;
import com.kh.ttp.community.model.vo.NoticeVO;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("noticeWrite")
	public String noticeWriteForm() {
		return "community/noticeWrite";
	}
	@PostMapping("noticeWrite.do")
	public String noticeWrite(NoticeVO no, MultipartFile thumbnailFile, MultipartFile imgFile, HttpSession session) {
		no.setNoticeThumbnailFile(saveFile(thumbnailFile, session));
		no.setNoticeFile(saveFile(imgFile, session));
		noticeService.insertNotice(no);
		return "redirect:notice";
	}
	
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
	public ModelAndView noticeDetail(int noticeNo, ModelAndView mv) {
		if(noticeService.increaseNoticeCount(noticeNo)>0) {
			NoticeVO notice = noticeService.selectNoticeDetail(noticeNo);
			mv.addObject("notice", notice).
			setViewName("community/noticeDetail");
		} else {
			mv.addObject("alertMsg", "조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile.getOriginalFilename();
		
		String curTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int)(Math.random()*90000+10000);
		String ext =  originName.substring(originName.lastIndexOf("."));
		String changeName = curTime + ranNum + ext;
		String savePath = session.getServletContext().getRealPath("/resources/image/community/notice/");
		
		try {
			upfile.transferTo(new File(savePath+changeName));
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		return "resources/image/community/notice/"+changeName;
	}
}
