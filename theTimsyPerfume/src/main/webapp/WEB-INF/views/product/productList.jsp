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

</head>
<style>



</style>

<body>
    <!--
        pdtCateg(PRODUCT_CATEGORY주류향수구분)
        주류면? (식별자 A)
        ${pdtMainTitleText} = BEST LIQOURS
        ${pdtCateg} = 주류
        향수면? (식별자B)
        ${pdtMainTitleText} = BEST PERFUMES
        ${pdtCateg} = 향수
    -->

	<jsp:include page="../common/header.jsp" />
	<jsp:include page="productSideBar.jsp" />
	
    <div id="productMainWrap" class="container">
		<c:choose>
			<c:when test="${not empty pdtCteg and (pdtCteg eq 'A' or pdtCteg eq 'F')}">
				<!-- 식별자 pdtCteg의 값(A/F)따라 주류/향수 슬라이더 생성 -->
				<!-- 최신순 -->
	            <div class="pdt-main-inner-wrap">
	                <div class="pdt-mn-title-area">
	                	<c:if test="${pdtCteg eq 'A'}">
		                    <div class="pdt-mn-title-text pdt-mn-text1">NEW LIQUORS</div>
		                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 주류 | 최신순</div>
	                	</c:if>
	                	<c:if test="${pdtCteg eq 'F'}">
	             	            <div class="pdt-mn-title-text pdt-mn-text1">NEW PERFUME</div>
		                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 향수 | 최신순</div>
	                	</c:if>
	                </div>
	                <div div class="pdt-list-btn">
		               	<c:if test="${pdtCteg eq 'A'}">
		                    <button type="button" onclick="ajaxAlcoholList();" class="btn btn-outline-info">더보기 &gt;</button>
		               	</c:if>
		               	<c:if test="${pdtCteg eq 'F' }">
		               		<button type="button" onclick="location.href='#'" class="btn btn-outline-info">더보기 &gt;</button>
		               	</c:if>
	                </div>
	                <!-- Slider main container -->
	                <div class="swiper">
	                    <!-- Additional required wrapper -->
	                    <div class="swiper-wrapper">
	                        <c:forEach var="product" items="${pMap.pMainListNew}">
		                        <c:if test="${pdtCteg eq 'A'}">
		                            <div class="swiper-slide" onclick="ajaxAlcoholDetail();">
		                        </c:if>
		                        <c:if test="${pdtCteg eq 'F'}">
		                            <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
		                        </c:if>
			                        <img src="${product.pdtImgSrc}">
			                        <div class="productBlockText1">${product.pdtManufac}</div>
			                        <div class="productBlockText2">${product.pdtName}</div>
			                        <div class="productBlockText3">${product.reviewAvg}/5</div>
			                        <div class="productBlockText4">${product.pdtIntro}</div>
	                            </div>
	                        </c:forEach>
							<!-- If we need pagination -->
							<div class="swiper-pagination"></div>
							<!-- If we need navigation buttons -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
							<!-- If we need scrollbar -->
							<div class="swiper-scrollbar"></div>
	                    </div>
	                </div>
	            </div>
			
			
				<!-- 베스트셀러순 -->
				<div class="pdt-main-inner-wrap">
				    <div class="pdt-mn-title-area">
				    	<c:if test="${pdtCteg eq 'A'}">
				         <div class="pdt-mn-title-text pdt-mn-text1">BEST LIQUORS</div>
				         <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 주류 | 베스트셀러</div>
				    	</c:if>
				    	<c:if test="${pdtCteg eq 'F'}">
				 	            <div class="pdt-mn-title-text pdt-mn-text1">BEST PERFUME</div>
				         <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 향수 | 베스트셀러</div>
				    	</c:if>
				    </div>
				    <div div class="pdt-list-btn">
				    	<c:if test="${pdtCteg eq 'A'}">
				         <button type="button" onclick="ajaxAlcoholList();" class="btn btn-outline-info">더보기 &gt;</button>
				    	</c:if>
				    	<c:if test="${pdtCteg eq 'F' }">
				    		<button type="button" onclick="location.href='#'" class="btn btn-outline-info">더보기 &gt;</button>
				    	</c:if>
				    </div>
				    <!-- Slider main container -->
				    <div class="swiper">
				        <!-- Additional required wrapper -->
				        <div class="swiper-wrapper">
				            <c:forEach var="product" items="${pMap.pMainListBestSeller}">
				             <c:if test="${pdtCteg eq 'A'}">
				                 <div class="swiper-slide" onclick="ajaxAlcoholDetail();">
				             </c:if>
				             <c:if test="${pdtCteg eq 'F'}">
				                 <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
				             </c:if>
				              <img src="${product.pdtImgSrc}">
				              <div class="productBlockText1">${product.pdtManufac}</div>
				              <div class="productBlockText2">${product.pdtName}</div>
				              <div class="productBlockText3">${product.reviewAvg}/5</div>
				              <div class="productBlockText4">${product.pdtIntro}</div>
				                </div>
				            </c:forEach>
							<!-- If we need pagination -->
							<div class="swiper-pagination"></div>
							<!-- If we need navigation buttons -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
							<!-- If we need scrollbar -->
							<div class="swiper-scrollbar"></div>
				        </div>
				    </div>
				</div>
			
			
				<!-- 인기순 -->
	            <div class="pdt-main-inner-wrap">
	                <div class="pdt-mn-title-area">
		                	<c:if test="${pdtCteg eq 'A'}">
			                    <div class="pdt-mn-title-text pdt-mn-text1">POPULAR LIQUORS</div>
			                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 주류 | 위시리스트</div>
		                	</c:if>
		                	<c:if test="${pdtCteg eq 'F'}">
	              	            <div class="pdt-mn-title-text pdt-mn-text1">POPULAR PERFUME</div>
			                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 향수 | 위시리스트</div>
		                	</c:if>
	                </div>
	                <div div class="pdt-list-btn">
	                	<c:if test="${pdtCteg eq 'A'}">
		                    <button type="button" onclick="ajaxAlcoholList();" class="btn btn-outline-info">더보기 &gt;</button>
	                	</c:if>
	                	<c:if test="${pdtCteg eq 'F' }">
	                		<button type="button" onclick="location.href='#'" class="btn btn-outline-info">더보기 &gt;</button>
	                	</c:if>
	                </div>
	                <!-- Slider main container -->
	                <div class="swiper">
	                    <!-- Additional required wrapper -->
	                    <div class="swiper-wrapper">
	                        <c:forEach var="product" items="${pMap.pMainListPopular}">
		                        <c:if test="${pdtCteg eq 'A'}">
		                            <div class="swiper-slide" onclick="ajaxAlcoholDetail();">
		                        </c:if>
		                        <c:if test="${pdtCteg eq 'F'}">
		                            <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
		                        </c:if>
			                        <img src="${product.pdtImgSrc}">
			                        <div class="productBlockText1">${product.pdtManufac}</div>
			                        <div class="productBlockText2">${product.pdtName}</div>
			                        <div class="productBlockText3">${product.reviewAvg}/5</div>
			                        <div class="productBlockText4">${product.pdtIntro}</div>
	                            </div>
	                        </c:forEach>
							<!-- If we need pagination -->
							<div class="swiper-pagination"></div>
							<!-- If we need navigation buttons -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
							<!-- If we need scrollbar -->
							<div class="swiper-scrollbar"></div>
	                    </div>
	                </div>
	            </div>
			</c:when>
			
			<c:otherwise>
				<jsp:forward page="../common/errorPage.jsp" />
			</c:otherwise>
			
		</c:choose>
    </div>
    <script>
        // 슬라이더 동작 정의
        const swiper = new Swiper('.swiper', {
            autoplay : {
                delay : 2500 // 2.5초마다 이미지 변경
            },
            loop : true, //반복 재생 여부
            slidesPerView : 3, // 이전, 이후 사진 미리보기 갯수
            pagination: { // 페이징 버튼 클릭 시 이미지 이동 가능
                el: '.swiper-pagination',
                clickable: true
            },
            navigation: { // 화살표 버튼 클릭 시 이미지 이동 가능
                prevEl: '.swiper-button-prev',
                nextEl: '.swiper-button-next'
            }
        });
    </script>
</body>


</html>