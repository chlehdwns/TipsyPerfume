<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디테일 뷰 </title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	div{
		box-sizing : border-box;
	}
	.detail-title{
		text-align : center;
		margin-top : 80px;
		margin-bottom : 100px;
		font-weight : bolder;
	}
	.wrapper{
		width : 1200px;
		height : 1000px;
		margin-left : 350px;
	}
	.wrapper>div{
		height : 100%;
		float : left;
		
	}
	.product-img{
		width : 40%;
		
	}
	.product-info{
		width : 60%;
		
	}
	.product-img img{
		width : 100%;
		height : 50%;
	}
	.product-dinfo{
		text-align : center;
		margin-bottom : 20px;
	}
	#product-description{
		width : 500px;
		height : 250px;
		margin-left : 150px;
		resize : none;
		
	}
	#funding-delete{
		margin-top : 20px;
	}
	
	#back {
		margin-left : 50px;
		color : black;
		list-style: none;
		text-decoration: none;
	}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
		<h4 class="detail-title">${fundingDetailList.pdtName }의 펀딩 정보</h4>
		<div class="wrapper">
			<div class="product-img">
				<img alt="사진" src="/ttp${fundingDetailList.pdtFileUpload }">
				<h6>review:0개            조회수:${fundingDetailList.pdtCount }</h6>
				<c:if test="${sessionScope.loginUser.memberType eq 'S'}">
					<form method="post" action="updateForm.fd">
						
						<input type="hidden" name="pno" value="${pno}"/>
						<button id="funding-update" type="submit">술 펀딩 수정</button>
					</form>
					<form method="post" action="delete.fd">
						<input type="hidden" name="pno" value="${pno }"/>
						<button id="funding-delete" type="submit">술 펀딩삭제</button>
					</form>
				</c:if>
			</div>
			<div class="product-info">
				
				<h5 class="product-dinfo">제품명 : ${fundingDetailList.pdtName }</h5>
				<h5 class="product-dinfo">가격 : ${fundingDetailList.pdtPrice }</h5>
				<h5 class="product-dinfo">만든사람 : ${fundingDetailList.pdtManufac }</h5>
				<h5 class="product-dinfo">상품 설명  </h5> 
				<textarea id="product-description" readonly placeholder="${fundingDetailList.pdtDescription }
				용량 : ${fundingDetailList.pdtOptionFirst }ml
				도수 : ${fundingDetailList.pdtOptionSecond }도" ></textarea>
				<h5 class="product-dinfo">배송비 및 배송방법 : ${fundingDetailList.pdtShipping }</h5>
				<h5 class="product-dinfo">0/${fundingDetailList.cuttingPrice }</h5>
				<h6 class="product-dinfo">마감 날짜 : ${fundingDetailList.cuttingDate }</h6>
				<form id="fundingForm" method="post" action="purchase.fd">
					<input type="hidden" name="pno" value="${pno }">
					<input type="hidden" name="pdtName" value="${fundingDetailList.pdtName }">
					<input type="hidden" name="pdtPrice" value=" ${fundingDetailList.pdtPrice }">
					<input type="hidden" name="pdtShipping" value="${fundingDetailList.pdtShipping }">
					<input type="hidden" name="pdtFileUpload" value="${fundingDetailList.pdtFileUpload }">
					
					
						
							<c:choose>
								
									<c:when test="${cutting eq true}">
										
											<button type="submit">예약구매</button>
										
									</c:when>
								
								<c:otherwise>
									<button type="button" disabled>마감</button>
								</c:otherwise>
							</c:choose>
					
						
						
					
					<a href="funding.list" id="back">뒤로가기</a>
				</form>
				
					
					
				
			</div>
			
			
		</div>
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>