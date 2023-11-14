<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩 주류 등록 페이지</title>
	<style>
		#enroll-title{
			text-align : center;
			margin-top : 50px;
			font-weight : bold;
			margin-bottom : 50px;
		}
		#enroll-area{
			width : 800px;
			height : 1000px;
			background-color : lightgray;
			margin-bottom : 50px;
			margin-left : 600px;
			
		}
		#productName{
			width : 500px;
			float: right;
		}
		#sipleIntro{
			width : 500px;
			float : right;
		}
		
	</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<h1 id="enroll-title">펀딩 등록</h1>
	<form id="fundingEnrollForm" method="post" action="insertDrink.fun" enctype="multipart/form-data">
	<div id="enroll-area">
		제품명 : <input type="text" id="productName" name="pdtNo" class="form-control" required>
		제품 간단 소개 : <input type="text" id="simpleIntro" name="pdtIntro" class="form-control" required>
	</div>
	</form>
	<jsp:include page="../common/footer.jsp" />
	
	
</body>
</html>