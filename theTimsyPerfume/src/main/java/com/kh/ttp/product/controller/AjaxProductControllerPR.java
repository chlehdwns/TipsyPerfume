package com.kh.ttp.product.controller;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.ttp.community.review.model.vo.ReviewVO;
import com.kh.ttp.product.model.service.ProductServicePR;
import com.kh.ttp.product.model.vo.CartVO;
import com.kh.ttp.product.model.vo.WishlistVO;
import com.kh.ttp.productOption.model.vo.ProductOption;
import com.kh.ttp.user.model.vo.User;

import lombok.RequiredArgsConstructor;

@CrossOrigin("*")
@RestController
@RequiredArgsConstructor
public class AjaxProductControllerPR {
	
	private final ProductServicePR productService;
	
	
	private HttpHeaders makeHeader(String type, String subtype, String encoding) {
		HttpHeaders header = new HttpHeaders();
		header.setContentType(new MediaType(type, subtype, Charset.forName(encoding)));
		return header;
	}
	
	private ResponseEntity<String> returnAjaxErrorStr() {
		return new ResponseEntity<String>("ERROR", makeHeader("text", "html", "UTF-8"), HttpStatus.OK);
	}
	 
	
	// pdtCteg가 F나 A인지 검증해 boolean반환하는 메소드
	private boolean checkPdtCtegStr(String pdtCteg) {
		if(null != pdtCteg && (pdtCteg.equals("F") || pdtCteg.equals("A"))) {
			return true;
		}
		return false;
	}
	
	
	
	/**
	 * 유저의 위시리스트에 이미 추가되어있는 상품인지 체크 후<br>
	 * 이미 있으면 위시리스트 취소(DELETE), 없으면 추가(INSERT)
	 * @param pdtNo : 위시리스트를 추가하려는 상품 번호(PK)
	 * @param session : 로그인 유저 번호(PK)를 뽑기위한 세션
	 * @return
	 * 위시리스트가 있는 상태로 표시해야 할 때 문자열 "true"반환<br>
	 * 비워진 상태로 표시해야할 때 문자열 "false" 반환<br>
	 * (가독성을 위해 "true", "false"반환)
	 */
	@PostMapping(value="ajaxChangeWishOne.pa", produces="text/html; charset=UTF-8") // 로그인 인터셉터거침
	public String ajaxChangeWishOne(@RequestParam(value="pdtNo", defaultValue="0") int pdtNo, HttpSession session) {
		User user = (User)session.getAttribute("loginUser");
		if((user != null) && pdtNo > 0) {
			WishlistVO wishlist = new WishlistVO();
			wishlist.setPdtNo(pdtNo);
			wishlist.setUserNo(user.getUserNo());
			boolean isFilledHeart = productService.ajaxChangeWishOne(wishlist); // 가독성 위해
			return String.valueOf(isFilledHeart); // isFilledHeart + ""; X "null"방지
		} else {
			return "ERROR";
		}
	}
	
	/**
	 * 상품 재고가 1개 이상인지 조회 후 장바구니에 해당 상품 1개 추가
	 * @param pdtNo
	 * @param session
	 * @return : 추가 성공 시 "1"문자열, 실패 시 "0"문자열 반환
	 */
	@PostMapping(value="ajaxCheckStockAddCart.ca", produces="text/html; charset=UTF-8") // 로그인 인터셉터 거침
	public void ajaxCheckStockAddCart(CartVO cart,
										@RequestParam String pdtCteg,
										HttpSession session) {
		// 카테고리 A면 성인 status Y일 때
		/*
		if((cart.getPdtNo() * cart.getPdtOptionNo() > 0) && checkPdtCtegStr(pdtCteg)) {
			CartVO cart = new CartVO();
			cart.setUserNo(((User)session.getAttribute("loginUser")).getUserNo());
			cart.setPdtNo(pdtNo);
			cart.setPdtOptionNo(pdtOptionNo);
			cart.setCartAddingQuantity(1);
			return String.valueOf(productService.checkStockAndAddCart(cart));
		} else {
			return "ERROR";
		}
			*/
			System.out.println("카테고링ㄹㅇㅇㅇ");
	}
	
	/**
	 * 상품 번호로 상품이 가진 옵션을 조회하는 메소드
	 * @param pdtNo
	 * @return
	 */
	@GetMapping("ajaxSelectPdtOptionOne.pa/{pdtNo}")
	public ResponseEntity ajaxCreateCartQuickAddModal(@PathVariable(name="pdtNo") int pdtNo) {
		return (pdtNo <= 0) ? returnAjaxErrorStr()
							: new ResponseEntity<List<ProductOption>>(productService.ajaxSelectPdtOptionOne(pdtNo), makeHeader("application", "json", "UTF-8"), HttpStatus.OK);
	}
	
	
	/**
	 * 상품 번호, rowNum(여기서는 2)로 최신순 리뷰 2개를 조회하는 메소드
	 * @param pdtNo
	 * @return
	 */
	@GetMapping("ajaxSelectRecentTwoReview.pr/{pdtNo}")
	public ResponseEntity ajaxSelectRecentTwoReview(@PathVariable(name="pdtNo") int pdtNo) {
		if(pdtNo > 0) {
			HashMap<String, Integer> pMap = new HashMap();
			pMap.put("pdtNo", pdtNo);
			pMap.put("rowNum", 2);
			return new ResponseEntity<List<ReviewVO>>(productService.selectRecentReviewWithRownum(pMap),
													  makeHeader("application", "json", "UTF-8"),
													  HttpStatus.OK);
		}
		return returnAjaxErrorStr();
	}
	
	

	
	
	
	
}
