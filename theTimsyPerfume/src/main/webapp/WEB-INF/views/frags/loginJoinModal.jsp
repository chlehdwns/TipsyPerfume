<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 회원가입 모달</title>
    	성인인가요
	${loginUser.adultStatus}	성인인가요
	${loginUser.adultStatus}	성인인가요
	${loginUser.adultStatus}	성인인가요
	${loginUser.adultStatus}	성인인가요
	${loginUser.adultStatus}	성인인가요
	${loginUser.adultStatus}
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
	
	<!-- Bootstrap v4 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

	<!-- CSS파일 경로적기 -->
    <link href="resources/css/frags/loginJoinModal.css" rel="stylesheet">
    <link href="resources/css/member/loginForm.css" rel="stylesheet">
    	
</head>

<body>
    <!-- 모달1: 로그인 / 회원가입 선택 버튼 ~~~~~~~~~~~~~~~~~~~~ -->
    <div class="modal fade" id="pdtMainFirstModal" tabindex="-1" aria-labelledby="pdtMainFirstModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div id="pdtMainFirstModalLabel" class="modal-title">
						로그인이 필요한 서비스입니다
					</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" align="center">
					<button type="button" id="pdtFirstModalLoginBtn" class="btn btn-primary">로그인하러 가기</button>
					<br><br>
					<button type="button" id="pdtFirstModalEnrollBtn" class="btn btn-info">회원가입하러 가기</button>
					<br><br><br>
				</div>
			</div>
		</div>
	</div>
    
    <!-- 모달2: 로그인 양식 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div class="modal fade" id="pdtLoginModal" tabindex="-1" aria-labelledby="pdtLoginModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div id="pdtLoginModalLabel" class="modal-title">
						로그인이 필요한 서비스입니다
					</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" align="center">
					<div class="box"></div>
						<div class="header">
							<div class="title">
								<h4 class="title" align="center">로그인</h4>
							</div>
							<div class="center-wrapper" align="center">
								<div class="login-wrapper" >
									<form action="login.me" method="post"  id="login-form">
										<input type="text" id="userEmail" name="userEmail" placeholder="이메일을 입력해주세요." >
										<input type="password" id="userPwd" name="userPwd" placeholder="비밀번호를 입력해주세요." >
										<input type="checkbox" id="idSaveCheck" style="font-size:small; height:10px;">
				  						<label for="remember" style="font-size:small">아이디 저장</label><br>
										<input type="submit" value="Login">
										<br><br><br>
									</form>
								</div>
							</div>
						</div>
					<div class="box"></div>
				</div><!-- 바디끝 -->
			</div>
		</div>
	</div>
    
    
    <!-- 모달3: 회원가입 양식 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <div class="modal fade" id="pdtMainEnrollFormModal" tabindex="-1" aria-labelledby="pdtMainEnrollFormModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div id="pdtMainEnrollFormModalLabel" class="modal-title">
						회원가입
					</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" align="center">
					<div>필수 입력 사항</div>
					<br>
					<form action="insert.me" method="post" id="enroll-form"><!-- id="enroll-form" --> 
						<div class="form-group pdt-main-form-group">

							<label> *회원 구분 : </label> &nbsp;&nbsp;
							<input type="radio" id="User" value="U" name="memberType" checked>
							<label for="User">개인 회원</label> &nbsp;&nbsp;
							<input type="radio" id="Sale" value="S" name="memberType">
							<label for="Sale">사업자 회원</label><br>
							
							<label for="userEmail">* 아이디(이메일) : </label>
							<input type="text" class="form-control" id="userEmail" placeholder="아이디를 입력해주세요." name="userEmail" required><br>
							<div id="checkResult"></div>

							<label for="userPwd">* 비밀번호 : </label>
							<input type="text" class="form-control" id="userPwd" name="userPwd" onchange="check_pw();" placeholder="비밀번호를 입력해주세요."  required><br>
							<label for="checkPwd">* 비밀번호 확인 : </label>
							<input type="text" class="form-control" id="checkPwd" name="checkPwd" onchange="check_pw();" placeholder="비밀번호를 다시 입력해주세요."  required><br>
							<span id="check"></span>
							
							<label for="userName">* 이름 : </label>
							<input type="text" class="form-control" id="userName" placeholder="이름을 입력해주세요." name="userName" required><br>
							<label for="nickName">* 닉네임 : </label>
							<input type="text" class="form-control" id="nickName" placeholder="닉네임을 입력해주세요." name="nickName" required><br>
							<label for="birthDate">* 생년월일 : </label>
							<input type="date" class="form-control" id="birthDate" data-placeholder="생년월일을 입력해주세요." name="birthDate" required><br>
							<label for="phone">* 전화번호 : </label>
							<input type="text" class="form-control" id="phone" placeholder="전화번호를 입력해주세요." name="phone" required><br>
							
							<label>* 주소</label><br>
							<label for="receiverName">* 받는 사람 이름 : </label>
							<input type="text" class="form-control" id="receiverName" placeholder="받는 사람 이름을 입력해주세요." name="receiverName" required><br>
							
							<button type="button" onclick="execDaumPostcode();" id="pdtMainPoCodeBtn" class="form-control btn btn-info">우편번호찾기</button><br><br>
							<input type="text" class="form-control" id="postalCode" placeholder="우편번호" name="postalCode" required><br><br>
							
							<input type="text" class="form-control" id="address" placeholder="주소" name="address" required><br><br>
							<input type="text" class="form-control" id="addressDetail" placeholder="상세주소" name="addressDetail"><br>
						</div>
						<br>
						<div class="modal-footer" align="center">
							<button type="reset" id="pdtMainResetBtn" class="btn btn-danger">초기화</button>
							<button type="submit" id="pdtMainSubmitBtn" class="btn btn-primary">회원가입</button>
						</div>
					</form> 
				</div>
			</div>
		</div>
	</div>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="resources/js/frags/loginJoinModal.js"></script>
	<script src="resources/js/member/memberEnrollForm.js"></script>
    <script src="resources/js/member/loginForm.js"></script>

</body>

</html>