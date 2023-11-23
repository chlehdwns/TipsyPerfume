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
            
     		<div class="row row-cols-3">
				<c:forEach var="count" begin="1" end="12">
					<div class="col pdt-list-container-col">
						<div class="row pdt-list-pdtImgSrc" style="max-height: 100%;"><img src="${pdtList[count].pdtImgSrc}"></div>
		                <div class="row pdt-list-pdtManufac">${pdtList[count].pdtManufac}</div>
		                <div class="row pdt-list-pdtName">${pdtList[count].pdtName}</div>
		                <div class="row pdt-list-reviewAvg">${pdtList[count].reviewAvg}<c:if test="${not empty pdtList[count].reviewAvg}">/5</c:if></div>
		                <div class="row pdt-list-pdtIntro">${pdtList[count].pdtIntro}</div>
		                <div class="row pdt-list-pdtDescription">${pdtList[count].pdtDescription}${pdtList[count].pdtDescription}${pdtList[count].pdtDescription}...</div>
					</div>
				</c:forEach>
			</div>
        </div>
    </span>

</body>


</html>