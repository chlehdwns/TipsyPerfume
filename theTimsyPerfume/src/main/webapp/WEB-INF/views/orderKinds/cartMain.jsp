<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


<style>
	#cartMainWrap{
		width: 950px;
		margin-top: 80px;
		border: 1px solid black;
	}
	#cartMainWrap div{border: 1px solid black;}
	
	/* 장바구니 각 파트 상단 타이틀영역 */
	#cartMainBar {height: 50px;}
    #cartContentBar {height: 50px;}
	#cartMainWrap .cart-content-block{min-height: 100px; margin-top: 30px;}
	
	/* 각 파트 내부div 정렬 */
	#cartMainBar div,
	#cartContentBar div,
	#cartMainWrap .cart-content-block div,
	#cartSummary .col-4,
	#cartSummary .row {
		display: flex;
		align-items: center;
	}
	/* 중앙 정렬 요소들 */
	#cartMainWrap .cart-box-area, /* 체크박스 */
	#cartMainBar .col-2, /* 메인바 */
	#cartContentBar .col, .col-2, /* 콘텐트바 */
	#cartMainWrap .cart-content-block .col, /* 콘텐트블록 */
	.col-2,
	.cart-extra-info-area,
	.cart-extra-info-area .col-12,
	#cartSummary .col-4 /* 카트 서머리 */
	 { 
		justify-content: center;
		text-align: center;}
	/* 체크박스 */
	#cartMainWrap .cart-box-area {
		width: 30px;
	}
	/* 할인, 배송 정보 영역 */
	#cartMainWrap .cart-extra-info-area .row {
		width: 100%;
		height: 100%;
	}
	
	/* 총 합계, 주문버튼 */
	#cartSummary .row{min-height: 50px;}

</style>
</head>
<body>

	<jsp:include page="../common/header.jsp" />

	<div id="cartMainWrap" class="container">
		<div id="cartMainBar" class="row">
			<div class="cart-box-area"><input type="checkbox"></div>
			<div class="col ps-5">전체선택</div>
			<div class="col-2"><button class="btn btn-danger">삭제</button></div>
			<div class="col-2"><button class="btn btn-primary">주문</button></div>
		</div>
		
		<br/>
		<br/>
			
		<div id="cartContentBar" class="row">
			<div class="cart-box-area"><input type="checkbox"></div>
			<div class="col-4 ps-5">상품(옵션)</div>
			
			<div class="col">수량</div>
			<div class="col-2">가격</div>
			<div class="col-2">할인적용/배송</div>
			<div class="col-2">상품 합계</div>
		</div>
		
		
		<div class="row cart-content-block">
			<div class="cart-box-area"><input type="checkbox"></div>
			<div class="col-4 ps-5">향긋향수 50ML</div>
			<div class="col">
				<input id="cartQuantity_0" type="number" min="1" class="cartQuantity pdt-dt-input form-control" name="#">
			</div>
			<div class="col-2">100,000원</div>
			<div class="col-2 p-0 cart-extra-info-area">배송비 3,000</div>	
			<div class="col-2">98,000원</div>
		</div>
		
		<div class="row cart-content-block">
			<div class="cart-box-area"><input type="checkbox"></div>
			<div class="col-4 ps-5">${pdtName}&nbsp;${pdtOptionFirst}</div>
			<div class="col">
				<input id="cartQuantity_1" type="number" min="1" class="cartQuantity pdt-dt-input form-control" name="#" placeholder="1">
			</div>
			<div class="col-2">${pdtOptionPrice}원</div>
			<div class="col-2 p-0 cart-extra-info-area">${pdtShipping}</div>
			<div class="col-2">300,000(토탈가격)</div>
		</div>
		
		
		
		<!-- cart에서 상품수량 가격(1개) PDT_NO
PDT_OPTION_NO 상품합계(1개가격*개수) 상품번호 -->
		<script>
		/*
			$('.cartQuantity').on('click', () => {
				
				$.ajax({
					url : 'GET',
					data : '상품번호',
					
					
					
				});
			});
			*/
		
		</script>
		<script>
			$('#cartMainOrderBtn').on('click', () => {
				console.log($(''))
			});
			
			// 재고 조회 ajax
			function checkPdtStock() => {
				
			}
			//ProductOption
			//
		</script>
		
	
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

	
	<br/><br/><br/>
	<br/><br/><br/>	
	<br/><br/><br/>	

</body>
</html>