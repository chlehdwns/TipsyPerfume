package com.kh.ttp.orderKinds.model.service;

import java.io.IOException;
import java.net.MalformedURLException;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.http.ResponseEntity;

import com.kh.ttp.orderKinds.model.vo.prepay.PayKakaoReady;

public interface PayService {

	//추후수정
	/*ResponseEntity<String>*/int payKakaoReady(PayKakaoReady kakaoReady, HttpSession session) throws MalformedURLException, IOException, ParseException;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
