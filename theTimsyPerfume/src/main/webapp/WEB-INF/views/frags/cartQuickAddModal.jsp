<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Quick Add</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>


	<!-- 모달trigger
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cartQuickAddModal">
	  Launch demo modal
	</button>
	-->

	<!-- 장바구니 수량선택 모달 -->
	<div class="modal fade" id="cartQuickAddModal" tabindex="-1"
		aria-labelledby="cartQuickAddModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="cartQuickAddModalLabel">옵션을 선택해주세요</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<br>
					<div></div>
					<select id="cartQuickAddSelect" class="form-select">
						<!-- 옵션생길영역 -->
					</select>
					<br><br>
				</div>
				<div class="modal-footer">
					<button id="cartQuickAddBtn" type="button" class="btn btn-primary">장바구니
						담기</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		// 호출 시
		
		var $cartModalSelectInput = $('#cartQuickAddSelect');
		
		function showCartQuickAddModal(pdtNo) {
			$.ajax({
				url : 'ajaxShowCartQuickAddModal.pa',
				data : { pdtNo : pdtNo },
				success : result => {
					$cartModalSelectInput.before('<div>${pdtName}<div>');
					var valueStr = '';
 					for(let i in result) {
						valueStr += '<option value="' + result[i].pdtOptionNo + '">' + result[i].pdtOptionFirst + '</option>';
					}
 					$cartModalSelectInput.html(valueStr);
					$('#cartQuickAddModal').modal("show");
				},
				error : () => {
					hideCartQuickAddModal();
					alert('에러발생! 잠시 후 다시 시도해주세요!');
				}
			})
		};
		
		function hideCartQuickAddModal() {
			$('#cartQuickAddModal').modal("hide");
		}

	</script>

	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>