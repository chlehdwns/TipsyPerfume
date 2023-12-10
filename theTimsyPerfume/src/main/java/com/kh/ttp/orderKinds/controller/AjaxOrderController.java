package com.kh.ttp.orderKinds.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;

@CrossOrigin("*")
@RestController
@RequiredArgsConstructor
@RequestMapping("/productPayment")
public class AjaxOrderController {
	
	
	@GetMapping("/prepare")
	public void kakaoPayPrepare() throws IOException {
		System.out.println("되나???111111");
		
		String partnerOrderId = "partner_order_id";
		String partnerUserId = "partner_user_id";
		String itemName = "초코우유" + " 외  " + 11 + "개";
		int quantity = 10;
		int totalAmount = 10000020;
		int taxFreeAmount = 5000;
		
		String url = "https://kapi.kakao.com/v1/payment/ready";
		String approvalUrl = "http://localhost:8001/tipsyPerfume";
		String errorUrl = "http://localhost:8001/tipsyPerfume/errorPage.er";
		
		String param = "cid=TC0ONETIME" // 가맹점 코드, 10자
				     + "&partner_order_id=" + partnerOrderId // 가맹점 주문번호, 최대 100자
				     + "&partner_user_id=" + partnerUserId // 가맹점 회원 id, 최대 100자
				     + "&item_name=" + itemName // 상품명, 최대 100자
				     //+ "&item_code=" // 상품코드, 최대 100자
				     + "&quantity=" + quantity // 상품 수량
				     + "&total_amount=" + totalAmount // 상품 총액
				     + "&tax_free_amount=" + taxFreeAmount // 상품 비과세 금액
				     + "&approval_url=" + approvalUrl // 결제 성공 시 redirect url, 최대 255자
				     + "&cancel_url=" + errorUrl // 결제 취소 시 redirect url, 최대 255자
				     + "&fail_url=" + errorUrl; // 결제 실패 시 redirect url, 최대 255자
		
		HttpURLConnection urlConnection = (HttpURLConnection)new URL(url).openConnection();

		urlConnection.setRequestMethod("POST");
		urlConnection.setRequestProperty("Authorization", "KakaoAK 187196bd1303eec04b4d5abd920985f3"); // 헤더에
		urlConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		urlConnection.setDoOutput(true); // 바디에
		//System.out.println("되나???2222222");
		DataOutputStream dataOutputStream = new DataOutputStream(urlConnection.getOutputStream());
		dataOutputStream.writeBytes(param);
		dataOutputStream.close();
		
		BufferedReader bufferedReader;
		
		InputStreamReader inputStreamReader;
		//System.out.println("버퍼드?");
		if(urlConnection.getResponseCode() != 200) {
			//System.out.println("fail");
			//System.out.println(urlConnection.getResponseCode());
			//BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getErrorStream()));디버깅
			//return "통신에 실패하였습니다!";
		}
		bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
		String responseText = bufferedReader.readLine();
		System.out.println("버퍼드가범인?");
		bufferedReader.close();
		urlConnection.disconnect();
		System.out.println(responseText);
	}
	
	//("/payRequest")
	//("")
	
	
	
	
	
	
	
}
