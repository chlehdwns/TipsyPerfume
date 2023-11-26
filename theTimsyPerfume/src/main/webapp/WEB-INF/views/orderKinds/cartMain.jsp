<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


<style>
	#cartMainWrap{width: 950px; margin: auto;}
	#cartMainWrap div{border: 1px solid black; width: 100%;}
	#cartMainWrap table{width: 100%; margin: auto; display: block;}
	#cartMainWrap th, tr, td{border: 1px solid black;}
</style>
</head>
<body>

	<div id="cartMainWrap">
		<div class="row">
			<div class="col-8">전체선택</div>
			<div class="col-2"><button class="btn btn-danger">삭제</button></div>
			<div class="col-2"><button class="btn btn-primary">주문</button></div>
		</div>
		<br/><br/>
			
			<div class="row">
				<div class="col" style="width:30px"><input type="checkbox"></div>
				<div class="col">상품</div>
				<div class="col">수량</div>
				<div class="col">가격</div>
				<div class="col">합계</div>
				<div class="col">할인적용/배송</div>
			</div>
			<table>
				<thead>
					<tr>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>상품</td>
						<td>수량</td>
						<td>가격</td>
						<td>합계</td>
						<td>할인적용/배송</td>
					</tr>
				</tbody>
			</table>
			
		
	
	
	</div>
	


</body>
</html>