// 카트 수량선택 모달 호출
function ajaxCreateCartQuickAddModal($pdtNo, $pdtName) {
	console.log('모달창 내부 : ' + $pdtNo);

	$.ajax({
		url : 'ajaxCreateCartQuickAddModal.pa',
		data : { pdtNo : $pdtNo },
		success : result => {
			let $cartModalSelectInput = $('#cartModalSelectInput');
			
			$cartModalSelectInput.prev('div').html($pdtName + '<br><br>').attr('id', $pdtNo);
			
			var optionValStr = '';
			for(let i in result) {
				optionValStr += '<option value="' + result[i].pdtOptionNo + '">' + result[i].pdtOptionFirst + '</option>';
			}
			$cartModalSelectInput.html(optionValStr);
			
			$('#cartQuickAddModal').modal("show");
		},
		error : () => {
			alert('에러발생! 잠시 후 다시 시도해주세요!');
		}
	})

	$('#cartQuickAddModal').modal("show");
	console.log('모달창 내부 Ajax요청 후 돌아올 때 : ' + $pdtNo);
};

// 카트 수량선택 모달 닫기
function hideCartQuickAddModal() {
	$('#cartQuickAddModal').modal("hide");
}






