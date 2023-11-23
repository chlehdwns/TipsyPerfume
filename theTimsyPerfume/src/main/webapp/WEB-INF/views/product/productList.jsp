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
        #productListWrap div{border: solid 1px black;}
        #pdtListOuterLeft div{border: solid 1px green;}
        #pdtListOuterRight div {border: solid 1px blue;}
        /* #pdtListOuterRight > div{
            background-color: red;
        } */


        /* 전체 랩 + 왼(사이드바) 오(콘텐트) 위치&크기 설정*/
        #productListWrap {
            display: block;
            width: 1500px;
            text-align: center;
            margin: 0 auto;
            margin-top: 80px;
            border: solid 1px black;
        }
        #pdtListOuterLeft{
            width: 230px;
            float: left;
            margin-top: 190px;
        }
        #pdtListOuterRight{
            width: 950px;
        }

        /* 타이틀 영역 */
        #pdtListTitleArea{
            height: 150px;
            margin-bottom: 40px;
        }
        .pdt-list-main-title{height: 60%;}
        .pdt-list-sub-title{height: 40%;}

        /* 상품 정보 영역 */
        .pdt-list-container-row{height: 550px; text-align: center; margin: 30px 0px;}
        .pdt-list-container-col{ margin: 0px 20px;}

        

        .pdt-list-pdtImgSrc{height: 50%;}
        .pdt-list-pdtManufac{height: 10%;}
        .pdt-list-pdtName{height: 10%;}
        .pdt-list-reviewAvg{height: 5%;}
        .pdt-list-pdtIntro{height: 10%;}
        .pdt-list-pdtDescription{height: 15%;}
    </style>

	<jsp:include page="../common/header.jsp" />

    <span id="productListWrap">
        <div id="pdtListOuterLeft">
            <jsp:include page="productSideBar.jsp" />
        </div>



        <div id="pdtListOuterRight" class="container text-center">

            <div id="pdtListTitleArea" class="row">
                <div class="pdt-list-main-title">LIQUORS</div>
                <div class="pdt-list-sub-title">브랜드 | 주류</div>
            </div>
            
            <div class="row pdt-list-container-row">
                <div class="col pdt-list-container-col">
                    <div class="row pdt-list-pdtImgSrc">이미지</div>
                    <div class="row pdt-list-pdtManufac">브랜드${product.pdtManufac}</div>
                    <div class="row pdt-list-pdtName">상품이름${product.pdtName}</div>
                    <div class="row pdt-list-reviewAvg">평점${product.reviewAvg}/5</div>
                    <div class="row pdt-list-pdtIntro">간단설명</div>
                    <div class="row pdt-list-pdtDescription">상세설명</div>
                </div>
                <div class="col pdt-list-container-col">
                    <div class="row pdt-list-pdtImgSrc">이미지</div>
                    <div class="row pdt-list-pdtManufac">브랜드${product.pdtManufac}</div>
                    <div class="row pdt-list-pdtName">상품이름${product.pdtName}</div>
                    <div class="row pdt-list-reviewAvg">평점${product.reviewAvg}/5</div>
                    <div class="row pdt-list-pdtIntro">간단설명</div>
                    <div class="row pdt-list-pdtDescription">상세설명</div>
                </div>
                <div class="col pdt-list-container-col">
                    <div class="row pdt-list-pdtImgSrc">이미지</div>
                    <div class="row pdt-list-pdtManufac">브랜드${product.pdtManufac}</div>
                    <div class="row pdt-list-pdtName">상품이름${product.pdtName}</div>
                    <div class="row pdt-list-reviewAvg">평점${product.reviewAvg}/5</div>
                    <div class="row pdt-list-pdtIntro">간단설명</div>
                    <div class="row pdt-list-pdtDescription">상세설명</div>
                </div>
            </div>

            <div class="row pdt-list-container-row">
                <div class="col pdt-list-container-col">
                    <div class="row pdt-list-pdtImgSrc">이미지</div>
                    <div class="row pdt-list-pdtManufac">브랜드${product.pdtManufac}</div>
                    <div class="row pdt-list-pdtName">상품이름${product.pdtName}</div>
                    <div class="row pdt-list-reviewAvg">평점${product.reviewAvg}/5</div>
                    <div class="row pdt-list-pdtIntro">간단설명</div>
                    <div class="row pdt-list-pdtDescription">상세설명</div>
                </div>
                <div class="col pdt-list-container-col">
                    <div class="row pdt-list-pdtImgSrc">이미지</div>
                    <div class="row pdt-list-pdtManufac">브랜드${product.pdtManufac}</div>
                    <div class="row pdt-list-pdtName">상품이름${product.pdtName}</div>
                    <div class="row pdt-list-reviewAvg">평점${product.reviewAvg}/5</div>
                    <div class="row pdt-list-pdtIntro">간단설명</div>
                    <div class="row pdt-list-pdtDescription">상세설명</div>
                </div>
                <div class="col pdt-list-container-col">
                    <div class="row pdt-list-pdtImgSrc">이미지</div>
                    <div class="row pdt-list-pdtManufac">브랜드${product.pdtManufac}</div>
                    <div class="row pdt-list-pdtName">상품이름${product.pdtName}</div>
                    <div class="row pdt-list-reviewAvg">평점${product.reviewAvg}/5</div>
                    <div class="row pdt-list-pdtIntro">간단설명</div>
                    <div class="row pdt-list-pdtDescription">상세설명</div>
                </div>
            </div>


        </div>
    </span>
	
	
	
	
	

        <!-- Additional required wrapper -->
        <!-- <div class="swiper-wrapper">
            <c:forEach var="product" items="${pMap.pMainListNew}">
                <c:if test="${pdtCteg eq 'A'}">
                    <div class="swiper-slide" onclick="adultValidation('${product.pdtNo}');">
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
        </div> -->	
	
	
	
	
	

</body>


</html>