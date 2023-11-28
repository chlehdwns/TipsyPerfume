// date타입 날짜 비활성화
$(() => {
	var $pdtModalDateInput = $('#pdtMainBirthDate');
	$pdtModalDateInput.prop('min', '1900-01-01').prop('max', new Date().toISOString().split('T')[0]);
	//$pdtModalDateInput.prop('min', new Date().toISOString().split('T')[0]); 오늘 이전 비활성화 시
});

$('#pdtMainResetBtn').click(() => {
	return confirm('리셋하시겠습니까?');
});
$('#pdtMainSubmitBtn').click(() => {
	return confirm('입력하신 정보로 회원가입을 할까요?');
});
		

// 로그인/회원가입 모달 열기
function openloginJoinModal() {
	$('#pdtMainFirstModal').modal("show");
	
	$('#pdtFirstModalLoginBtn').click(() => {
		$('#pdtMainFirstModal').modal("hide");
		$('#pdtLoginModal').modal("show");
		console.log('로그인요청');
	});
	
	$('#pdtFirstModalEnrollBtn').click(() => {
		$('#pdtMainFirstModal').modal("hide");
		$('#pdtMainEnrollFormModal').modal("show");
		console.log('회원가입요청');
	});
}