<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

			
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
	<!-- CSS파일 적는곳 -->
	<link rel="stylesheet" href="resources/css/orderKinds/cartMain.css">

</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<div id="cartMainWrap" class="container">
		
		
		<div id="cartMainBar" class="row">
			<div class="cart-box-area">
				<label class="check-box-label">
					<input id="cartCheckBoxAll" type="checkbox">
				</label>
			</div>
			<div class="col ps-5">전체선택</div>
			<div class="col-2"><button class="btn btn-danger">삭제</button></div>
			<div class="col-2"><button class="btn btn-primary">주문</button></div>
		</div>
		
		<br/>
		<br/>
			
		<div id="cartContentBar" class="row">
			<div class="cart-box-area">
				<!-- 프레임 맞추기 공백 -->
			</div>
			<div class="col-4 ps-5">상품(옵션)</div>
			
			<div class="col">수량</div>
			<div class="col-2">가격</div>
			<div class="col-2">배송</div>
			<div class="col-2">상품 합계</div>
		</div>
		
		
		<div class="row cart-content-block">
			<div class="cart-box-area">
				<label class="check-box-label">
					<input class="cart-check-box-one" type="checkbox">
				</label>
			</div>
			<div class="col-4 ps-5">향긋향수 50ML</div>
			<div class="col">
				<input id="cartQuantity_0" type="number" min="1" class="cartQuantity pdt-dt-input form-control" name="#">
			</div>
			<div class="col-2">100,000원</div>
			<div class="col-2 p-0 cart-extra-info-area">배송비 3,000</div>	
			<div class="col-2">98,000원</div>
		</div>
		
		<div class="row cart-content-block">
			<div class="cart-box-area">
				<label class="check-box-label">
					<input class="cart-check-box-one" type="checkbox">
				</label>
			</div>
			<div class="col-4 ps-5">${pdtName}&nbsp;${pdtOptionFirst}</div>
			<div class="col">
				<input id="cartQuantity_1" type="number" min="1" class="cartQuantity pdt-dt-input form-control" name="#" placeholder="1">
			</div>
			<div class="col-2">${pdtOptionPrice}원</div>
			<div class="col-2 p-0 cart-extra-info-area">${pdtShipping}</div>
			<div class="col-2">300,000(토탈가격)</div>
		</div>
		
		
		

		
	
		<br/>
		<br/>	
		<br/>	
		
		<div id="cartSummary" class="row">
			<div class="col">
				<div class="row ps-5">전체금액</div>
				<div class="row ps-5">400,000원 | 무료배송(10만원 이상)</div>
				<div class="row ps-5">= 392,000원</div>
			</div>
			<div class="col-4">
				<button id="cartMainOrderBtn" class="btn btn-primary">주문하기</button>
			</div>
		</div>
	</div>
		<!--
		CART_NO,
		USER_NO,
		PDT_NO,
		PDT_OPTION_NO,
		CART_QUANTITY
		-->
		<script>
			// 주문버튼 클릭 시 
			$('#cartMainOrderBtn').on('click', () => {
				let $cartCheckedItems = $('.cart-check-box-one:checked');
				//if($cartCheckedItems.length > 0) {
					console.log($cartCheckedItems);
					$.ajax({
						method : 'POST',
						url : 'kakaoPayment/prepare',
						//data : {
							
							
						//},
						success : result => {
							console.log('성공')
							console.log(result);
							alert(result);
							location.href = result;
						},
						error : () => {
							console.log('에러발생');
						}
					});
				//}
				//cart-item
				//$checkedItems = $('.cart-check-box-one:checked').closest('.cart-content-block');
				//cart-content-block
				
			});
			
				
			
			// 재고 조회 ajax
			//function checkPdtStock() {
				
			//}
			//ProductOption
			//
		</script>
		<script>
			// 수량 변경 시 상품합계 업데이트(USER_NO, PDT_OPTION_NO, 상품합계(1개가격*개수) 상품번호
			//$('.cartQuantity').on('change', () => {
				//ajax
			//});
					
			// 모든 상품 체크 선택 시 (주문 취소하거나 페이지 재렌더링은 그냥 체크 다 해제된 상태)
			$('#cartCheckBoxAll').change(() => {
				let $cartCheckBoxAll = $('#cartCheckBoxAll');
				let $checkBoxOne = $('.cart-check-box-one');
				
				if($cartCheckBoxAll.prop('checked')) {
					$checkBoxOne.prop('checked', true);
				} else {
					$checkBoxOne.prop('checked', false);
				}
			});
		</script>
		
		
	<br/><br/><br/>
	<br/><br/><br/>	
	<br/><br/><br/>	

</body>
</html>