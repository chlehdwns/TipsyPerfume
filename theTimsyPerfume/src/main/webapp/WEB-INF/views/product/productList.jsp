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
    
    <style>
        #productListWrap div{border: solid 1px green;}
        #pdtListOuter div {border: solid 1px blue;}
        #productListWrap {width: 1200px;}
        
        #pdtListOuter{width: 950px; margin: auto; display: inline-block;}
        #pdtListOuter div[class='row'] {width: 100%;}
        #pdtListOuter .pdtListContainer { height: 400px;}
    </style>

	<jsp:include page="../common/header.jsp" />

    <div id="productListWrap">
        <div id="pdtListSideBarOuter">
            <jsp:include page="productSideBar.jsp" />
        </div>
    
    
        <div id="pdtListOuter" class="container">
            <div class="row">
                <div class="pdtListContainer col">
                    <div class="row"></div>
                </div>
                <div class="pdtListContainer col"></div>
                <div class="pdtListContainer col"></div>
                <div class="pdtListContainer col"></div>
            </div>
    
    
    
    
        </div>


        
    </div>
	
	
	
	
	
	
	
	
	
	
	
	

</body>


</html>