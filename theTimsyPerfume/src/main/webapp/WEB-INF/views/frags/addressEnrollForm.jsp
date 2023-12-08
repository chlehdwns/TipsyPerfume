<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 입력</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
	<link rel="stylesheet" href="resources/css/frags/addressEnrollForm.css">
	
	
	
</head>
<body>
	<br><br>

	<div id="addressContainer" class="mt-3 modal fade" tabindex="-1" aria-labelledby="addressContainerLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
		
				<div class="modal-header">
					<h5 class="modal-title" id="addressContainerLabel">배송지</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<br>
					<!-- Nav tabs -->
					<ul class="nav nav-tabs nav-pills nav-justified">
						<li class="nav-item">
							<a class="nav-link active" data-toggle="tab" href="#menu1">배송지 입력</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#menu2">배송지 선택</a>
						</li>
					</ul>
			
					<!-- Tab panes -->
					<div class="tab-content">
						<div id="menu1" class="container tab-pane active">
						<br><br>
							<!-- 배송지폼 -->
							<form id="receiverForm">
							<input type="hidden" name="userNo" value="2"><!-- EL구문으로바꾸기 -->
								<div class="form-group">
									<label for="placeAlias">배송지 별명</label>
									<input type="text" class="form-control" id="placeAlias" name="placeAlias" placeholder="ex) 집, 회사 등">
								</div>
								
								<div class="form-group">
									<label for="receiverName">수령인 *</label>
									<input type="text" class="form-control" id="receiverName" name="receiverName" placeholder="이름" required>
								</div>
								
								<div class="form-group">
									<label for="phone">전화번호 *</label>
									<input type="text" class="form-control" id="phone" name="phone" placeholder="전화번호" required>
								</div>
								<br>
								
								<label for="address">주소 *</label>
								<div id="searchingAreaPopUp">
									<div class="row form-group">
										<div class="col">
									  		<input type="text" class="form-control" id="postalCode" name="postalCode" placeholder="우편번호" required>
										</div>
										<div class="col">
									  		<button type="button" class="btn btn-info form-control">주소 검색</button>
										</div>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" id="address" name="address" placeholder="도로명 주소" required>
									</div>
								</div>
									
								<div class="form-group">
									<input type="text" class="form-control" id="addressDetail" name="addressDetail" placeholder="상세주소">
								</div>
								
								<div class="custom-control custom-checkbox">
								    <input type="checkbox" class="custom-control-input" value="Y" id="primaryStatus" name="primaryStatus">
								    <label class="custom-control-label" for="primaryStatus">이 배송지를 기본 배송지로 저장하시겠습니까?</label>
							  	</div>
								<br><br>
								<div class="modal-footer">
									<button  type="submit" class="btn btn-primary" id="addAddressBtn" style="width:100%;">저장</button>
								</div>
							</form>
						</div>
						<div id="menu2" class="container tab-pane fade">
							<br>
							<p>~~~ 선택하세요 ~~~리스트리스트</p>
						</div>
					</div>
				</div>
			
			</div>
		</div>
	</div>



	<script src="resources/js/frags/addressEnrollForm.js"></script>

	<br><br><br><br><br>
</body>
</html>