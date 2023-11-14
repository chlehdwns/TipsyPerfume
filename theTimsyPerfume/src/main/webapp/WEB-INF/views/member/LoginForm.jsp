<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<style>

*{
	padding:0;
	margin:0;
	border:none;
	
}
.box{
	width:1200px;
	height:200px;

}

.login-wrapper{
    width: 400px;
    height: 250px;
    padding: 40px;
    box-sizing: border-box;
}

.login-wrapper > h2{
    font-size: 24px;
    color: #6A24FE;
    margin-bottom: 20px;
}
#login-form > input{
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F8F8F8;
}
#login-form > input::placeholder{
    color: #D2D2D2;
}
#login-form > input[type="submit"]{
    color: #fff;
    font-size: 16px;
    background-color: rgb(254, 218, 36);
    margin-top: 20px;
}



#login-form > label{
    color: #999999;
}


.enroll-wrapper{
    width: 400px;
    height: 250px;
    padding: 40px;
    box-sizing: border-box;
	margin-right: 80px;
	
}

.enroll-wrapper > input{
    width: 100%;
    height: 48px;
    padding: 0 10px;
    box-sizing: border-box;
    margin-bottom: 16px;
    border-radius: 6px;
    background-color: #F8F8F8;
}
.enroll-wrapper > input::placeholder{
    color: #D2D2D2;
}
</style>


</head>
<body>
	<jsp:include page="../common/header.jsp" />
	
	<div class="allouter">
	
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
						
						<input type="submit" value="Login">
					</form>
				</div>
			</div>
		</div>
	</div>
	

	<div class="title">
		<h4 class="title" align="center">간편 로그인</h4>
			
		
	</div>


	<div class="center-wrapper" align="center">
		<div class="enroll-wrapper" align="center">
			<div class="enroll-wrapper" >
				<input type="submit" value="카카오톡으로 로그인"><br>
				<input type="submit" value="네이버로 로그인">
			</div>
		</div>
	</div>

<jsp:include page="../common/footer.jsp" />
</body>
</html>