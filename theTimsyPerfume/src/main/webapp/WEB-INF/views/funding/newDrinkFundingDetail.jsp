<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디테일 뷰 </title>
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
			</div>
			<div class="product-info">
				<h5 class="product-dinfo">제품명 : ${fundingDetailList.pdtName }</h5>
				<h5 class="product-dinfo">가격 : ${fundingDetailList.pdtPrice }</h5>
				<h5 class="product-dinfo">만든사람 : ${fundingDetailList.pdtManufac }</h5>
				<h5 class="product-dinfo">상품 설명  </h5> <textarea id="product-description" readonly>${drinkFundingList.pdtDescription }</textarea>
				<h5 class="product-dinfo">배송비 및 배송방법 : ${fundingDetailList.pdtShipping }</h5>
				<h5 class="product-dinfo">0/${fundingDetailList.cuttingPrice }</h5>
				<h6 class="product-dinfo">마감 날짜 : ${fundingDetailList.cuttingDate }</h6>
				<form id="fundingForm" method="post" action="funding.dr">
					<input type="hidden" name="pdtNo" value="${pdtNo }">
					<button type="submit">예약구매</button>
				</form>
			</div>
			
		</div>
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>