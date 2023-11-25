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
				<c:forEach var="pdt" begin="1" end="12"> <!-- 마지막 페이지 상품정보 없어도 정렬 깨지지 않도록 1 ~ 12로 12번 반복  -->
					<div class="container col pdt-list-container-col">
						<input type="hidden" value="${pdtList[(pdt - 1)].pdtNo}">
						<div class="bi bi-suit-heart container pdt-list-icon-area pdt-list-heart" onclick="ajaxChangeWishOne(${pdtList[(pdt - 1)].pdtNo});"></div>
						<div class="bi bi-cart-plus  container pdt-list-icon-area pdt-list-cart"></div>
						<div class="row pdt-list-pdtImgSrc pdtDetail"><img src="${pdtList[(pdt - 1)].pdtImgSrc}"></div>
		                <div class="row pdt-list-pdtManufac pdtDetail">${pdtList[(pdt - 1)].pdtManufac}</div>
		                <div class="row pdt-list-pdtName pdtDetail">${pdtList[(pdt - 1)].pdtName}</div>
		                <div class="row pdt-list-reviewAvg pdtDetail">★ ${pdtList[(pdt - 1)].reviewAvg}/5</div>
		                <div class="row pdt-list-pdtIntro pdtDetail">${pdtList[(pdt - 1)].pdtIntro}</div>
		                <div class="row pdt-list-pdtDescription pdtDetail">${pdtList[(pdt - 1)].pdtDescription}${pdtList[(pdt - 1)].pdtDescription}</div>
					</div>
				</c:forEach>
			</div>

			
	        <div id="pdtListPaginationArea" class="row">
       		<c:set var="hrefPage" value="${pdtCteg eq 'A' ? 'selectAlcoholPdtList.pr' : 'selectPerfumePdtList.pr'}" />
	        	<ul class="pagination">
   				    <li class="page-item">
	        			<c:choose>
		        			<c:when test="${pi.currentPage eq 1}"> <!-- 앞 화살표 / 현재페이지 1이면 disabled -->
						        <a class="page-link disabled" aria-label="Previous">
						      		<span aria-hidden="true">&laquo;</span>
						        </a>
		        			</c:when>
		        			<c:otherwise> <!-- 앞 화살표 / 그 외에는 일반 li(a링크 curentPage - 1) -->
						        <a class="page-link" href="${hrefPage}?currentPage=${pi.currentPage - 1}" aria-label="Previous">
						      		<span aria-hidden="true">&laquo;</span>
						        </a>
		        			</c:otherwise>
	        			</c:choose>
				    </li>
	        		
	        		<c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}"> <!-- 페이지버튼영역 / 시작페이지 ~ 끝페이지만큼 반복 -->
	        			<li class="page-item"><a class="page-link" href="${hrefPage}?currentPage=${i}">${i}</a></li>
	        		</c:forEach>
	        		
					<li class="page-item">
	        			<c:choose>
		        			<c:when test="${pi.currentPage eq pi.maxPage}"> <!-- 뒤 화살표 : 현재페이지 eq 전체 페이지개수면 disabled -->
								<a class="page-link disabled" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
		        			</c:when>
		        			<c:otherwise> <!-- 뒤 화살표 / 그 외에는 일반li(a링크 currentPage + 1) -->
								<a class="page-link" href="${hrefPage}?=${pi.currentPage + 1}" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
		        			</c:otherwise>
	        			</c:choose>
					</li>	
	        	</ul>
	        </div>
	        
	        
        </div>
    </span>
    
	<script>
		$pdtImgArea = $('.pdt-list-pdtImgSrc');
	    $pdtIconArea = $('.pdt-list-icon-area');
	    
   		// 마우스enter, 마우스leave 시 하트와 장바구니 보이게 / 안보이게
		$pdtImgArea.on('mouseenter', e => {
	        //console.log('마우스엔터');
	        $(e.target).parent().find('.pdt-list-icon-area').addClass('pdt-list-max-opacity');
		});
		
   		$pdtImgArea.on('mouseleave', e => {
			//console.log('마우스리브')
			//console.log(e.target);
			$(e.target).parent().find('.pdt-list-icon-area').removeClass('pdt-list-max-opacity');
		});
		/* 처음에 event.stopPropagation();나 pointer-events: none;같은걸 활용했다면 더 좋았을까? */
	</script>
	
	
    <script>
    	// 온로드 시점에 좋아요여부 체크 => 하트클래스 변경
		// 채운하트 bi bi-suit-heart-fill 안채운하트 bi bi-suit-heart
		// 채운장바구니 bi bi-cart-plus-fill 안채운장바구니 bi bi-cart-plus
	    $pdtListCart = $('.pdt-list-cart');
	    $pdtListHeart = $('.pdt-list-heart');

	    	
		// 페이지 온로드 시 상품 여러개 하트 조회 ajax 요청!
		// 좋아요 누른 게시글에는 filled하트 / 아니면 빈하트
		let wishPdtNumsArr = [];
		$(() => {
			// pdtNo 배열 만들어 넘김
			
		});
	    
	    
		// 하트 한개만 변경!(온클릭 시 호출) 하트 좋아요여부 조회 후 변경함
		function ajaxChangeWishOne(pdtNo) {
				$.ajax({
				url : ajaxChangeWishOne.pa,
				data : { pdtNo : pdtNo },
				success : result => {
					console.log('성공');
					console.log(result);
					// list 받아 반복문으로 각 (pdtNo요소).parent().find(.pdt-list-heart) 하트아이콘 선택 
					// addClass부여! => result > 0
				},
				error : () => {
					console.log('실패');
				}
			});
		};
		
		// 이건 후순위!! 하트 채워주는건 필수, 장바구니는 아이콘은 선택
		/*
		$pdtListCart.click(() => {
			console.log('장바구니');
			// ajax 요청 후 장바구니 담은게 있으면 장바구니fill / 아니면 빈장바구니
		});
		*/
    </script>
    <script>
	    // 글 디테일 보기
	   	$('.pdtDetail').click(e => {
	   		console.log('디테일클릭');
	   		console.log($(e.target).parent().find('input'));
	   	});
    </script>
    
    
    <script src="resources/js/product/productList.js"></script>
</body>


</html>