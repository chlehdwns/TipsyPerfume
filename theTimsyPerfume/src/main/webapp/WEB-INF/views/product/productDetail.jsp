<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Product Detail</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		
	<!-- Bootstrap v4 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

	<!-- CSS파일 경로적기 -->

	<style>
	/* 전체, 좌, 우 영역 div들 */
	#pdtDetailWrap {
		width: 950px;
		margin: auto;
		margin-top: 80px;
		margin-bottom: 200px;
	}
	
	#pdtDetailWrap div {
		box-sizing: border-box;
	}

	#pdtDetailLeft {padding-right: 30px;}
	#pdtDetailRight {padding-left: 30px;}
	.pdt-detail-container {
		float: left;
		width: 50%;
		background-color: rgb(232, 232, 232);
	}

	/* 상하 정렬 */
	.pdt-dt-align {
		display: flex;
    	align-items: center;
	}
	.pdt-dt-align-center {
		display: flex;
		justify-content: center;
		align-items: center;
	}

	/* 마진(탑) & 패딩(좌측) 스타일 */
	.pdt-dtl-mg-top-30 { margin-top: 30px; }
	.pdt-dtl-mg-top-50 { margin-top: 50px; }
	.pdt-dt-pad-lf {padding-left: 50px;}

	/* h요소 마진설정 */
	#pdtDetailWrap h2, h3, h4, h5, h6 {margin: 0;}

	/* 좌측 */
	/* 상품 대표 이미지 영역 */
	#pdtDetailThumbnail {
		height: 420.38px;
		text-align: center;
		margin-bottom: 50px;
		display: inline-block;
	}
	#pdtDetailThumbnail img { width: 90%; }
	
	/* 리뷰 영역 */
	.pdt-dt-rv-row {height: 120px;}
	.pdt-dt-rv-row .col-3 {text-align: center; height: 100%; }
	.pdt-dt-rv-row img { height: 100%; }
	.pdt-dt-rv-title { height: 30%; }
	.pdt-dt-rv-content {
		height: 70%;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
	}
	#pdtDetailReviewEnd { margin-top: 30px; height: 50px; }


	/* 우측 */
	/* 옵션, 수량 인풋 요소 */
	#pdtDetailSelectInput { width: 80%; }
	#pdtDetailSelectInput option[value=""] {display: none;}
	#pdtDetailQnanInput { width: 90%; }
	.pdt-dt-input {
		color: grey;
		text-align: center;
		border-radius: 5px;
		height: 70%;
	}
	
	/* 각 섹션 높이, 컬러 설정 */
	.pdt-section-tl { height: 70px; background-color: rgb(223, 190, 106); }
	#pdtDetailIntro { height: 60px; background-color: rgb(223, 190, 106);}
	#pdtDetailDescription {
		min-height: 240.37px;
		max-height: 700px;
		overflow: hidden;
	}
	.pdt-section-su { height: 60px; }
	.pdt-section-or {
		height: 70px;
		background-color: rgb(247, 199, 131);
	}
	.detail-bg {background-color: rgb(223, 190, 106);}
	</style>
</head>
<body>
	
	<div id="pdtDetailWrap">
		<div id="pdtDetailLeft" class="container pdt-detail-container">
			
			<div id="pdtDetailThumbnail" class="row pdt-dtl-mg-top-30">
				<img src="resources/image/product/alcohol/alcohol_2.jpg">
			</div>

			<div class="row pdt-dt-rv-row pdt-dtl-mg-top-30">
					<div class="col-3">
						<img src="resources/image/product/alcohol/alcohol_1.png">
					</div>
					<div class="col-9">
						<div class="row pdt-dt-rv-title pdt-dt-align detail-bg">리뷰제목</div>
						<div class="row pdt-dt-rv-content pdt-dt-align detail-bg">리뷰내리뷰내용내뷰내용내용리뷰내용내용뷰내용내용리뷰내용내용뷰내용내용리뷰내용내용용리뷰내용내용</div>
					</div>
			</div>
			<div class="row pdt-dt-rv-row pdt-dtl-mg-top-30">
				<div class="col-3">
					<img src="resources/image/product/alcohol/alcohol_1.png">
				</div>
				<div class="col-9">
					<div class="row pdt-dt-rv-title pdt-dt-align detail-bg">리뷰제목</div>
					<div class="row pdt-dt-rv-content pdt-dt-align detail-bg">리뷰내리뷰내용내뷰내용내용리뷰내용내용뷰내용내용리뷰내용내용뷰내용내용리뷰내용내용용리뷰내용내용</div>
				</div>
			</div>
			<div id="pdtDetailReviewEnd" class="row detail-bg">
				<div class="col-8 pdt-dt-align">리뷰 000개</div>
				<div class="col-4 pdt-dt-align">평점 : 4.8/5</div>
			</div>
		</div>



		<div id="pdtDetailRight" class="container pdt-detail-container">
		
			<div class="row pdt-dt-align-center pdt-section-tl pdt-dtl-mg-top-30">
				<h4>브랜드 이름 | 오 드 뚜왈렛</h4>
			</div>
			<div class="row pdt-dt-align-center pdt-section-tl">
				<h2>향수이름</h2>
			</div>


			<div id="pdtDetailIntro" class="row pdt-dt-pad-lf pdt-dtl-mg-top-50">
				<h5 class="pdt-dt-align">상품기본소개상품기본소개</h5>
			</div>
			<div id="pdtDetailDescription" class="row pdt-dt-align pdt-dt-pad-lf detail-bg">
				<h6 class="pdt-dt-align">
					상품상세설명설명설명상품상세설명설명설명상품상세설명설명설명
					상품상세설명설명설명상품상세설명설명설명상품상세설명설명설명
					상품상세설명설명설명상품상세설명설명설명상품상세설명설명설명
					상품상세설명설명설명상품상세설명설명설명상품상세설명설명설명
					상품상세설명설명설명상품상세설명설명설명상품상세설명설명설명
					상품상세설명설명설명상품상세설명설명설명상품상세설명설명설명
				</h6>
			</div>


			<div class="row pdt-section-su pdt-dt-align pdt-dt-pad-lf pdt-dtl-mg-top-50 detail-bg">
				100,000원
			</div>
			<div class="row pdt-section-su detail-bg">
				<div class="col-7 pdt-dt-align">용량 : 50ml 100ml 150ml</div>
				<div class="col-5 pdt-dt-align">배송비 : 무료배송</div>
			</div>


			<div class="row pdt-section-or pdt-dtl-mg-top-50 detail-bg">
				<div class="col-1 pdt-dt-align-center">
					<i class="bi bi-x"></i>
				</div>
				<div class="col-6 pdt-dt-align-center">
					<select id="pdtDetailSelectInput" class="form-select form-select-sm pdt-dt-input">
						<option value="" selected disabled>옵션선택</option>
						<option value="1">50ml</option>
						<option value="2">100ml</option>
						<option value="3">150ml</option>
					</select>
				</div>
				<div class="col-5 pdt-dt-align-center detail-bg">
					<input id="pdtDetailQnanInput" type="number" class="pdt-dt-input" placeholder="수량선택">
				</div>
			</div>
			<div class="row pdt-dt-align-center pdt-section-or detail-bg">
				200,000원
			</div>
		</div>
	</div>

</body>
</html>