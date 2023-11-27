<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 전체조회</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	
	<!-- Bootstrap v4 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

    <!-- CSS파일 경로적기 -->
    <link href="resources/css/product/productList.css" rel="stylesheet">
    <link href="resources/css/frags/loginJoinModal.css" rel="stylesheet">
    <link href="resources/css/member/loginForm.css" rel="stylesheet">

</head>


<body>
	<jsp:include page="../common/header.jsp">
		<jsp:param name="pdtCteg" value="${pdtCteg}" />
		<jsp:param name="sort" value="${sort}" />
		<jsp:param name="currentPage" value="${pi.currentPage}" />
	</jsp:include>

    <div id="productListWrap">
        <div id="pdtListOuterLeft">
            <jsp:include page="productSideBar.jsp" />
        </div>



        <div id="pdtListOuterRight" class="container">

            <div id="pdtListTitleArea" class="row">
            	<c:choose>
            		<c:when test="${pdtCteg eq 'A'}">
            			<div class="pdt-list-main-title" style="font-size:50px;">LIQUORS</div>
               			<div class="pdt-list-sub-title" style="font-size:30px;">브랜드 | 주류</div>
            		</c:when>
            		<c:otherwise>
		                <div class="pdt-list-main-title" style="font-size:50px;">PERFUME</div>
		                <div class="pdt-list-sub-title" style="font-size:30px;">브랜드 | 향수</div>
            		</c:otherwise>
            	</c:choose>
            </div>

            
     		<div id="pdtListContentArea" class="row row-cols-3">
				<c:forEach var="pdt" begin="1" end="12"> <!-- 마지막 페이지 상품정보 없어도 정렬 깨지지 않도록 1 ~ 12로 12번 반복 / @@@마지막페이지 예쁘게 하려면 반복횟수 제한, 반복횟수는 = 3 * (floor((배열길이 - 1) / 3)) + 1) 일단 넘어가기 -->
					<div class="container col pdt-list-container-col">
						<c:if test="${not empty pdtList[(pdt - 1)]}">
							<input type="hidden" value="${pdtList[(pdt - 1)].pdtNo}"> <!-- @@@사용자가 보내는 요청이 조작되지 않은 pdtNo인걸 어떻게 검증하지? => 일단 돌리고 나중에 -->
							<div class="bi bi-suit-heart container pdt-list-icon-area pdt-list-heart" onclick="ajaxChangeWishOne(this);"></div>
							<div class="bi bi-cart-plus  container pdt-list-icon-area pdt-list-cart" onclick="ajaxAddCartOne(this);"></div>
							<div class="row pdt-list-pdtImgSrc pdtDetail"><img src="${pdtList[(pdt - 1)].pdtImgSrc}"></div>
			                <div class="row pdt-list-pdtManufac pdtDetail">${pdtList[(pdt - 1)].pdtManufac}</div>
			                <div class="row pdt-list-pdtName pdtDetail">${pdtList[(pdt - 1)].pdtName}</div>
			                <div class="row pdt-list-reviewAvg pdtDetail">
			                	<c:if test="${not empty pdtList[(pdt - 1)]}">★ ${pdtList[(pdt - 1)].reviewAvg}/5</c:if><!-- 마지막페이지 상품 없을 때 별점0.0뜨지 않도록 -->
			                </div>
			                <div class="row pdt-list-pdtIntro pdtDetail">${pdtList[(pdt - 1)].pdtIntro}</div>
			                <div class="row pdt-list-pdtDescription pdtDetail">${pdtList[(pdt - 1)].pdtDescription}${pdtList[(pdt - 1)].pdtDescription}</div>
						</c:if>
					</div>
				</c:forEach>
			</div>

			
	        <div id="pdtListPaginationArea" class="row">
       		<c:set var="hrefPage" value="${pdtCteg eq 'A' ? 'selectAlcoholPdtList.pr' : 'selectPerfumePdtList.pr'}" />
	        	<ul class="pagination">
   				    <li class="page-item">
	        			<c:choose>
		        			<c:when test="${pi.currentPage eq 1}"> <!-- 앞 화살표 / 현재페이지 1이면 disabled -->
						        <a class="page-link disabled" aria-label="Previous">
						      		<span aria-hidden="true">&laquo;</span>
						        </a>
		        			</c:when>
		        			<c:otherwise> <!-- 앞 화살표 / 그 외에는 일반 li(a링크 curentPage - 1) -->
						        <a class="page-link" href="${hrefPage}?currentPage=${pi.currentPage - 1}" aria-label="Previous">
						      		<span aria-hidden="true">&laquo;</span>
						        </a>
		        			</c:otherwise>
	        			</c:choose>
				    </li>
	        		
	        		<c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}"> <!-- 페이지버튼영역 / 시작페이지 ~ 끝페이지만큼 반복 -->
	        			<li class="page-item"><a class="page-link" href="${hrefPage}?currentPage=${i}">${i}</a></li>
	        		</c:forEach>
	        		
					<li class="page-item">
	        			<c:choose>
		        			<c:when test="${pi.currentPage eq pi.maxPage}"> <!-- 뒤 화살표 : 현재페이지 eq 전체 페이지개수면 disabled -->
								<a class="page-link disabled" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
		        			</c:when>
		        			<c:otherwise> <!-- 뒤 화살표 / 그 외에는 일반li(a링크 currentPage + 1) -->
								<a class="page-link" href="${hrefPage}?currentPage=${pi.currentPage + 1}" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
		        			</c:otherwise>
	        			</c:choose>
					</li>	
	        	</ul>
	        </div>
	        
	        
        </div>
    </div>


	    
	<script>
		$pdtImgArea = $('.pdt-list-pdtImgSrc');
	    $pdtIconArea = $('.pdt-list-icon-area');
	    
   		// 마우스enter, 마우스leave 시 하트와 장바구니 보이게 / 안보이게
		$pdtImgArea.on('mouseenter', e => {
	        //console.log('마우스엔터');
	        $(e.target).parent().find('.pdt-list-icon-area').addClass('pdt-list-max-opacity');
		});
		
   		$pdtImgArea.on('mouseleave', e => {
			//console.log('마우스리브')
			//console.log(e.target);
			$(e.target).parent().find('.pdt-list-icon-area').removeClass('pdt-list-max-opacity');
		});
		/* @@@처음에 event.stopPropagation();나 pointer-events: none;같은걸 활용했다면 더 좋았을까? */
	</script>
	
	
	
	
	
    <script>
    	// 온로드 시점에 좋아요여부 체크 => 하트클래스 변경
		// 채운하트 bi bi-suit-heart-fill 안채운하트 bi bi-suit-heart
		// 채운장바구니 bi bi-cart-plus-fill 안채운장바구니 bi bi-cart-plus
	    $pdtListCart = $('.pdt-list-cart');
	    $pdtListHeart = $('.pdt-list-heart');

	    	
		// 페이지 온로드 시 상품 여러개 하트 조회 ajax 요청!
		// 좋아요 누른 게시글에는 filled하트 / 아니면 빈하트
		//let wishPdtNumsArr = [];
		//$(() => {
			// pdtNo 배열 만들어 넘김
			// list 받아 반복문으로 각 (pdtNo요소).parent().find(.pdt-list-heart) 하트아이콘 선택
			
		//});
	    
	    
		// 하트 한개만 변경!(온클릭 시 호출) 하트 좋아요여부 조회 후 변경함
		function ajaxChangeWishOne(e) {
			if('${loginUser}' != '') {
				console.log('로그인 한 유저');
				$.ajax({
					url : 'ajaxChangeWishOne.pa',
					method : 'POST',
					data : { pdtNo : $(e).siblings('input[type=hidden]').val() },
					success : result => {
						console.log('성공');
						console.log(result);
						if(result === 'true') {
							$(e).removeClass('bi-suit-heart').addClass('bi-suit-heart-fill');
						}
						else if(result === 'false') {
							//bi-suit-heart
							$(e).removeClass('bi-suit-heart-fill').addClass('bi-suit-heart');
						}
						else {
							console.log('뭔가잘못됨');
						}
						// addClass부여! => result > 0
					},
					error : () => {
						console.log('실패');
					}
				});
			} else {
				console.log('로그인 안한 유저');
				pdtListLoginModal();
			};
			
		};
		
		function pdtListLoginModal() {
			// @@@일단 그냥 모달 복붙 (@@@나중에 새창열기같은거 생각해보기)
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
		};
		
		
		// 이건 후순위!! 하트 채워주는건 필수, 장바구니는 아이콘은 선택
		/*
		$pdtListCart.click(() => {
			console.log('장바구니');
			// ajax 요청 후 장바구니 담은게 있으면 장바구니fill / 아니면 빈장바구니
		});
		*/
    </script>
    <script>
	    // 글 디테일 보기
	   	$('.pdtDetail').click(e => {
	   		console.log('디테일클릭');
	   		console.log($(e.target).parent().find('input'));
	   	});
    </script>

















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

    
<<<<<<< HEAD

