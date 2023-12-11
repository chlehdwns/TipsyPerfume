package com.kh.ttp.orderKinds.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.orderKinds.model.vo.prepay.PayKakaoReady;

@Repository
public class PayDao {

	public void checkReadyInput(SqlSessionTemplate sqlSession, PayKakaoReady kakaoReady) {
		HashMap<String, Object> map = sqlSession.selectOne("payMapper.checkReadyInput", kakaoReady);
	}
	
	
	
}
