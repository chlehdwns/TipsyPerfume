<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Main View</title>


    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    
    <!-- productMain.jsp의 CSS파일 경로적기 -->
    <link href="resources/css/product/productMain.css" rel="stylesheet">

</head>


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
    <div id="productMainWrap">

        <div class="pdt-main-inner-wrap">
            <!-- Controlle에서 식별자(A/F)따라 ${alcoOrPerf}에 주류 or 향수 문자열 넘기기 -->
            <div class="pdt-mn-title-area">
                <div class="pdt-mn-title-text pdt-mn-text1">${pdtMainTitleText}</div>
                <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 ${alcoOrPerf} | 최신순</div>
            </div>
            <div div class="pdt-list-btn">
                <button type="button" onclick="location.href='#'" class="btn btn-outline-info">더보기 &gt;</button>
            </div>
            <!-- Slider main container -->
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- 전체조회 시 내용 EL구문 이용 뿌려줌 6개!!! (for each사용해서 만들기) -->
                    <!-- 디테일 조회요청 시 ajaxValidateAdult() 성인인증 먼저-->
                    <!-- Slides -->
                    <div class="swiper-slide" onclick="ajaxValidateAdult();"><!-- 주류 조회 성인인증 체크 -->
                        <img src="https://cdn.pixabay.com/photo/2016/01/15/16/48/winter-1142029_1280.jpg">
                        <div class="productBlockText1">브랜드이름</div>
                        <div class="productBlockText2">술 이름 필굿 오리지널</div>
                        <div class="productBlockText3">4.9/5</div>
                        <div class="productBlockText4">간단 제품 설명</div>
                    </div>
                                        
                    <div class="swiper-slide" onclick="ajaxValidateAdult();">
                        <img src="https://cdn.pixabay.com/photo/2016/01/15/16/48/winter-1142029_1280.jpg">
                        <div class="productBlockText1">브랜드이름</div>
                        <div class="productBlockText2">술 이름 필굿 오리지널</div>
                        <div class="productBlockText3">4.9/5</div>
                        <div class="productBlockText4">간단 제품 설명</div>
                    </div>
                    <!-- 전체조회 시 내용 EL구문 이용 뿌려줌 6개!!! (향수일 경우 onclick은 빼고 EL구문 이용) -->
                    <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
                        <img src="https://cdn.pixabay.com/photo/2016/01/15/16/48/winter-1142029_1280.jpg">
                        <div class="productBlockText1">브랜드이름</div>
                        <div class="productBlockText2">술 이름 필굿 오리지널</div>
                        <div class="productBlockText3">4.9/5</div>
                        <div class="productBlockText4">간단 제품 설명</div>
                    </div>

                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
                <!-- If we need scrollbar -->
                <div class="swiper-scrollbar"></div>
            </div>
        </div>


		<!-- 식별자 pdtCteg의 값(A/F)따라 주류/향수 슬라이더 생성 -->
		<c:if test="${not empty pdtCteg}">
            <div class="pdt-main-inner-wrap">
                <div class="pdt-mn-title-area">
                    <div class="pdt-mn-title-text pdt-mn-text1">NEW LIQUORS</div>
                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 ${alcoOrPerf} | 최신순/주류</div>
                </div>
                <div div class="pdt-list-btn">
                    <button type="button" onclick="ajaxAlcoholList();" class="btn btn-outline-info">더보기 &gt;</button>
                </div>
                <!-- Slider main container -->
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <c:forEach var="product" items="${productMainList}">
                            <c:choose>
                                <c:when test="${pdtCteg eq 'A'}">
                                    <div class="swiper-slide" onclick="ajaxAlcoholDetail();">
                                </c:when>
                                <c:when test="${pdtCteg eq 'F'}">
                                    <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
                                </c:when>
                                <c:otherwise><div class="swiper-slide"></c:otherwise>
                            </c:choose>
                                <img src="${product.pdtImgSrc}">
                                <div class="productBlockText1">${product.pdtManufac}</div>
                                <div class="productBlockText2">${product.pdtName}</div>
                                <div class="productBlockText3">${product.reviewAvg}/5</div>
                                <div class="productBlockText4">${product.pdtIntro}</div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
		</c:if>
    </div>


    <script>
        // 슬라이더 동작 정의
        const swiper = new Swiper('.swiper', {
            autoplay : {
                delay : 2000 // 2초마다 이미지 변경
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