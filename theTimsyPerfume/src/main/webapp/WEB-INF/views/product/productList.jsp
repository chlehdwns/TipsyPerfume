<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 전체조회</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	
	<!-- Bootstrap v4 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Swiper -->
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

    <!-- productMain.jsp의 CSS파일 경로적기 -->
    <link href="resources/css/product/productMain.css" rel="stylesheet">
    <link href="resources/css/product/productList.css" rel="stylesheet">
    

</head>


<body>
	<jsp:include page="../common/header.jsp" />

    <span id="productListWrap">
        <div id="pdtListOuterLeft">
            <jsp:include page="productSideBar.jsp" />
        </div>



        <div id="pdtListOuterRight" class="container">

            <div id="pdtListTitleArea" class="row">
            	<c:choose>
            		<c:when test="${pdtCteg eq 'A'}">
            			<div class="pdt-list-main-title" style="font-size:50px;">LIQUORS</div>
               			<div class="pdt-list-sub-title" style="font-size:30px;">브랜드 | 주류</div>
            		</c:when>
            		<c:otherwise>
		                <div class="pdt-list-main-title" style="font-size:50px;">PERFUME</div>
		                <div class="pdt-list-sub-title" style="font-size:30px;">브랜드 | 향수</div>
            		</c:otherwise>
            	</c:choose>
            </div>
            
     		<div id="pdtListContentArea" class="row row-cols-3">
				<c:forEach var="count" begin="1" end="12">
					<input type="hidden" value="${pdtList[count].pdtNo}">
					<div class="container col pdt-list-container-col">
						<div class="bi bi-suit-heart container pdt-list-icon-area pdt-list-heart" onclick="ajaxChangeWishlist(${pdtList[count].pdtNo * 2});"></div>
						<div class="bi bi-cart-plus  container pdt-list-icon-area pdt-list-cart"></div>
						<div class="row pdt-list-pdtImgSrc pdtDetail"><img src="${pdtList[count].pdtImgSrc}"></div>
		                <div class="row pdt-list-pdtManufac pdtDetail">${pdtList[count].pdtManufac}</div>
		                <div class="row pdt-list-pdtName pdtDetail">${pdtList[count].pdtName}</div>
		                <div class="row pdt-list-reviewAvg pdtDetail"><c:if test="${not empty pdtList[count].reviewAvg}">★ ${pdtList[count].reviewAvg}/5</c:if></div>
		                <div class="row pdt-list-pdtIntro pdtDetail">${pdtList[count].pdtIntro}</div>
		                <div class="row pdt-list-pdtDescription pdtDetail">${pdtList[count].pdtDescription}${pdtList[count].pdtDescription}${pdtList[count].pdtDescription}</div>
					</div>
				</c:forEach>
			</div>
        </div>
    </span>
    
    <style>
    /*
    	.abc{
    		opacity : 100;
    	}
    */

    </style>

	
    <script>
    	// 온로드 시점에 하트클래스부여
		// 채운하트 bi bi-suit-heart-fill 안채운하트 bi bi-suit-heart
		// 채운장바구니 bi bi-cart-plus-fill 안채운장바구니 bi bi-cart-plus
		
		$pdtImgArea = $('.pdt-list-pdtImgSrc');
	    $pdtIconArea = $('.pdt-list-icon-area');
    	
    	
	    $pdtListCart = $('.pdt-list-cart');
	    $pdtListHeart = $('.pdt-list-heart');
  		let pdtListMouseTimeout;
	    // 마우스enter, 마우스leave 시 하트와 장바구니 보이게 / 안보이게
    
 		$pdtImgArea.on('mouseenter', e => {
		        console.log('마우스엔터');
		        //$pdtIconArea.css('opacity', '100');
		        clearTimeout(pdtListMouseTimeout);
		        $(e.target).parent().find('.pdt-list-icon-area').addClass('pdt-list-max-opacity');
 			
 		});
	    
 		$pdtImgArea.on('mouseleave', e => {
				console.log('마우스리브')
				console.log(e.target);
		        //$pdtIconArea.css('opacity', '0');
				clearTimeout(pdtListMouseTimeout);
				$(e.target).parent().find('.pdt-list-icon-area').removeClass('pdt-list-max-opacity');
 		});
	    
	    
	    
	    /*$($pdtImgArea).on({
			mouseenter : (e) => {
		        console.log('마우스엔터');
		        //$pdtIconArea.css('opacity', '100');
		        clearTimeout(pdtListMouseTimeout);
			        $(e.target).parent().find('.pdt-list-icon-area').removeClass('bcd');
			        $(e.target).parent().find('.pdt-list-icon-area').addClass('abc');
			},
			mouseleave : (e) => {
				console.log('마우스리브')
				console.log(e.target);
		        //$pdtIconArea.css('opacity', '0');
				clearTimeout(pdtListMouseTimeout);
				pdtListMouseTimeout = setTimeout(() => {
					$(e.target).parent().find('.pdt-list-icon-area').removeClass('abc');
					$(e.target).parent().find('.pdt-list-icon-area').addClass('bcd');
				}, 100);
			}
		});
		   */
 /*		$($pdtImgArea).on('mouseleave', (e) => {
				console.log('나')
		        //$pdtIconArea.css('opacity', '0');
				console.log(e.target);
				$(e.target).parent().find('.pdt-list-icon-area').removeClass('abc');
				$(e.target).parent().find('.pdt-list-icon-area').addClass('bcd');
	 		};
		); */
    
		// 하트 한개! // ajax 요청 후 좋아요 누른 게시글에는 하트fill / 아니면 빈하트
/* 	    function ajaxChangeWishlist() {
			$.ajax({
				url : ajaxChangeWishlist.pa,
				data : ,
				success : result => {
			
				},
				error : () => {
					
				}
			});
		};
		

	    $pdtListHeart.click(() => {
			console.log('하트');
			// 반복문으로 호출
		}); */
		
		// 이건 후순위!! 하트는 필수, 장바구니는 선택
		/*
		$pdtListCart.click(() => {
			console.log('장바구니');
			// ajax 요청 후 장바구니 담은게 있으면 장바구니fill / 아니면 빈장바구니
		});
		*/
		
		
		
    
    </script>

    <script>
    
    $(() => {
    	$('.pdtDetail').click(() => {
    		console.log('디테일클릭');
    	});
    	
    })
    function pdtDetail(pdtNo) {
    	console.log($('#pdtListContentArea'));
    	
    }
    
    function ajaxChangeWishlist(pdtNo) {
    	console.log(pdtNo);
    }

    </script>
    <script src="resources/js/product/productList.js"></script>
</body>


</html>