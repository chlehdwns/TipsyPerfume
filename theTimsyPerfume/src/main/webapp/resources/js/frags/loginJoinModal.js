/*
	css, js파일 가져오기 예시
    <link href="resources/css/frags/loginJoinModal.css" rel="stylesheet">
    <script src="resources/js/member/loginForm.js"></script>
	<script src="resources/js/member/memberEnrollForm.js"></script>
*/

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