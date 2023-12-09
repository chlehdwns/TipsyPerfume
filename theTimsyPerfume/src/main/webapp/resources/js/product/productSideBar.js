// 사이드바 현재 정렬로 체크상태 되도록 함
$(() => {
	$('input[value=${sort}]').attr('checked', 'true');
});


// 사이드바 정렬기준 클릭 시 정렬에 맞춰 조회
$('.pdt-side-bar-sort').on('click', (e) => {
	let $pdtSidebarSort = $(e.target).val();
	if(${pdtCteg eq 'A'}) {
		location.href="selectAlcoholPdtList.pr?sort=" + $pdtSidebarSort + "&currentPage=${pi.currentPage}";
	} else {
		location.href="selectPerfumePdtList.pr?sort=" + $pdtSidebarSort + "&currrentPage=${pi.currentPage}";
	}
});