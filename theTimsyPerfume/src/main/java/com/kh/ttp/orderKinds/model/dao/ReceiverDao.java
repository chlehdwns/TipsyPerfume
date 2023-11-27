package com.kh.ttp.orderKinds.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.orderKinds.model.vo.Receiver;


@Repository
public class ReceiverDao {
	
	
	public int updateEmail(SqlSessionTemplate sqlSession, Receiver receiver) {
		return sqlSession.update("receiverMapper.updateEmail", receiver);
	}
	
	public int ajaxInsertReceiver(SqlSessionTemplate sqlSession, Receiver receiver) {
		return sqlSession.insert("receiverMapper.insertReceiver", receiver);
	}

	public int insertReceiver(SqlSessionTemplate sqlSession, Receiver r) {
		return sqlSession.insert("receiverMapper.insertReceiverf",r);
	}

	public int selectReceiverNo(SqlSessionTemplate sqlSession, Receiver r) {
		return sqlSession.selectOne("receiverMapper.selectReceiverNo",r);
		
	}


}
