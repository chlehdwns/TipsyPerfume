package com.kh.ttp.orderKinds.model.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.kh.ttp.orderKinds.controller.AjaxPayKakaoController;
import com.kh.ttp.orderKinds.model.dao.PayDao;
import com.kh.ttp.orderKinds.model.vo.prepay.PayKakaoReady;
import com.kh.ttp.user.model.vo.User;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@EnableTransactionManagement
public class PayServiceImpl implements PayService {
	
	
	private final PayDao payDao;
	private final SqlSessionTemplate sqlSession;
	
	
	@Transactional
	public ResponseEntity<String> payKakaoReady(PayKakaoReady kakaoReady, HttpSession session) throws MalformedURLException, IOException, ParseException {
		
		User user = (User)session.getAttribute("loginUser");
		String userEmail = user.getUserEmail();
		kakaoReady.setUserNo(user.getUserNo());
		kakaoReady.setUserEmail(userEmail);
		
		
		String payKakaoNo;
		int quantity = kakaoReady.getItemCode().size();
		String itemName = kakaoReady.getItemName()  + " 외  " + (quantity - 1) + "개";
		ArrayList itemCode = (ArrayList)kakaoReady.getItemCode();
		
		
		String url = "https://kapi.kakao.com/v1/payment/ready";
		String approvalUrl = "http://localhost:8001/tipsyPerfume/pay/kakao/approve"
						   + "?userEmail=" + userEmail;
		String errorUrl = "http://localhost:8001/tipsyPerfume/errorPage.er";
		
		// 이메일로 INSERT하고 payKakaoNo초기화(검증나중에)
		int insertEmailResult = payDao.insertEmailPayKakao(sqlSession, userEmail);
		payKakaoNo=""; // partner_order_id PAY_KAKAO_NO 유저 이메일 insert 후 결과
		
		String param = "cid=" + AjaxPayKakaoController.CID // 가맹점 코드, 10자
			     + "&partner_order_id=" + payKakaoNo // 가맹점 주문번호, 최대 100자
			     + "&partner_user_id=" + userEmail // // 가맹점 회원 id, 최대 100자
			     + "&item_name=" + itemName // 상품명, 최대 100자
			     + "&item_code=" + String.join(",", itemCode) // 배열을 문자열 형태로 저장 / 상품코드, 최대 100자
			     + "&quantity=" + quantity // 상품 수량
			     + "&total_amount=" + kakaoReady.getTotalAmount() // 상품 총액
			     + "&tax_free_amount=" + 0 // 상품 비과세 금액
			     + "&approval_url=" + approvalUrl // 결제 성공 시 redirect url, 최대 255자
			     + "&cancel_url=" + errorUrl // 결제 취소 시 redirect url, 최대 255자
			     + "&fail_url=" + errorUrl; // 결제 실패 시 redirect url, 최대 255자

		
		
		HttpURLConnection urlConnection = (HttpURLConnection)new URL(url).openConnection();
		urlConnection.setRequestMethod("POST");
		urlConnection.setRequestProperty("Authorization", "KakaoAK " + AjaxPayKakaoController.SERVICE_KEY); // 헤더에
		urlConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		urlConnection.setDoOutput(true); // 바디에

		DataOutputStream dataOutputStream = new DataOutputStream(urlConnection.getOutputStream());
		dataOutputStream.writeBytes(param);
		dataOutputStream.close();
		
		
		if(urlConnection.getResponseCode() != 200) {
			System.out.println("준비단계 에러발생");
			//System.out.println(urlConnection.getResponseCode());
			//BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getErrorStream()));디버깅
			//return "ERROR";
		}
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
		String responseText = bufferedReader.readLine();
		bufferedReader.close();
		urlConnection.disconnect();
		
		
		System.out.println(responseText);
		
		
		JSONObject result = (JSONObject)(new JSONParser().parse(responseText));
		//JsonObject result = JsonParser.parseString(responseText).getAsJsonObject();
		
		
		//@@@@@@@@@@★ 이 시점에서 DB에 tid 넣어야함 (일단세션담음)
		// INSERT
		String tid = (String)result.get("tid");
		//session.setAttribute("tid", tid);
		System.out.println("준비단계 tid DB에 넣어야함 / tid :aㅁ " + tid);
		
		System.out.println();
		HttpHeaders header = new HttpHeaders();
		header.setContentType(new MediaType("html", "text", Charset.forName("UTF-8")));
		return new ResponseEntity<String>((String)result.get("next_redirect_pc_url"), header, HttpStatus.OK);
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
