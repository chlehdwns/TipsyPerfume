<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	<style>
	div{
		box-sizing : border-box;
	}
	.buy-title{
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
	.buy-info {
		margin-top : 20px;
		margin-bottom : 20px;
		margin-left : 20px;
	}
	.order-info{
		width : 260px;
		border : none;
		margin-left : 20px;
	}
	
	
	
	
</style>
	
	
	
	

<meta charset="UTF-8">
<title>구매 페이지</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<h2 class="buy-title">${pdtName} 펀딩 창</h2>
	<div class="wrapper">
			<div class="product-img">
				<img alt="사진" src="/ttp${pdtFileUpload }">
						
			</div>
			<div class="product-info">
				가격 : <input class="order-info" type="text" name ="orderPrice" value="${pdtPrice}  " readonly>
				
				개수 : <select name="orderQuantiry" id="order">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
				
				<h5 class="buy-info"></h5>
				
				
				
				
			</div>
	</div>
	<script>
		// 총 가격 구하기
		$(function(){
			$('#order').change(() => {
				const a = $('#order option:selected').val();
				//console.log(a);
				//console.log(${pdtPrice});
				
		
				const total = '총가격 : '+ a*${pdtPrice} + '원';
				console.log(total);
				$('.buy-info').html(total);
			})
			
			
			
			
		})
	</script>
	
	
	
		
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>