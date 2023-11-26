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
		margin: auto;
		border: 1px solid black;
	}
	#cartMainWrap div{border: 1px solid black;}
	
	/* 장바구니 각 파트 상단 타이틀영역 */
	#cartMainBar {height: 50px;}
    #cartContentBar {height: 50px;}
	#cartMainWrap .cart-content-block{min-height: 70px; margin-top: 30px;}
	
	/* 각 파트 내부div 정렬 */
	#cartMainBar div,
	#cartContentBar div,
	#cartMainWrap .cart-content-block div {
		display: flex;
		align-items: center;
	}
	/* 중앙 정렬 요소들 */
	#cartMainWrap .cart-checkbox-area, /* 체크박스 */
	#cartMainBar .col-2,
	#cartContentBar .col, .col-2
	#cartMainWrap .cart-content-block .col, .col-2
	 { 
		justify-content: center}
	
	#cartMainWrap .cart-checkbox-area {
		width: 30px;
	}
	#cartMainWrap .cart-extra-info-area {
		width: 100%; justify-content: center;
	}
	
	#cartMainWrap .cart-extra-info-area .row {
		width: 100%;
		height: 100%;
	}
	#cartMainWrap .cart-extra-info-area .col-12 {height: 50%; justify-content: center;}
</style>
</head>
<body>

	<div id="cartMainWrap" class="container">
		<div id="cartMainBar" class="row">
			<div class="cart-checkbox-area"><input type="checkbox"></div>
			<div class="col">전체선택</div>
			<div class="col-2"><button class="btn btn-danger">삭제</button></div>
			<div class="col-2"><button class="btn btn-primary">주문</button></div>
		</div>
		
		<br/>
		<br/>
			
		<div id="cartContentBar" class="row">
			<div class="cart-checkbox-area"><input type="checkbox"></div>
			<div class="col-4">상품</div>
			<div class="col">수량</div>
			<div class="col-2">가격</div>
			<div class="col-2">할인적용/배송</div>
			<div class="col-2">상품 합계</div>
		</div>
		<div class="row cart-content-block">
			<div class="cart-checkbox-area"><input type="checkbox"></div>
			<div class="col-4">향긋향수</div>
			<div class="col">1개</div>
			<div class="col-2">100,000원</div>
			<div class="col-2 p-0 cart-extra-info-area">
				<div class="row">
					<div class="col-12">회원할인 2%</div>
					<div class="col-12">무료배송</div>
				</div>
			</div>
			<div class="col-2">98,000원</div>
		</div>
		<div class="row cart-content-block">
			<div class="cart-checkbox-area"><input type="checkbox"></div>
			<div class="col-4">영혼을 달래주는 술</div>
			<div class="col">2개</div>
			<div class="col-2">150,000원</div>
			<div class="col-2 p-0 cart-extra-info-area">
				<div class="row">
					<div class="col-12">회원할인 2%</div>
					<div class="col-12">무료배송</div>
				</div>
			</div>
			<div class="col-2">294,000원</div>
		</div>
		
		<br/>
		<br/>	
		
		<div class="row cart-summary">
			<div class="col-8">전체금액</div>
			<div class="col-4"><button class="btn btn-primary">주문</button></div>
		</div>
		<div id="cartSummaryBenefit" class="row cart-summary">
			<div class="col">400,000 - 8,000할인 | 무료배송</div>
		</div>
		<div id="cartSummaryAmount" class="row cart-summary">
			<div class="col">392,000원</div>
		</div>
	
	</div>
	


</body>
</html>