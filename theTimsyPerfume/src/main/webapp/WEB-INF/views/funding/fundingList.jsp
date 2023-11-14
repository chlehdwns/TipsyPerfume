<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주류 펀딩</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	div{
		box-sizing : border-box;
		
	}
	.drinkFunding-title{
		text-align : center;
		margin-top : 50px;
		color : rgb(223, 190, 106);
	}
	#outer{
		margin-top : 50px;
		width : 1200px;
		height : 1500px;
		margin-left : 350px;
	}
	#outer > div{
		width: 100%;
	}
	#normal-drink{
		height : 30%;
	}
	#hot-drink,#rank-drink{
		height : 35%;
	}
	h3{
		margin-left : 475px;
	}
	#hot-drink >h3{
		color : red;
	}
	#rank-drink > h3{
		color : rgb(223, 190, 106);
	}
	
	.funding-list1,.funding-list2,.funding-list3,.funding-list4{
		height : 100%;
		width : 25%;
		float:left;
	}
	.fundingList-area{
		height : 80%;
	}
	h3:hover {
		font-size : 32px;
		cursor : pointer;
	}
	#funding-enroll{
		float:right;
	}
	#pagingArea {width:fit-content; margin:auto;}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<h1 class="drinkFunding-title">주류 펀딩</h1>
	
	<div id="outer">
	<a id="funding-enroll" href="drinkEnrollForm.funding">술 펀딩 제품 등록</a>
		<div id="normal-drink">
			<h3 class="subtitle">최신순 주류 펀딩</h3>
			<div class="fundingList-area">
				<div class="funding-list1">
				
				</div>
				<div class="funding-list2">
				
				</div>
				<div class="funding-list3">
				
				</div>
				<div class="funding-list4">
				
				</div>
			
			</div>
		</div>
		<div id="hot-drink">
			<h3 class="subtitle2">hot 주류 펀딩</h3>
			<div class="fundingList-area">
				<div class="funding-list1">
				
				</div>
				<div class="funding-list2">
				
				</div>
				<div class="funding-list3">
				
				</div>
				<div class="funding-list4">
				
				</div>
			</div>
		</div>
		<div id="rank-drink">
			<h3 class="subtitle3">별점 순 주류 펀딩</h3>
			<div class="fundingList-area">
				<div class="funding-list1">
				
				</div>
				<div class="funding-list2">
				
				</div>
				<div class="funding-list3">
				
				</div>
				<div class="funding-list4">
				
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function(){
			$('.subtitle').click(function(){
				location.href = "newDrinkFunding.list";
			});
		})
		$(function(){
			$('.subtitle2').click(function(){
				location.href = "hotDrinkFunding.list";
			});
		})
		$(function(){
			$('.subtitle3').click(function(){
				location.href = "starDrinkFunding.list";
			});
		})
	</script>
	
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>