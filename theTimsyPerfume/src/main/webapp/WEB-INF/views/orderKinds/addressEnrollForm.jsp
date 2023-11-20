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
	
	<style>
		#addressContainer {width : 500px;}
		
		/* 인풋 포커스 테두리 효과 없애기 CSS */
		#postalCode:focus,
		#address:focus {
			caret-color: transparent;
			outline: none;
 			box-shadow: none;
 			border: 1px solid #ced4da;
		}
		
		#searchingAreaPopUp:hover,
		#searchingAreaPopUp input:hover {
			cursor: pointer;
		}
		
	</style>
	
	
	
</head>
<body>
	<br><br>
	<div id="addressContainer" class="container mt-3">
		<h2>배송지</h2>
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
						<label for="email">이메일</label>
						<input type="email" class="form-control" id="email" name="email" placeholder="이메일">
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
					
					<button type="submit" class="btn btn-primary" id="addAddressBtn" style="width:100%;">저장</button>
				</form>
			</div>
			
			
			<div id="menu2" class="container tab-pane fade">
				<br>
				<p>~~~ 선택하세요 ~~~리스트리스트</p>
			</div>
		</div>
	</div>


	<!-- 주소검색 API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>// 주소검색
		$('#searchingAreaPopUp').on('click', () => {
		    new daum.Postcode({
		        oncomplete: data => {
		            $('#postalCode').val(data.zonecode);
		            $('#address').val(data.roadAddress + ' (' + data.buildingName + ')');
		            $('#addressDetail').focus();
		        }
		    }).open();
		    return false;
		});
	</script>
	
	<script>	
		// input 입력(디폴트이벤트) 방지
		$('#postalCode, #address').on('keydown paste', (e) => {
			console.log(e);
			e.preventDefault();
		});
		
		// ajax요청
		$(() => {
			$('#receiverForm').submit(e => {
				e.preventDefault();
				//console.log(e);
				var $receiverForm = $('#receiverForm');
				//console.log($receiverForm);
				
				$.ajax({
					url : 'ajaxInsertReceiver.re',
					data : $receiverForm.serialize(),
					type : 'POST',
					success : result => {
						console.log('성공');
						// 성공 얼럿
						alert(result);
						// 폼 리셋 (reset은 바닐라자바 => [0]으로 추출)
						$receiverForm[0].reset();
					},
					error : result => {
						console.log('실패');
						alert(result);
					}
				});
				return false;
			});
		});
	</script>



	<br><br><br><br><br>
</body>
</html>