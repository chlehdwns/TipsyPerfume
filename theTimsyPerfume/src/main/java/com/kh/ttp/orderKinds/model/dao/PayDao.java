package com.kh.ttp.orderKinds.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PayDao {

	public int insertEmailPayKakao(SqlSessionTemplate sqlSession, String userEmail) {
		int result = sqlSession.insert("payMapper.insertEmailPayKakao",userEmail);
		System.out.println("유저이메일~~~~~~~~" + userEmail);
		System.out.println("시행결과~~~~~~~~" + result);
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	public void checkReadyInput(SqlSessionTemplate sqlSession, PayKakaoReady kakaoReady) {
		HashMap<String, Object> map = sqlSession.selectOne("payMapper.checkReadyInput", kakaoReady);
	}
	*/
	
	
}
