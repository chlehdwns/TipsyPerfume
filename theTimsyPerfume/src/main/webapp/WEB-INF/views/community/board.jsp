<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Tipsy Perfume - 게시판</title>
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
        border-bottom: 1px solid;
    }
    tbody tr{
    	cursor: pointer;
    }
    #paging-area{
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<section>
<div id="board-wrap">
    <div id="content-title">
        게시판
    </div>
</div>
<div class="table-wrap">
    <table class="table table-hover">
        <thead class="thead-dark">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>조회수</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>6</td>
                <td>제목</td>
                <td>작성자</td>
                <td>yyyy-MM-dd</td>
                <td>2</td>
            </tr>
            <tr>
                <td>5</td>
                <td>제목</td>
                <td>작성자</td>
                <td>yyyy-MM-dd</td>
                <td>2</td>
            </tr>
        </tbody>
    </table>
</div>
<div id="paging-area">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="#">&lt</a></li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">&gt</a></li>
    </ul>
</div>
</section>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>