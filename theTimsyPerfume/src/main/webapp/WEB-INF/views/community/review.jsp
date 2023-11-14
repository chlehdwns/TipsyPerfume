<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Tipsy Perfume - 리뷰 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
    #review-wrap{
        width: 900px;
        background-color: rgb(160, 149, 152);
        margin: 0 auto;
        overflow: hidden;
    }
    #content-title{
        font-size: 36px;
        font-weight: 600;
        text-align: center;
        color: rgb(255, 255, 255);
        margin: 40px 0;
    }
    #review-content{
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
    }
    .review-item-wrap:not(:nth-child(3)){margin-right: 30px;}
    .review-item-wrap{
        width: 215px;
        height: 350px;
        color: rgb(223, 190, 106);
        background-color: rgb(35, 31, 32);
        padding: 4px 8px;
        border: 2px solid rgb(223, 190, 106);
        border-radius: 6px;
        box-sizing: border-box;
        float: left;
        margin-bottom: 30px;
    }
    .display-flex{display: flex;align-items: center;}
    .bottom-interval{margin-bottom: 3px}
    .img{
        height: 100%;
        width: 100%;
        object-fit: cover;
    }
    .profile{border-radius: 14px;}
    .profile-wrap{
        width: 28px;
        height: 28px;
        display: flex;
    }
    .name-wrap{
        font-size: 15px;
        margin-left: 5px;
    }
    .thumbnail-wrap{
        width: 175px;
        height: 175px;
        margin: 0 auto;
    }
    .preview-wrap{
        height: 50px;
        font-size: 13px;
        overflow: hidden;
        text-overflow: ellipsis;
        word-wrap: break-word;
        display: -webkit-box;
        -webkit-line-clamp: 3;
        -webkit-box-orient: vertical;
        line-height: 1.3;
    }
    .product-img-wrap{
        width: 50px;
        height: 50px;
    }
    .price-wrap{
        margin-left: 10px;
        color: rgb(244, 235, 211);
    }

    #paging{
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<section>
<div id="review-wrap">
<div id="content-title">
    Review
</div>
<div id="review-content">
    <div class="review-item-wrap">
        <div class="display-flex bottom-interval">
            <div class="profile-wrap">
                <img class="img profile" src="./blank-profile.png" alt="프로필사진">
            </div>
            <div class="name-wrap">
                스킹스
            </div>
        </div>
        <div class="thumbnail-wrap bottom-interval">
            <img class="img" src="./review1.png" alt="썸네일">
        </div>
        <div>
            ★★★☆☆
        </div>
        <div class="preview-wrap bottom-interval">
            추석전주에 한 주문이라 연휴 중간에 껴서 배송이 너무 늦어질까 조마조마했습니다 다행히 딱10일 걸리고 잘 받았네요.
        </div>
        <div class="display-flex bottom-interval">
            <div class="product-img-wrap">
                <img class="img" src="./블루-신형.jpg" alt="상품이미지">
            </div>
            <div class="price-wrap">
                ￦338,900
            </div>
        </div>
    </div>
    <div class="review-item-wrap">
        <div class="display-flex bottom-interval">
            <div class="profile-wrap">
                <img class="img profile" src="./blank-profile.png" alt="프로필사진">
            </div>
            <div class="name-wrap">
                스킹스
            </div>
        </div>
        <div class="thumbnail-wrap bottom-interval">
            <img class="img" src="./review1.png" alt="썸네일">
        </div>
        <div>
            ★★★☆☆
        </div>
        <div class="preview-wrap bottom-interval">
            추석전주에 한 주문이라 연휴 중간에 껴서 배송이 너무 늦어질까 조마조마했습니다 다행히 딱10일 걸리고 잘 받았네요.
        </div>
        <div class="display-flex bottom-interval">
            <div class="product-img-wrap">
                <img class="img" src="./블루-신형.jpg" alt="상품이미지">
            </div>
            <div class="price-wrap">
                ￦338,900
            </div>
        </div>
    </div>
    <div class="review-item-wrap">
        <div class="display-flex bottom-interval">
            <div class="profile-wrap">
                <img class="img profile" src="./blank-profile.png" alt="프로필사진">
            </div>
            <div class="name-wrap">
                스킹스
            </div>
        </div>
        <div class="thumbnail-wrap bottom-interval">
            <img class="img" src="./review1.png" alt="썸네일">
        </div>
        <div>
            ★★★☆☆
        </div>
        <div class="preview-wrap bottom-interval">
            추석전주에 한 주문이라 연휴 중간에 껴서 배송이 너무 늦어질까 조마조마했습니다 다행히 딱10일 걸리고 잘 받았네요.
        </div>
        <div class="display-flex bottom-interval">
            <div class="product-img-wrap">
                <img class="img" src="./블루-신형.jpg" alt="상품이미지">
            </div>
            <div class="price-wrap">
                ￦338,900
            </div>
        </div>
    </div>
    <div class="review-item-wrap">
        <div class="display-flex bottom-interval">
            <div class="profile-wrap">
                <img class="img profile" src="./blank-profile.png" alt="프로필사진">
            </div>
            <div class="name-wrap">
                스킹스
            </div>
        </div>
        <div class="thumbnail-wrap bottom-interval">
            <img class="img" src="./review1.png" alt="썸네일">
        </div>
        <div>
            ★★★☆☆
        </div>
        <div class="preview-wrap bottom-interval">
            추석전주에 한 주문이라 연휴 중간에 껴서 배송이 너무 늦어질까 조마조마했습니다 다행히 딱10일 걸리고 잘 받았네요.
        </div>
        <div class="display-flex bottom-interval">
            <div class="product-img-wrap">
                <img class="img" src="./블루-신형.jpg" alt="상품이미지">
            </div>
            <div class="price-wrap">
                ￦338,900
            </div>
        </div>
    </div>
    <div class="review-item-wrap">
        <div class="display-flex bottom-interval">
            <div class="profile-wrap">
                <img class="img profile" src="./blank-profile.png" alt="프로필사진">
            </div>
            <div class="name-wrap">
                스킹스
            </div>
        </div>
        <div class="thumbnail-wrap bottom-interval">
            <img class="img" src="./review1.png" alt="썸네일">
        </div>
        <div>
            ★★★☆☆
        </div>
        <div class="preview-wrap bottom-interval">
            추석전주에 한 주문이라 연휴 중간에 껴서 배송이 너무 늦어질까 조마조마했습니다 다행히 딱10일 걸리고 잘 받았네요.
        </div>
        <div class="display-flex bottom-interval">
            <div class="product-img-wrap">
                <img class="img" src="./블루-신형.jpg" alt="상품이미지">
            </div>
            <div class="price-wrap">
                ￦338,900
            </div>
        </div>
    </div>
</div>
<div id="paging">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="#">&lt</a></li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">&gt</a></li>
    </ul>
</div>
</div>
</section>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>