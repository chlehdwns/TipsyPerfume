let $pdtListImgArea = $('.pdt-list-pdtImgSrc');
//let $pdtListIconArea = $('.pdt-list-icon-area');
//let $pdtListCart = $('.pdt-list-cart');
//let $pdtListHeart = $('.pdt-list-heart');

// 마우스enter 시 하트와 장바구니 아이콘 보이게
$pdtListImgArea.on('mouseenter', e => {
    //console.log('마우스엔터');
    $(e.target).parent().find('.pdt-list-icon-area').addClass('pdt-list-max-opacity');
});

// 마우스leave 시 하트와 장바구니 아이콘 안보이게
$pdtListImgArea.on('mouseleave', e => {
	//console.log('마우스리브')
	//console.log(e.target);
	$(e.target).parent().find('.pdt-list-icon-area').removeClass('pdt-list-max-opacity');
});
/* @@@처음에 event.stopPropagation();나 pointer-events: none;같은걸 활용했다면 더 좋았을까? */


// 장바구니 모달창 생성 후 띄우기
function ajaxAddCartOne(e) {
	if('${loginUser}' != '') {
		let $pdtNo = $(e).siblings('input[type=hidden]').val();
		let $pdtName = $(e).siblings('.pdt-name').text();
		ajaxCreateCartQuickAddModal($pdtNo, $pdtName);
		console.log('스코프 밖 / pdtNo : ' + $pdtNo + ' / pdtName : ' + $pdtName);
	};
};
	    
// 모달창의 장바구니 담기 버튼 클릭 시 선택된 옵션의 상품 1개 추가
$('#cartQuickAddBtn').click(() => {
	let $pdtNo = $('#cartSelectedPdtNo').attr('class');
	let $pdtOptionNo = $('#cartModalSelectInput').attr('option', 'selected').val();
	console.log($pdtNo + '<<상품넘버 ' + $pdtOptionNo + '<<옵션넘버')
	$.ajax({
		url : 'ajaxAddCartSingleQuan.pa',
		method : 'POST',
		data : { pdtNo : $pdtNo,
				 pdtOptionNo : $pdtOptionNo,
				 pdtCteg : $('#pdtCtegDetail')
				  },
		success : result => {
			hideCartQuickAddModal();
			if(result === '1') {
				// 쇼핑 계속하기버튼 or 장바구니 가기버튼 팝업
				if(pdtListConfirmRemaining()) {
					location.href = "cartMain.pr";
				}
			}
			else if(result === '-1') {
				alert('재고가 없는 상품입니다!');
			}
			else {
				alert('잠시 후 다시 시도해주세요!');
			}
		},
		error : () => {
			alert('요청 실패');
		}
	});
	
});
		
// 상품 1개 추가 후 장바구니로 이동할지 여부 체크
function pdtListConfirmRemaining(){
	return confirm('상품 1개가 장바구니에 추가되었습니다! 장바구니로 이동하시겠습니까?');
};
	    
	
	    
// 하트 추가or삭제!(온클릭 시 호출) 하트 좋아요여부 조회 후 변경함
function ajaxChangeWishOne(e) {
	if('${loginUser}' != '') {
		console.log('로그인 한 유저');
		
		$.ajax({
			url : 'ajaxChangeWishOne.pa',
			method : 'POST',
			data : { pdtNo : $(e).siblings('input[type=hidden]').val() },
			success : result => {
				console.log(result);
				if(result === 'true') {
					$(e).removeClass('bi-suit-heart').addClass('bi-suit-heart-fill');
				}
				else if(result === 'false') {
					$(e).removeClass('bi-suit-heart-fill').addClass('bi-suit-heart');
				}
				else {
					alert('잠시 후 다시 시도해주세요');
				}
			},
			error : () => {
				alert('요청 실패');
			}
		});
	}
}

