<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 기본 메인</title>
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

	<!-- Swiper -->
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

	<!-- productMain.jsp의 CSS파일 경로적기 -->
    <link href="resources/css/product/productMain.css" rel="stylesheet">
	
	
</head>

<body>
    <!--
        pdtCateg(PRODUCT_CATEGORY주류향수구분)
        주류면? (식별자 A)
        ${pdtMainTitleText} = BEST LIQOURS
        ${pdtCateg} = 주류
        향수면? (식별자B)
        ${pdtMainTitleText} = BEST PERFUMES
        ${pdtCateg} = 향수
    -->

	<jsp:include page="../common/header.jsp" />
	
	<div align="center">
		<button type="button" class="btn btn-primary btn-lg" onclick="location.href='addressEnrollForm.re'">배송지 입력페이지 가기</button>
	</div>
	
    <div id="productMainWrap" class="container">
		<c:choose>
			<c:when test="${not empty pdtCteg and (pdtCteg eq 'A' or pdtCteg eq 'F')}">
				<!-- 식별자 pdtCteg의 값(A/F)따라 주류/향수 슬라이더 생성 -->
				<!-- 최신순 -->
	            <div class="pdt-main-inner-wrap">
	                <div class="pdt-mn-title-area">
	                	<c:if test="${pdtCteg eq 'A'}">
		                    <div class="pdt-mn-title-text pdt-mn-text1">NEW LIQUORS</div>
		                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 주류 | 최신순</div>
	                	</c:if>
	                	<c:if test="${pdtCteg eq 'F'}">
	             	            <div class="pdt-mn-title-text pdt-mn-text1">NEW PERFUME</div>
		                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 향수 | 최신순</div>
	                	</c:if>
	                </div>
	                <div div class="pdt-list-btn">
		               	<c:if test="${pdtCteg eq 'A'}">
		                    <button type="button" onclick="adultValidation();" class="btn btn-outline-info">더보기 &gt;</button>
		               	</c:if>
		               	<c:if test="${pdtCteg eq 'F' }">
		               		<button type="button" onclick="location.href='perfumeList.pr'" class="btn btn-outline-info">더보기 &gt;</button>
		               	</c:if>
	                </div>
	                <!-- Slider main container -->
	                <div class="swiper">
	                    <!-- Additional required wrapper -->
	                    <div class="swiper-wrapper">
	                        <c:forEach var="product" items="${pMap.pMainListNew}">
		                        <c:if test="${pdtCteg eq 'A'}">
		                            <div class="swiper-slide" onclick="adultValidation('${product.pdtNo}');">
		                        </c:if>
		                        <c:if test="${pdtCteg eq 'F'}">
		                            <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
		                        </c:if>
			                        <img src="${product.pdtImgSrc}">
			                        <div class="productBlockText1">${product.pdtManufac}</div>
			                        <div class="productBlockText2">${product.pdtName}</div>
			                        <div class="productBlockText3">${product.reviewAvg}/5</div>
			                        <div class="productBlockText4">${product.pdtIntro}</div>
	                            </div>
	                        </c:forEach>
							<!-- If we need pagination -->
							<div class="swiper-pagination"></div>
							<!-- If we need navigation buttons -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
							<!-- If we need scrollbar -->
							<div class="swiper-scrollbar"></div>
	                    </div>
	                </div>
	            </div>
			
			
				<!-- 베스트셀러순 -->
				<div class="pdt-main-inner-wrap">
				    <div class="pdt-mn-title-area">
				    	<c:if test="${pdtCteg eq 'A'}">
				         <div class="pdt-mn-title-text pdt-mn-text1">BEST LIQUORS</div>
				         <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 주류 | 베스트셀러</div>
				    	</c:if>
				    	<c:if test="${pdtCteg eq 'F'}">
				 	            <div class="pdt-mn-title-text pdt-mn-text1">BEST PERFUME</div>
				         <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 향수 | 베스트셀러</div>
				    	</c:if>
				    </div>
				    <div div class="pdt-list-btn">
				    	<c:if test="${pdtCteg eq 'A'}">
				         <button type="button" onclick="adultValidation();" class="btn btn-outline-info">더보기 &gt;</button>
				    	</c:if>
				    	<c:if test="${pdtCteg eq 'F' }">
				    		<button type="button" onclick="location.href='perfumeList.pr'" class="btn btn-outline-info">더보기 &gt;</button>
				    	</c:if>
				    </div>
				    <!-- Slider main container -->
				    <div class="swiper">
				        <!-- Additional required wrapper -->
				        <div class="swiper-wrapper">
				            <c:forEach var="product" items="${pMap.pMainListBestSeller}">
				             <c:if test="${pdtCteg eq 'A'}">
				                 <div class="swiper-slide" onclick="adultValidation('${product.pdtNo}');">
				             </c:if>
				             <c:if test="${pdtCteg eq 'F'}">
				                 <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
				             </c:if>
				              <img src="${product.pdtImgSrc}">
				              <div class="productBlockText1">${product.pdtManufac}</div>
				              <div class="productBlockText2">${product.pdtName}</div>
				              <div class="productBlockText3">${product.reviewAvg}/5</div>
				              <div class="productBlockText4">${product.pdtIntro}</div>
				                </div>
				            </c:forEach>
							<!-- If we need pagination -->
							<div class="swiper-pagination"></div>
							<!-- If we need navigation buttons -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
							<!-- If we need scrollbar -->
							<div class="swiper-scrollbar"></div>
				        </div>
				    </div>
				</div>
			
			
				<!-- 인기순 -->
	            <div class="pdt-main-inner-wrap">
	                <div class="pdt-mn-title-area">
		                	<c:if test="${pdtCteg eq 'A'}">
			                    <div class="pdt-mn-title-text pdt-mn-text1">POPULAR LIQUORS</div>
			                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 주류 | 위시리스트</div>
		                	</c:if>
		                	<c:if test="${pdtCteg eq 'F'}">
	              	            <div class="pdt-mn-title-text pdt-mn-text1">POPULAR PERFUME</div>
			                    <div id="productMainTextBottom" class="pdt-mn-title-text pdt-mn-text2">브랜드 향수 | 위시리스트</div>
		                	</c:if>
	                </div>
	                <div div class="pdt-list-btn">
	                	<c:if test="${pdtCteg eq 'A'}">
		                    <button type="button" onclick="adultValidation();" class="btn btn-outline-info">더보기 &gt;</button>
	                	</c:if>
	                	<c:if test="${pdtCteg eq 'F' }">
	                		<button type="button" onclick="location.href='perfumeList.pr'" class="btn btn-outline-info">더보기 &gt;</button>
	                	</c:if>
	                </div>
	                <!-- Slider main container -->
	                <div class="swiper">
	                    <!-- Additional required wrapper -->
	                    <div class="swiper-wrapper">
	                        <c:forEach var="product" items="${pMap.pMainListPopular}">
		                        <c:if test="${pdtCteg eq 'A'}">
		                            <div class="swiper-slide" onclick="adultValidation('${product.pdtNo}');">
		                        </c:if>
		                        <c:if test="${pdtCteg eq 'F'}">
		                            <div class="swiper-slide" onclick="location.href='#${pdtNo}'">
		                        </c:if>
			                        <img src="${product.pdtImgSrc}">
			                        <div class="productBlockText1">${product.pdtManufac}</div>
			                        <div class="productBlockText2">${product.pdtName}</div>
			                        <div class="productBlockText3">${product.reviewAvg}/5</div>
			                        <div class="productBlockText4">${product.pdtIntro}</div>
	                            </div>
	                        </c:forEach>
							<!-- If we need pagination -->
							<div class="swiper-pagination"></div>
							<!-- If we need navigation buttons -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
							<!-- If we need scrollbar -->
							<div class="swiper-scrollbar"></div>
	                    </div>
	                </div>
	            </div>
			</c:when>
			
			<c:otherwise>
				<jsp:forward page="../common/errorPage.jsp" />
			</c:otherwise>
			
		</c:choose>
    </div>
    


    <!-- 모달 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
	<div id="pdtMainEnrollFormModal" class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div id="pdtMainModalTitle" class="modal-title">
						<!-- 모달 타이틀 부분 #pdtMainModalTitle  -->
						회원가입
					</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">ㅌ</button>
				</div>
				<div id="pdtMainModalBody" class="modal-body" align="center">
					<!-- 모달내용 #pdtMainModalBody -->
					<div>필수 입력 사항</div>
					<br>
					<form action="insert.me" method="post" id="pdtModalEnrollForm">
						<div class="form-group pdt-main-form-group">

							<label> *회원 구분 : </label> &nbsp;&nbsp;
							<input type="radio" id="pdtMainUser" value="U" name="memberType" checked>
							<label for="pdtMainUser">개인 회원</label> &nbsp;&nbsp;
							<input type="radio" id="pdtMainSale" value="S" name="memberType">
							<label for="pdtMainSale">사업자 회원</label><br>
							
							<label for="pdtMainUserEmail">* 아이디(이메일) : </label>
							<input type="text" class="form-control" id="pdtMainUserEmail" placeholder="아이디를 입력해주세요." name="userEmail" required><br>
							<div id="pdtMainCheckResult"></div>

							<label for="pdtMainUserPwd">* 비밀번호 : </label>
							<input type="text" class="form-control" id="pdtMainUserPwd" name="userPwd" onchange="check_pw()" placeholder="비밀번호를 입력해주세요."  required><br>
							<label for="pdtMainCheckPwd">* 비밀번호 확인 : </label>
							<input type="text" class="form-control" id="pdtMainCheckPwd" name="checkPwd" onchange="check_pw()" placeholder="비밀번호를 다시 입력해주세요."  required><br>
							<span id="pdtMainCheck"></span>
							
							<label for="pdtMainUserName">* 이름 : </label>
							<input type="text" class="form-control" id="pdtMainUserName" placeholder="이름을 입력해주세요." name="userName" required><br>
							<label for="pdtMainNickName">* 닉네임 : </label>
							<input type="text" class="form-control" id="pdtMainNickName" placeholder="닉네임을 입력해주세요." name="nickName" required><br>
							<label for="pdtMainBirthDate">* 생년월일 : </label>
							<input type="date" class="form-control" id="pdtMainBirthDate" data-placeholder="생년월일을 입력해주세요." name="birthDate" required><br>
							<label for="pdtMainPhone">* 전화번호 : </label>
							<input type="text" class="form-control" id="pdtMainPhone" placeholder="전화번호를 입력해주세요." name="phone" required><br>
							
							<label>* 주소</label><br>
							<label for="pdtMainReceiverName">* 받는 사람 이름 : </label>
							<input type="text" class="form-control" id="pdtMainReceiverName" placeholder="받는 사람 이름을 입력해주세요." name="receiverName" required><br>
							<button type="button" onclick="execDaumPostcode();" id="pdtMainPoCodeBtn" class="form-control btn btn-info">우편번호찾기</button><br><br>
							<input type="text" class="form-control" id="pdtMainPostalCode" placeholder="우편번호" name="postalCode" required><br><br>
							<input type="text" class="form-control" id="pdtMainAddress" placeholder="주소" name="address" required><br><br>
							<input type="text" class="form-control" id="pdtMainAddressDetail" placeholder="상세주소" name="addressDetail"><br>
						</div>
						<br>
						<div class="btns modal-footer" align="center">
							<button type="reset" id="pdtMainResetBtn" class="btn btn-danger">초기화</button>
							<button type="submit" id="pdtMainSubmitBtn" class="btn btn-primary">회원가입</button>
						</div>
					</form> 
				</div>
			</div>
		</div>
	</div>
	
	
	
	<script>
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
	</script>

	<script>
	    // 슬라이더 동작 정의
	    const swiper = new Swiper('.swiper', {
	        autoplay : {
	            delay : 2500 // 2.5초마다 이미지 변경
	        },
	        loop : true, //반복 재생 여부
	        slidesPerView : 3, // 이전, 이후 사진 미리보기 갯수
	        pagination: { // 페이징 버튼 클릭 시 이미지 이동 가능
	            el: '.swiper-pagination',
	            clickable: true
	        },
	        navigation: { // 화살표 버튼 클릭 시 이미지 이동 가능
	            prevEl: '.swiper-button-prev',
	            nextEl: '.swiper-button-next'
	        }
	    });
	</script>
	
	<script>
		// 변수선언
		var $pdtMainModalWrap = $('#pdtMainModalWrap');
		var $pdtMainModalTitle = $('#pdtMainModalTitle');
		var $pdtMainModalBody = $('#pdtMainModalBody');
		
	
		// 경우의 수
		// 로그인O 성인인증O => 주류상품 전체조회 원함
		// 로그인O 성인인증O => 주류상품 디테일조회 원함
		// 로그인O 성인인증X => 성인인증 해야함
		// 로그인X 성인인증X => 로그인 원함
		// 로그인X 성인인증X => 회원가입 원함
		function adultValidation(pdtNo) {
			var loginUserStatus = '${loginUser.status}';
			if(loginUserStatus == 'Y') { // 로그인O
				if(loginUserStatus == 'Y') { // 로그인O 성인인증O
					location.href = !(isNaN(pdtNo)) ? "selectAlcoholPdtDetail.pr?pdtNo=" + pdtNo
												    : "selectAlcoholPdtList.pr";
				}
				else { // 로그인O 성인인증X
					// @@@@@@@@성인인증 기능 아직 없음(지민님/1124다시 더블체크하기)
				}
			}
			else { // 로그인X / 실패 시 여기로 돌아옴!(ajax아니고 서버단에서 getHeader(Referer하기))
				console.log('ddddddddddddddddddddd');
				$('#pdtMainEnrollFormModal').show();
				$('#pdtFirstModalLoginBtn').click(() => {
					console.log('로그인요청');
				});
				$('#pdtFirstModalEnrollBtn').click(() => {
					console.log('회원가입요청');
					
				});
			}
		};
	</script>
	
	


	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="resources/js/member/memberEnrollForm.js"></script>

</body>

</html>