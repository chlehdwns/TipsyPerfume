<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Tipsy Perfume - 공지 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
    #notice-wrap{
        width: 900px;
        margin: 0 auto;
        overflow: hidden;
    }
    #content-title{
        font-size: 36px;
        font-weight: 600;
        text-align: center;
        margin: 40px 0;
    }
    .table-wrap{
        width: 900px;
        margin: 0 auto;
    }
    .table{
        text-align: center;
        border-collapse: collapse;
    }
    .table td{
        vertical-align: middle;
        border-color: rgb(160, 160, 160);
    }
    .img{
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .notice-title-wrap{
        display: flex;
        align-items: center;
    }
    .thumbnail-wrap{
        width: 95px;
        height: 95px;
    }
    .notice-title{
        margin-left: 25px;
    }

    #paging{
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div id="notice-wrap">
    <div id="content-title">
        공지사항
    </div>
<div class="table-wrap">
    <table class="table">
        <thead class="thead-dark">
          <tr>
            <th>분류</th>
            <th>제목</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody>
          <tr class="table-active">
            <td>공지</td>
            <td>
                <div class="notice-title-wrap">
                    <div class="thumbnail-wrap">
                        <img class="img" src="./블루-신형.jpg" alt="">
                    </div>
                    <div class="notice-title">
                        팁시퍼퓸 명의도용 및 사칭주의 안내
                    </div>
                </div>
            </td>
            <td>2023-11-07</td>
          </tr>
          <tr class="table-active">
            <td>이벤트</td>
            <td>
                <div class="notice-title-wrap">
                    <div class="thumbnail-wrap">
                        <img class="img" src="./블루-신형.jpg" alt="">
                    </div>
                    <div class="notice-title">
                        화이트 데이 이벤트 안내
                    </div>
                </div>
            </td>
            <td>2023-11-07</td>
          </tr>
          <tr>
            <td>공지</td>
            <td>
                <div class="notice-title-wrap">
                    <div class="thumbnail-wrap">
                        <img class="img" src="./블루-신형.jpg" alt="">
                    </div>
                    <div class="notice-title">
                        추석 연휴 배송 및 휴무 안내
                    </div>
                </div>
            </td>
            <td>2023-11-07</td>
          </tr>
          <tr>
            <td>공지</td>
            <td>
                <div class="notice-title-wrap">
                    <div class="thumbnail-wrap">
                        <img class="img" src="./블루-신형.jpg" alt="">
                    </div>
                    <div class="notice-title">
                        추석 연휴 배송 및 휴무 안내
                    </div>
                </div>
            </td>
            <td>2023-11-07</td>
          </tr>
        </tbody>
    </table>
</div>
<div id="paging">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="#">&lt</a></li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">&gt</a></li>
    </ul>
</div>
</div>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>