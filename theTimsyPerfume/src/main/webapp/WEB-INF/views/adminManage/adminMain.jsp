<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.content{
			width: 1200px;
			height: 1500px;
			align: center;
			margin: auto;
			border: 1px solid red;
		}
		.box{
		width:1200px;
		height:50px;
		}
	
	
		.content1{
			width:300px;
			height:1500px;
			align:left;
			margin:left;
			background-color : rgb(195, 195, 195);
			float : left;
		
		}
		
		.content1_1{
			width:100%;
			height:50px;
		}
		
		.profile{
			width:100%;
			height:120px;
		
		}
		
		.userProfile{
			width:120px;
			height:120px;
			border-radius: 50%
		
		}
		
		
		.content2{
			align:left;
			margin:left;
			float : left;
			margin-top :30px;
			margin-left:30px;
			
		}
	
	
	</style>
</head>
<body>

	<!-- 메뉴바 -->
		<jsp:include page="../common/header.jsp" />
		<div class="content">
			<!--  <div class="box"></div>-->
			<div class="content1">
			<div class="content1_1"></div>
			
			<div class="profile">
				<div class="userProfile">
				<img src="">
				</div>
				<div class="nickName">닉네임</div>
			</div>
			
				<ul id="navi1">
				
					<li><a href="#">사용자 관리</a>
						<ul>
							<li><a href="#">판매자 계정 승인</a>
						</ul>
					</li>
					
					<li><a href="#">판매 관리</a>
						<ul>
							<li><a href="#">펀딩 관리</a>
							<li><a href="#">주문 관리 승인</a>
						</ul>
					
					</li>
				
				
				</ul>
			
			
			</div>
			
			<div class="content2">
			<br>
			<h2>사용자 관리</h2>
			</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		</div><!-- content 끝 div -->
		<jsp:include page="../common/footer.jsp" />
</body>
</html>