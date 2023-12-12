package com.kh.ttp.orderKinds.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PayDao {

	public int insertKakaoReady(SqlSessionTemplate sqlSession, Map kakaoReadyMap) {
		int result = sqlSession.insert("payMapper.insertKakaoReady", kakaoReadyMap);
		System.out.println("카카오레디 맵~~~~~~~~ : " + kakaoReadyMap);
		System.out.println("카카오레디 시행결과~~~~~~~~ : " + result);
		return result;
	}
	
	public String selectSeqPayKakaoStr(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("payMapper.selectSeqPayKakaoStr");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	public void checkReadyInput(SqlSessionTemplate sqlSession, PayKakaoReady kakaoReady) {
		HashMap<String, Object> map = sqlSession.selectOne("payMapper.checkReadyInput", kakaoReady);
	}
	*/
	
	
}