=======
    
	<script>
		$pdtImgArea = $('.pdt-list-pdtImgSrc');
	    $pdtIconArea = $('.pdt-list-icon-area');
	    
   		// 마우스enter, 마우스leave 시 하트와 장바구니 보이게 / 안보이게
		$pdtImgArea.on('mouseenter', e => {
	        //console.log('마우스엔터');
	        $(e.target).parent().find('.pdt-list-icon-area').addClass('pdt-list-max-opacity');
		});
		
   		$pdtImgArea.on('mouseleave', e => {
			//console.log('마우스리브')
			//console.log(e.target);
			$(e.target).parent().find('.pdt-list-icon-area').removeClass('pdt-list-max-opacity');
		});
		/* @@@처음에 event.stopPropagation();나 pointer-events: none;같은걸 활용했다면 더 좋았을까? */
	</script>
	
	
    <script>
    	// 온로드 시점에 좋아요여부 체크 => 하트클래스 변경
		// 채운하트 bi bi-suit-heart-fill 안채운하트 bi bi-suit-heart
		// 채운장바구니 bi bi-cart-plus-fill 안채운장바구니 bi bi-cart-plus
	    $pdtListCart = $('.pdt-list-cart');
	    $pdtListHeart = $('.pdt-list-heart');

	    	
		// 페이지 온로드 시 상품 여러개 하트 조회 ajax 요청!
		// 좋아요 누른 게시글에는 filled하트 / 아니면 빈하트
		let wishPdtNumsArr = [];
		$(() => {
			// pdtNo 배열 만들어 넘김
			
		});
	    
	    
		// 하트 한개만 변경!(온클릭 시 호출) 하트 좋아요여부 조회 후 변경함
		function ajaxChangeWishOne(pdtNo) {
			if('${loginUser}' != ''){
				console.log('로그인 한 유저'); // @@잠시==함
				
				$.ajax({
					url : 'ajaxChangeWishOne.pa',
					method : 'POST',
					data : { pdtNo : pdtNo },
					success : result => {
						console.log('성공');
						console.log(result);
						// list 받아 반복문으로 각 (pdtNo요소).parent().find(.pdt-list-heart) 하트아이콘 선택 
						// addClass부여! => result > 0
					},
					error : () => {
						console.log('실패');
					}
				});
			
			} else {
				console.log('로그인 안한 유저');
				// @@@일단 그냥 모달 복붙
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
		};
	
		// 이건 후순위!! 하트 채워주는건 필수, 장바구니는 아이콘은 선택
		/*
		$pdtListCart.click(() => {
			console.log('장바구니');
			// ajax 요청 후 장바구니 담은게 있으면 장바구니fill / 아니면 빈장바구니
		});
		*/
			
		$(() => {
			var $pdtModalDateInput = $('#birthDate');
			$pdtModalDateInput.prop('min', '1900-01-01').prop('max', new Date().toISOString().split('T')[0]);
			//$pdtModalDateInput.prop('min', new Date().toISOString().split('T')[0]); 오늘 이전 비활성화 시
		});

		// 버튼 리셋 혹은 서브밋
		$('#pdtMainResetBtn').click(() => {
			return confirm('리셋하시겠습니까?');
		});
		$('#pdtMainSubmitBtn').click(() => {
			return confirm('입력하신 정보로 회원가입을 할까요?');
		});
    </script>
    <script>
	    // 글 디테일 보기
	   	$('.pdtDetail').click(e => {
	   		console.log('디테일클릭');
	   		console.log($(e.target).parent().find('input'));
	   	});
    </script>
    
    
    
   	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="resources/js/product/productMain.js"></script>
	<script src="resources/js/member/memberEnrollForm.js"></script>
    <script src="resources/js/member/loginForm.js"></script>

</body>

</html>