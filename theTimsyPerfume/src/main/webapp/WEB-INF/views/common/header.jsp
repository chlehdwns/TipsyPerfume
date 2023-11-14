<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    
    <!-- header.html CSS파일 경로적기 -->
    <link href="resources/css/common/header.css" rel="stylesheet">
</head>
<body>
<header>
    <div id="headerWrap">
        <div id="header_1" class="full_width_divs">
            <div id="header_1_left" class="full_height_divs">
                <a href="./"><img src="resources/image/common/logo.png"></a>
            </div>
            <div id="header_1_right" class="full_height_divs">
                <div id="header_1_right_top" class="full_width_divs">
                    <div id="header_inner_top_bannerline_1" class="full_height_divs">
                        <!-- 이벤트 대비 띠영역 -->
                    </div>
                    <!------------------- 비로그인  : 로그인   회원가입   장바구니(로그인 페이지로 연결) ----------->
                    <!------------------- 로그인    : 로그아웃 마이페이지 장바구니 -------------------------------->
                    <div id="header_inner_top_bannerline_2" class="full_height_divs">
                        <c:choose>
                            <c:when test="${ empty loginUser }">
                                <p class="text-center fw-semibold">
                                    <a class="link-offset-2 link-underline link-underline-opacity-0" href="loginForm.me">로그인</a>
                                </p>
                            </c:when>
                            <c:otherwise>
                                <p class="text-center fw-semibold">
                                    <a class="link-offset-2 link-underline link-underline-opacity-0" href="#">로그아웃</a>
                                </p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div id="header_inner_top_bannerline_3" class="full_height_divs">
                        <c:choose>
                            <c:when test="${ empty loginUser }">
                                <p class="text-center fw-semibold">
                                    <a class="link-offset-2 link-underline link-underline-opacity-0" href="#">회원가입</a>
                                </p>
                            </c:when>
                            <c:otherwise>
                                <p class="text-center fw-semibold">
                                    <a class="link-offset-2 link-underline link-underline-opacity-0" href="#">마이페이지</a>
                                </p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div id="header_inner_top_bannerline_4" class="full_height_divs">
                        <c:choose>
                            <c:when test="">
                                <p class="text-center fw-semibold">
                                    <a class="link-offset-2 link-underline link-underline-opacity-0" href="#">장바구니</a>
                                </p>
                            </c:when>
                            <c:otherwise>
                                <p class="text-center fw-semibold">
                                    <a class="link-offset-2 link-underline link-underline-opacity-0" href="#">장바구니</a>
                                </p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <!------------------------------------------------------------------------------------------>
                
                <div id="header_1_right_mid" class="full_width_divs">
                    <!-- 배너 이미지 or 여백 영역 -->
                </div>

                <div id="header_1_right_bottom" class="full_width_divs">
                    <form action="" method="get" class="d-flex" role="search">
                        <span id="header_search_inner_area_1">
                            <select class="form-select" name="condition">
                                <option selected value="allProduct">전체</option>
                                <option value="alcohol">주류</option>
                                <option value="perfume">향수</option>
                                <option value="groupBuying">공구</option>
                                <option value="crowdfunding">펀딩</option>
                            </select>
                        </span>
                        <span id="header_search_inner_area_2">
                            <input type="search" name="keyword" value="${ keyword }" class="form-control me-2" placeholder="Search" aria-label="Search">
                        </span>
                        <button type="submit" class="btn btn-outline-success">
                            <i class="bi bi-search"></i>
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <div id="header_2" class="full_width_divs">

            <div class="dropdown">
                <p data-bs-toggle="dropdown" aria-expanded="false">
                    브랜드
                </p>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">주류</a></li>
                  <li><a class="dropdown-item" href="#">향수</a></li>
                </ul>
            </div>

            <div class="dropdown">
                <p data-bs-toggle="dropdown" aria-expanded="false">
                    공동구매
                </p>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">주류</a></li>
                  <li><a class="dropdown-item" href="#">향수</a></li>
                </ul>
            </div>

            <div class="dropdown">
                <p data-bs-toggle="dropdown" aria-expanded="false">
                    스페셜 펀딩
                </p>
                <ul class="dropdown-menu" >
                  <li><a class="dropdown-item" href="funding.list">커스텀 주류</a></li>
                  <li><a class="dropdown-item" href="#">커스텀 향수</a></li>
                </ul>
            </div>

            <div class="dropdown">
                <p data-bs-toggle="dropdown" aria-expanded="false">
                    커뮤니티
                </p>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">주류&페어링 추천</a></li>
                  <li><a class="dropdown-item" href="#">코디 추천</a></li>
                  <li><a class="dropdown-item" href="review">리뷰</a></li>
                  <li><a class="dropdown-item" href="#">도감 채우기</a></li>
                </ul>
            </div>

            <div class="dropdown">
            </div>
        </div>
    </div>
</header>
</body>
</html>