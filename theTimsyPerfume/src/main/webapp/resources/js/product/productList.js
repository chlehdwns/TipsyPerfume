var $pdtImgArea = $('.pdt-list-pdtImgSrc');
var $pdtIconArea = $('.pdt-list-icon-area');
var $pdtListCart = $('.pdt-list-cart');
var $pdtListHeart = $('.pdt-list-heart');

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



