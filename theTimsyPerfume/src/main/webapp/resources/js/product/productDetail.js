// 상품번호 0이하일 때(서버에서 ERROR반환됨) alert창
function needPdtNoAlert() {
	alert('올바른 상품 번호가 필요합니다!');
};


// ajax요청으로 상품 옵션 조회 후 Select-Option요소 만들어주는 메소드
$(() => {
	$.ajax({
		url : 'ajaxSelectPdtOptionOne.pa/' + $('#pdtNoDetail').val(),
		type : 'GET',
		success : result => {
			console.log('옵션 통신성공');
			console.log(result);
			if(result === 'ERROR') {
				needPdtNoAlert();
			} else { // 옵션 영역 만들어줌
				let pdtNoStr = '<option value="" selected disabled>옵션선택</option>';
				let optionInfoStr = '';
				for(let i in result) {
					pdtNoStr += '<option value="' + result[i].pdtOptionNo + '">'
							  + result[i].pdtOptionFirst + '</option>';
					optionInfoStr += '<input type="hidden" placeholder="pdtOptionStock pdtOptionPrice" '
					               + 'class="' + result[i].pdtOptionStock
					               + ' '
					               + result[i].pdtOptionPrice +'">';
				}
				$('#pdtDetailSelectInput').html(pdtNoStr);
				$('#pdtDetailOptionInfo').html(optionInfoStr);
				
			}
		},
		error : () => {
			console.log('옵션조회 에러발생');
		}
	});
});