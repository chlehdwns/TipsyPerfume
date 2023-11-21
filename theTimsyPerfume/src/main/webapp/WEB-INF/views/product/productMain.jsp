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
	<div id="pdtMainModalWrap" class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div id="pdtMainModalTitle" class="modal-title">
						<!-- 모달 타이틀 부분 #pdtMainModalTitle
						<br>
						로그인이 필요한 서비스입니다
						<br>  -->
					</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div id="pdtMainModalBody" class="modal-body" align="center">

					<!-- 모달내용 #pdtMainModalBody
					<button type="button" id="pdtFirstModalLoginBtn" class="btn btn-primary">로그인하러 가기</button>
					<br><br>
					<button type="button" id="pdtFirstModalEnrollBtn" class="btn btn-info">회원가입하러 가기</button>
					<br><br><br>
					<div class="btns modal-footer" align="center">
						<button type="reset" id="pdtMainResetBtn" class="btn btn-danger">초기화</button>
						<button type="submit" id="pdtMainSubmitBtn" class="btn btn-primary">회원가입</button>
					</div> -->


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
		
		// 리셋 or 서브밋 컨펌
		$('#pdtMainResetBtn').click(() => {
			return confirm('리셋하시겠습니까?');
		});
		$('#pdtMainSubmitBtn').click(() => {
			return confirm('입력하신 정보로 회원가입을 할까요?');
		});
	</script>
	
	
	
	
	
	
	
	

	<script>
		// 변수선언
		var $pdtMainModalWrap = $('#pdtMainModalWrap');
		var $pdtMainModalTitle = $('#pdtMainModalTitle');
		var $pdtMainModalBody = $('#pdtMainModalBody');
		
		var pdtModalTitleStr = '';
		var pdtModalContentStr = '';

		
		// 모달영역 html 변경하는 함수
		function fillPdtMainModalArea() {
			$pdtMainModalBody.html(pdtModalTitleStr);
			$pdtMainModalBody.html(pdtModalContentStr);
		};
		// 첫번째 모달(로그인/회원가입 버튼) 문자열 만들고 html() : 반환형 모달요소($pdtMainModalWrap)
		function fillPdtMainFirstModal() {
			pdtModalTitleStr = '<br>로그인이 필요한 서비스입니다<br>';
			pdtModalContentStr = '<button type="button" id="pdtFirstModalLoginBtn" class="btn btn-primary">로그인하러 가기</button>'
							   + '<br><br>'
							   + '<button type="button" id="pdtFirstModalEnrollBtn" class="btn btn-info">회원가입하러 가기</button>'
							   + '<br><br><br>';
			fillPdtMainModalArea();
			return $pdtMainModalWrap;
		};
		// 로그인 모달 문자열 만들고 html() : 반환형 모달요소($pdtMainModalWrap)
		function fillPdtMainLoginModal() {
			pdtModalTitleStr = ;
			pdtModalContentStr = ;
			fillPdtMainModalArea();
			return
		};
		// 회원가입 모달 문자열 만들고 html() : 반환형 모달요소($pdtMainModalWrap)
		
		
		

		// 로그인/성인인증 여부 판별 후
		// 포워딩하기 or 로그인창 or 회원가입창 띄워주는 함수
		function adultValidation(pdtNo) {
			var loginUserStatus = '${loginUser.status}';
			
			// 경우의 수
			// 로그인O 성인인증O => 주류상품 전체조회 원함
			// 로그인O 성인인증O => 주류상품 디테일조회 원함
			// 로그인O 성인인증X => 성인인증 해야함
			// 로그인X 성인인증X => 로그인 원함
			// 로그인X 성인인증X => 회원가입 원함
			if(loginUserStatus == 'Y') { // 로그인O
				if(loginUserStatus == 'Y') { // 로그인O 성인인증O
					location.href = !(isNaN(pdtNo)) ? "selectAlcoholPdtDetail.pr?pdtNo=" + pdtNo
												    : "selectAlcoholPdtList.pr";
					/*
					if(!(isNaN(pdtNo))) {
						location.href="selectAlcoholPdtDetail.pr?pdtNo=" + pdtNo; // 디테일 보기 요청
					}
					else {
						location.href="selectAlcoholPdtList.pr"; // 전체조회 요청
					}
					*/
				}
				else { // 로그인O 성인인증X
					// @@@@@@@@성인인증 기능 아직 없음(지민님/1124다시 더블체크하기)
				}
			}
			else { // 로그인X / 실패 시 여기로 돌아옴! 사용자 경험을 위해 ajax??
				
			
				//fillPdtMainFirstModal();
				//$pdtMainModalWrap.modal("show");
				//console.log(fillPdtMainFirstModal());
				fillPdtMainFirstModal().modal("show");
				
				$pdtMainModalWrap.on('click', '#pdtFirstModalLoginBtn', () => {
					console.log('로그인요청');
										
				});
				$pdtMainModalWrap.on('click', '#pdtFirstModalEnrollBtn', () => {
					console.log('회원가입요청');
					
				});
				
				
			}
		};
 	</script>











    
    <script>
    	
