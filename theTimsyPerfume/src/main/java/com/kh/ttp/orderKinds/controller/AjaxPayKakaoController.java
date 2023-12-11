package com.kh.ttp.orderKinds.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;

import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.ttp.orderKinds.model.vo.prepay.PayKakaoReady;

import lombok.RequiredArgsConstructor;

@CrossOrigin("*")
@RestController
@RequiredArgsConstructor
@RequestMapping("/pay/kakao")
public class AjaxPayKakaoController {
	
	
	// 주문상품 정보들은 DB조회!!
	//  장바구니 : 주문실패해도유지됨 디테일 : 주문 실패하면 삭제
	
	private final String SERVICE_KEY = "187196bd1303eec04b4d5abd920985f3";
	private final String CID = "TC0ONETIME";
	
	String itemName = "초코우유" + " 외  " + 11 + "개";
	int quantity = 10;
	int totalAmount = 10000020;
	int taxFreeAmount = 0;
	String item_code; // 임시주문서에는 item_code에 장바구니 넘버를 , 로 이어서
	
	
	String payKakaoNo = "1"; // partner_order_id PAY_KAKAO_NO 유저 이메일 insert 후 결과
	//String userEmail = ((User)session.getAttribute("loginUser")).getUserEmail();
	String userEmail = "admin@admin.com"; // partner_user_id
	String tid;// tid 추후 발급된 tid
	String itemCode;
	
	
	
	
	
	
	@PostMapping(value="/ready", produces="application/json; charset=UTF-8")
	public void kakaoPayPrepare(@RequestBody PayKakaoReady kakaoReady, HttpSession session) throws IOException, ParseException {
		
		
		String url = "https://kapi.kakao.com/v1/payment/ready";
		String approvalUrl = "http://localhost:8001/tipsyPerfume/pay/kakao/approve?userEmail=" + userEmail;
		String errorUrl = "http://localhost:8001/tipsyPerfume/errorPage.er";
		
		int totalAmount = kakaoReady.getTotalAmount();
		
		
		
		
		String param = "cid=" + CID // 가맹점 코드, 10자
				     + "&partner_order_id=" + payKakaoNo // 가맹점 주문번호, 최대 100자
				     + "&partner_user_id=" + userEmail // // 가맹점 회원 id, 최대 100자
				     + "&item_name=" + itemName // 상품명, 최대 100자
				     + "&item_code=" + String.join(",", kakaoReady.getItemCode()) // 배열을 문자열 형태로 저장 / 상품코드, 최대 100자
				     + "&quantity=" + quantity // 상품 수량
				     + "&total_amount=" + totalAmount // 상품 총액
				     + "&tax_free_amount=" + 0 // 상품 비과세 금액
				     + "&approval_url=" + approvalUrl // 결제 성공 시 redirect url, 최대 255자
				     + "&cancel_url=" + errorUrl // 결제 취소 시 redirect url, 최대 255자
				     + "&fail_url=" + errorUrl; // 결제 실패 시 redirect url, 최대 255자
		
		
		HttpURLConnection urlConnection = (HttpURLConnection)new URL(url).openConnection();
		urlConnection.setRequestMethod("POST");
		urlConnection.setRequestProperty("Authorization", "KakaoAK " + SERVICE_KEY); // 헤더에
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
		
		
		//JSONObject result = (JSONObject)(new JSONParser().parse(responseText));
		JsonObject result = JsonParser.parseString(responseText).getAsJsonObject();
		
		
		//@@@@@@@@@@★ 이 시점에서 DB에 tid 넣어야함 (일단세션담음)
		String tid = result.get("tid").getAsString();
		
		session.setAttribute("tid", tid);
		System.out.println("준비단계 tid DB에 넣어야함 / tid :aㅁ " + tid);
		
		System.out.println();
		HttpHeaders header = new HttpHeaders();
		header.setContentType(new MediaType("html", "text", Charset.forName("UTF-8")));
		//return new ResponseEntity<String>((String)result.get("next_redirect_pc_url"), header, HttpStatus.OK);
		
	}
	
	
	
	
	/*
	@GetMapping("/approve")
	public void kakaoPayApprove(@RequestParam(value = "pg_token") String pgToken,
			HttpSession session) throws MalformedURLException, IOException {
		
		System.out.println("approve이 시점에 pgToken저장해야함 pgToken : " + pgToken);
		System.out.println(pgToken + "토큰들어오나욤");
		// 토큰 DB에 저장 (일단 여기선 세션)
		session.setAttribute("pgToken", pgToken);
		
		String url = "https://kapi.kakao.com/v1/payment/approve";
		
		String param = "cid=" + CID
					 + "&tid=" + session.getAttribute("tid")
					 + "&partner_order_id=" + payKakaoNo
					 + "&partner_user_id=" + userEmail
					 + "&pg_token=" + pgToken;
		
		
		
		HttpURLConnection urlConnection = (HttpURLConnection)new URL(url).openConnection();
		urlConnection.setRequestMethod("POST");
		urlConnection.setRequestProperty("Authorization", "KakaoAK " + SERVICE_KEY);
		urlConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		urlConnection.setDoOutput(true);
		
		
		
		
		DataOutputStream dataOutputStream = new DataOutputStream(urlConnection.getOutputStream());
		dataOutputStream.writeBytes(param);
		dataOutputStream.close();
		
		if(urlConnection.getResponseCode() != 200) {
			System.out.println(urlConnection.getResponseCode());
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getErrorStream()));
			System.out.println("여기까진될듯?");
		}
		
		
		
		BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
		
		
		
		
		
		
		JsonObject totalObj = JsonParser.parseString(bufferedReader.readLine()).getAsJsonObject();
		System.out.println(totalObj); // 콘솔창엔 똑같이 보임 근데 하나는 String, 하나는 오브젝트!
		
		JsonObject responseObj = totalObj.getAsJsonObject("response"); // response속성에 접근 => {} 이렇게 생긴 JsonObject타입 반환
		System.out.println(responseObj); // response속성에 접근해서 객체로 바꾼 것 => 이제 "body"속성에 접근!
		
		JsonObject bodyObj = responseObj.getAsJsonObject("body");
		System.out.println(bodyObj);
		*/
		/* JsonObject.get("totalCount")까지는 그냥 .get이라 Element형태로 반환함 (우리는 int가 필요하니까 getAsInt로 함)
		int totalCount = bodyObj.get("totalCount").getAsInt(); // "body"에 오니까 속성이 두개넹? 그 중에 totalCount(숫자)를 뽑아보자
		System.out.println(totalCount);
		
		JsonArray itemArr = bodyObj.getAsJsonArray("items"); // items속성(배열형태)에 접근 => [] JsonArray로 뽑아보자
		System.out.println(itemArr);
		
		/* itemArr(배열형태)까지 왔음! 이제 객체 하나에 있는 값을 VO의 필드에 담을 것
		ArrayList<AirVo> list = new ArrayList();
		for(int i = 0; i < itemArr.size(); i++) {
			JsonObject item = itemArr.get(i).getAsJsonObject();
			// System.out.println(item);
			
			AirVo air = new AirVo();
			air.setStationName(item.get("stationName").getAsString());
			air.setDataTime(item.get("dataTime").getAsString());
			air.setSo2Value(item.get("so2Value").getAsString());
			air.setPm10Value(item.get("pm10Value").getAsString());
			air.setO3Value(item.get("o3Value").getAsString());
			air.setKhaiValue(item.get("khaiValue").getAsString());

			list.add(air);
		}
		
		for(AirVo air : list) {
			System.out.println(air);
		}
		
		
		
		
		
		
		
		
		
		

				
		//bufferedReader.close();
		//urlConnection.disconnect();
		

		//JSONObject result = (JSONObject)(new JSONParser().parse(responseText));
		 = JsonParser.parseString(responseText).getJ
		
		//HttpHeaders header = new HttpHeaders();
		//header.setContentType(new MediaType("html", "text", Charset.forName("UTF-8")));
		//return new ResponseEntity<String>((String)result.get("next_redirect_pc_url"), header, HttpStatus.OK);
		("되나");
		
		
	}
	*/
	
	
	
	
}
