<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입!!!!!!!!!!</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
    
    
    
    
    
    
    
    
    
    
    
    
    </style>
</head>

<body>

	<!-- 메뉴바 -->
	<!--<jsp:include page="../common/header.jsp" />-->
	<div class="content">
	
		<div class="content1">
			<div class="content2">
				<h1>회원가입</h1>
				<hr>
				<h3>일반 회원 가입</h3>

				<h2>필수 입력 사항</h2>
				
				<label for=""> *회원 구분 : </label> &nbsp;&nbsp;
                    <input type="radio" id="User" value="U" name="memberType" checked>
                    <label for="User">남자</label> &nbsp;&nbsp;
                    <input type="radio" id="Sale" value="S" name="memberType">
                    <label for="Sale">여자</label> &nbsp;&nbsp;

				<form action="insert.me" method="post" id="enroll-form">
					<div class="form-group">

						<label for="userId">* 아이디(이메일) : </label>
						<input type="text" class="form-control" id="userId" placeholder="아이디를 입력해주세요." name="userId" required><br>
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>
						
						<label for="userPwd">* 비밀번호 : </label>
						<input type="text" class="form-control" id="userPwd" placeholder="비밀번호를 입력해주세요." name="userPwd" required><br>
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>
						
						<label for="userPwd">* 비밀번호 확인 : </label>
						<input type="text" class="form-control" id="userPwd" placeholder="비밀번호를 입력해주세요." name="userPwd" required><br>
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>
						
						<label for="userName">* 이름 : </label>
						<input type="text" class="form-control" id="userName" placeholder="이름을 입력해주세요." name="userName" required><br>
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>

						<label for="nickName">* 닉네임 : </label>
						<input type="text" class="form-control" id="nickName" placeholder="닉네임을 입력해주세요." name="nickName" required><br>
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>

						<label for="adultStatus">* 생년월일 : </label>
						<input type="text" class="form-control" id="adultStatus" placeholder="생년월일을 입력해주세요." name="adultStatus" required><br>
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>

						<label for="phone">* 전화번호 : </label>
						<input type="text" class="form-control" id="phone" placeholder="전화번호를 입력해주세요." name="phone" required><br>
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>

						<label for="address"> 주소</label>
						<input type="text">
						<br>
						
						<input type="text" class="form-control" id="postalCode" placeholder="우편번호" name="postalCode" required><br>
						<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" class="form-control">
						<div id="checkResult" style="font-size:0.5em; display:none;"></div>
						<br>
						<input type="text" class="form-control" id="address" placeholder="주소" name="address" required><br>
						<input type="text" class="form-control" id="addressDetail" placeholder="상세주소" name="addressDetail" required><br>
						

					
					
					
					
					
					
					
					
					
					
					
					</div>
				
				
				
				
				
				
				
				
				
				
				</form> 
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	</div><!-- 제일 겉 div -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		    new daum.Postcode({
		        oncomplete: function(data) {
		        	 // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

		            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		            let addr = ''; // 주소 변수

		            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                addr = data.roadAddress;
		            } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                addr = data.jibunAddress;
		            }

		            $("#postcode").val(data.zonecode);
		            $("#address").val(addr);
		            $("#address").focus();
		          }
		      }).open();
		</script>
		
		
	<!--<jsp:include page="../common/footer.jsp" />-->
</body>
</html>