/* 		function adultValidation(pdtNo) {
			if('${loginUser.status}' == 'Y') { // 로그인된 유저 존재함
				if('${loginUser.adultStatus}' == 'Y') { // 성인인증 됨
					console.log(pdtNo + 'pdt넘버');
					console.log(isNaN(pdtNo));
					if(!(isNaN(pdtNo))) { // 디테일 보기 요청일 경우
						//location.href="selectAlcoholPdtDetail.pr?pdtNo=" + pdtNo;
					} else { // 전체조회 요청인 경우
						//location.href="selectAlcoholPdtList.pr";
					}
				}
				else { // 로그인O 성인인증 안됨
					// 성인인증 @@@@@성인인증 기능 아직 없음(지민님/1124다시 더블체크하기)
				}
			}
			else { // 로그인 안됨 로그인창 or 회원가입 프로세스 진행 (모달에 요소 동적생성)
				// 로그인 실패 시 여기로 돌아옴! 사용자 경험을 위해 ajax??
				$()=> {
		
				}
				
				
			}
			// 성인인증 안됨
			// 컨트롤러로 요청보냄 (컨트롤러에서 로그인했는지 아닌지 체크해서 여기로 응답)
		}
    	
		function pdtMainModal() {
			var $modalTitle = $('#pdtMainModalTitle');
			var $modalBody = $('#pdtMainModalBody');
			var $pdtModalCancleBtn = $('#pdtModalCancleBtn');
			$() => {
				$modalTitle.ap'회원가입 하기';
				
				'로그인 하기'
			};
		};
		 */

		
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
		/* function ajaxAdultValidation(pdtNo) {
		console.log(pdtNo);
			$.ajax({
				url : 'ajaxAdultValidation.ur',
				type : 'GET',
				success : result => {
					console.log('로그인여부 & 인증필요여부 식별 문자열');
					console.log(result);
					// (로그인 안한 경우는 Controller에서 바로 에러페이지 감)
					if(result === 'YYYY') {
						console.log(pdtNo + 'pdt넘버');
						console.log(isNaN(pdtNo));
						if(!(isNaN(pdtNo))) {
							location.href="selectAlcoholPdt.pr?pstNo=" + pdtNo;
						}
					}
					else if (result === 'YYNN') {
						$('#pdtLoginModal').modal("show");
						// 로그인N성인N이면 경고알림 및 성인인증창
						// 인증 성공 시 pdtNo값에 따라 전체 or 디테일 포워딩
					}
					else {
						$('#pdtLoginModal').modal("show");
						// 로그인N성인N이면 경고알림 및 로그인창
						// 로그인 or 회원가입 선택하세요
						// 선택따라 로그인양식 or 회원가입양식
						// 로그인 성공 시  현재 페이지에서 로그인상태로
					}
				},
				error : () => {
					console.log('인증 실패');
					alert('요청에 실패하였습니다');
				}
			});
		};*/
    </script>


</body>


</html>