package com.kh.ttp.community.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.community.model.vo.NoticeVO;

@Repository
public class NoticeDAO {

	public int countNoticeList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.countNoticeList");
	}

	public ArrayList<NoticeVO> selectNoticeList(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return (ArrayList)sqlSession.selectList("noticeMapper.selectNoticeList", null, rowBounds);
	}
}
