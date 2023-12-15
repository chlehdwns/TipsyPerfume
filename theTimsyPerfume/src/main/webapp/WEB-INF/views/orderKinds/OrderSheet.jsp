<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문서 페이지</title>

<style>
	#OrderSheetWrap{
		width: 950px;
		margin-top: 80px;
		border: 1px solid black;
	}
	#OrderSheetWrap div{border: 1px solid black;}
	
	/* 장바구니 각 파트 상단 타이틀영역 */
	#orderSheetMainBar {height: 50px;}
    #orderSheetContentBar {height: 50px;}
	#OrderSheetWrap .order-sheet-content-block{min-height: 100px; margin-top: 30px;}
	
	/* 각 파트 내부div 정렬 */
	#orderSheetMainBar div,
	#orderSheetContentBar div,
	#OrderSheetWrap .order-sheet-content-block div,
	#orderSheetSummary .col-4,
	#orderSheetSummary .row {
		display: flex;
		align-items: center;
	}
	/* 중앙 정렬 요소들 */
	#OrderSheetWrap .order-sheet-box-area, /* 체크박스 */
	#orderSheetMainBar .col-2, /* 메인바 */
	#orderSheetContentBar .col, .col-2, /* 콘텐트바 */
	#OrderSheetWrap .order-sheet-content-block .col, /* 콘텐트블록 */
	.col-2,
	.order-sheet-extra-info-area,
	.order-sheet-extra-info-area .col-12,
	#orderSheetSummary .col-4 /* 카트 서머리 */
	 { 
		justify-content: center;
		text-align: center;}
	/* 체크박스 */
	#OrderSheetWrap .order-sheet-box-area {
		width: 30px;
	}
	/* 할인, 배송 정보 영역 */
	#OrderSheetWrap .order-sheet-extra-info-area .row {
		width: 100%;
		height: 100%;
	}
	#OrderSheetWrap .order-sheet-extra-info-area .ext-info-1 {height: 70%;}
	#OrderSheetWrap .order-sheet-extra-info-area .ext-info-2 {height: 30%;}
	
	/* 총 합계, 주문버튼 */
	#orderSheetSummary .row{min-height: 50px;}

</style>

</head>
<body>

	<jsp:include page="../common/header.jsp" />
	
	<div>
		오더 완료 시~~~~~~~~~
	</div>
	
	<div id="OrderSheetWrap" class="container">
		<div id="orderSheetMainBar" class="row">
			<div class="order-sheet-box-area"><input type="checkbox"></div>
			<div class="col ps-5">전체선택</div>
			<div class="col-2"><button class="btn btn-danger">선택삭제</button></div>
		</div>
		
		<br/>
		<br/>
			<!-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
			
			
			
			수정 해야함
			
			
			
			
			
			
			장바구니 div구조 바뀜
			
			
			
			
			
			
			
			
			!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ -->
		<div id="orderSheetContentBar" class="row">
			<div class="order-sheet-box-area"><input type="checkbox"></div>
			<div class="col-4 ps-5">상품(옵션)</div>
			<div class="col">수량</div>
			<div class="col-2">가격</div>
			<div class="col-2">할인적용/배송</div>
			<div class="col-2">상품 합계</div>
		</div>
		
		
		<div class="row order-sheet-content-block">
			<div class="order-sheet-box-area"><input type="checkbox"></div>
			<div class="col-4 ps-5">향긋향수 50ML</div>
			<div class="col">1개</div>
			<div class="col-2">100,000원</div>
			<div class="col-2 p-0 order-sheet-extra-info-area">
				<div class="row">
					<div class="col-12 ext-info-1">-2,000원<br/>회원할인 2%</div>
					<div class="col-12 ext-info-2">배송비 3,000</div>
				</div>
			</div>
			<div class="col-2">98,000원</div>
		</div>
		<div class="row order-sheet-content-block">
			<div class="order-sheet-box-area"><input type="checkbox"></div>
			<div class="col-4 ps-5">영혼을 달래주는 술 800ML</div>
			<div class="col">2개</div>
			<div class="col-2">150,000원</div>
			<div class="col-2 p-0 order-sheet-extra-info-area">
				<div class="row">
					<div class="col-12 ext-info-1">-6,000원<br/>회원할인 2%</div>
					<div class="col-12 ext-info-2">무료배송</div>
				</div>
			</div>
			<div class="col-2">294,000원</div>
		</div>
		
		
		<br/>
		<br/>	
		<br/>	
		
		<div id="orderSheetSummary" class="row">
			<div class="col">
				<div class="row ps-5">전체금액</div>
				<div class="row ps-5">400,000 - 8,000할인 | 무료배송</div>
				<div class="row ps-5">= 392,000원</div>
			</div>
			<div class="col-4">
				<button class="btn btn-primary">주문하기</button>
			</div>
		</div>
	</div>

</body>
</html>