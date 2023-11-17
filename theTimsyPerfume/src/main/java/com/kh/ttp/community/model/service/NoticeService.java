package com.kh.ttp.community.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import com.kh.ttp.community.model.vo.NoticeVO;

public interface NoticeService {
	public int countNoticeList();
	public ArrayList<NoticeVO> selectNoticeList(RowBounds rowBounds);
	public NoticeVO selectNoticeDetail(int noticeNo);
	public int insertNotice(NoticeVO no);
}
