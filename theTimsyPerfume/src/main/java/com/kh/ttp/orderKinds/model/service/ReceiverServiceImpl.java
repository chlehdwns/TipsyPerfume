package com.kh.ttp.orderKinds.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.kh.ttp.orderKinds.model.dao.ReceiverDao;
import com.kh.ttp.orderKinds.model.vo.Receiver;

@Service
public class ReceiverServiceImpl implements ReceiverService {
	
	@Autowired
	private ReceiverDao receiverDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int ajaxInsertReceiver(Receiver receiver) {
		return receiverDao.ajaxInsertReceiver(sqlSession, receiver);
	}

}
