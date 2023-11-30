var $cartModalSelectInput = $('#cartQuickAddSelect');

// 카트 수량선택 모달 닫기
function hideCartQuickAddModal() {
	$('#cartQuickAddModal').modal("hide");
}

// 카트 수량선택 모달 호출
function showCartQuickAddModal(pdtNo, pdtName) {
	$.ajax({
		url : 'ajaxShowCartQuickAddModal.pa',
		data : { pdtNo : pdtNo },
		success : result => {
			$cartModalSelectInput.prev('div').html(pdtName + '<br><br>');
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



