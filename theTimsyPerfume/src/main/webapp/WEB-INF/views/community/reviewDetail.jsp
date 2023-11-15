<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Tipsy Perfume - 리뷰 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<style>
    #review-wrap{
        width: 900px;
        margin: 0 auto;
        overflow: hidden;
    }
    .review-content-wrap{
        margin: 60px 0;
    }
    .review-content{
        display: flex;
        align-items: stretch;
    }
    .focus-img-wrap{
        width: 300px;
        height: 300px;
    }
    .display-flex{display: flex;align-items: center;}
    .bottom-interval{margin-bottom: 3px}
    .img{
        height: 100%;
        width: 100%;
        object-fit: contain;
    }
    .review-article{
        width: 500px;
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
    .article-wrap{
        white-space: pre-wrap;
    }
    .img-container{
        width: 100px;
        height: 300px;
        display: flex;
        overflow-y: scroll;
        flex-wrap: wrap;
        align-content: flex-start;
    }
    .img-wrap{
        width: 100px;
        height: 100px;
    }
    .comment-open-btn{
        width: 100%;
        height: 23px;
        color: rgb(255, 255, 255);
        background-color: rgb(94, 94, 94);
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin: 20px 0;
    }
    .comment-open-btn:active{
        background-color: rgb(75, 75, 75);
    }
    .write-area{
        display: flex;
        justify-items: center;
        align-items: center;
    }
    .comment-textarea{
        resize: none;
        width: 85%;
        height: 100px;
        border-radius: 6px;
    }
    .comment-btn{
        width: 10%;
        height: 60px;
        margin-left: 20px;
    }
    .review-comment{
        padding-bottom: 10px;
        border-bottom: 2px solid rgb(94, 94, 94);
        margin-bottom: 10px;
    }
    .re-comment-div{
        padding: 5px 20px;
        margin: 0 auto;
        background-color: rgb(221, 221, 221);
    }
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<section>
<input id="review-no" type="hidden" value="${review.reviewNo}">
<div id="review-wrap">
    <div class="review-content-wrap">
        <div class="review-content">
            <div class="focus-img-wrap">
                <img class="img" src="${review.reviewImages.get(0) }" alt="">
            </div>
            <div class="review-article">
                <div class="display-flex bottom-interval">
                    <div class="profile-wrap">
                        <c:choose>
                		<c:when test="${empty review.userProfile }">
                    		<img class="img profile" src="resources/image/common/blank-profile.png" alt="프로필사진">
                		</c:when>
                		<c:otherwise>
                    		<img class="img profile" src="${review.userProfile }" alt="프로필사진">
                		</c:otherwise>
                		</c:choose>
                    </div>
                    <div class="name-wrap">
                        ${review.userNo } <span>${review.reviewCreateDate }</span>
                    </div>
                </div>
                <div>
                    ★★★☆☆
                </div>
                <pre class="article-wrap bottom-interval">
${review.reviewContent }
                </pre>
            </div>
            <div class="img-container">
            	<c:forEach begin="1" end="${review.reviewImages.size() }" var="i">
                <div class="img-wrap">
                    <img class="img" src="${review.reviewImages.get(i-1) }" alt="">
                </div>
            	</c:forEach>
            </div>
        </div>
        <button class="comment-open-btn" type="button">펼치기</button>
        <div class="review-comment-div" style="display: none;">
            <div>
                댓글쓰기
            </div>
            <div class="write-area">
                <textarea class="comment-textarea" name=""></textarea>
                <button class="comment-btn" type="button">입력</button>
            </div>
            <div id="review-comment-wrap">
                <div class="review-comment">
                    <div class="display-flex bottom-interval">
                        <div class="profile-wrap">
                            <img class="img profile" src="resources/image/common/blank-profile.png" alt="프로필사진">
                        </div>
                        <div class="name-wrap">
                            스킹스(dlaudw*****)
                        </div>
                    </div>
                    <div>
                        [ 요즘 폼 오른 박만사 웹툰들 현재 근황 ]1. 퀘지주 - 4대크루 헤드들 특별출연(장현 제외) 2. 김부장 - 금지된 인체실험(2개의 몸과 관련된 실험으로 추측) 3. 촉법소년 - 매주마다 막힌 속 시원하게 뚫어주는 사이다 전개 4. 외지주 - 그냥 폼 미쳤음. 5. 쌈독 -
                    </div>
                    <div>2023-11-07 11:59</div>
                    <button class="re-comment-open">답글</button>
                    <div class="re-comment-div" style="display: none;">
                        <div>
                            답글쓰기
                        </div>
                        <div class="write-area">
                            <textarea class="comment-textarea" name=""></textarea>
                            <input class="comment-no" type="hidden" value="${comment.commentNo}">
                            <button class="comment-btn" type="button">입력</button>
                        </div>
                        <div class="re-comment-wrap">
                            <div class="review-comment">
                                <div class="display-flex bottom-interval">
                                    <div class="profile-wrap">
                                        <img class="img profile" src="resources/image/common/blank-profile.png" alt="프로필사진">
                                    </div>
                                    <div class="name-wrap">
                                        스킹스(dlaudw*****)
                                    </div>
                                </div>
                                <div>
                                    ㅊㅋㅊㅋ
                                </div>
                                <div>2023-11-07 11:59</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="review-comment">
                    <div class="display-flex bottom-interval">
                        <div class="profile-wrap">
                            <img class="img profile" src="resources/image/common/blank-profile.png" alt="프로필사진">
                        </div>
                        <div class="name-wrap">
                            스킹스(dlaudw*****)
                        </div>
                    </div>
                    <div>
                        ㅊㅋㅊㅋ
                    </div>
                    <div>2023-11-07 11:59</div>
                    <button class="re-comment-open">답글</button>
                    <div class="re-comment-div" style="display: none;">
                        <div>
                            답글쓰기
                        </div>
                        <div class="write-area">
                            <textarea class="comment-textarea" name=""></textarea>
                            <input class="comment-no" type="hidden" value="${comment.commentNo}">
                            <button class="comment-btn" type="button">입력</button>
                        </div>
                        <div class="re-comment-wrap">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<button id="more">임시</button>
</section>
<script>
    $(()=>{
        selectCommentList();
        $(".comment-open-btn").click(function() {
            let $commentDiv = $(this).next(".review-comment-div");
            if ($commentDiv.css("display") === 'none') {
                $commentDiv.slideDown(100);
                $(".comment-open-btn").text("접기");
            } else {
                $commentDiv.slideUp(100);
                $(".comment-open-btn").text("펼치기");
            }
        });
        $(document).on('click','.re-comment-open', function() {
            let $reCommentDiv = $(this).next(".re-comment-div");
            if ($reCommentDiv.css("display") === 'none') {
                $reCommentDiv.slideDown(100);
                $(".comment-open-btn").text("닫기");
            } else {
                $reCommentDiv.slideUp(100);
                $(".comment-open-btn").text("답글");
            }
        });
        /*
        $(".re-comment-open").click(function() {
            let $reCommentDiv = $(this).next(".re-comment-div");
            if ($reCommentDiv.css("display") === 'none') {
                $reCommentDiv.slideDown(100);
                $(".comment-open-btn").text("닫기");
            } else {
                $reCommentDiv.slideUp(100);
                $(".comment-open-btn").text("답글");
            }
        });*/
        $(".comment-btn").click(function(){
            const text = $(this).prevAll(".comment-textarea").val();
            const reviewNo = $("#review-no").val();
            const commentNo = $(this).prevAll(".comment-no").val();
            $.ajax({
                url:"insertComment",
                type:"post",
                data:{
                    commentContent:text,
                    reviewNo:reviewNo,
                    commentNo:commentNo
                },
                success:(result)=>{
                    console.log(result);
                },
                error:()=>{
                    console.log("통신실패");
                }
            })
        })
    })
    function selectCommentList(){
        $.ajax({
                url:"commentList",
                type:"get",
                data:{
                    reviewNo:$("#review-no").val()
                },
                success:(result)=>{
                    console.log(result);
                    const $commentWrap = $("#review-comment-wrap");
                    let value="";
                    for(let i in result){
                        value+=
                            "<div class='review-comment'>"
                            +"<div class='display-flex bottom-interval'>"
                            +"<div class='profile-wrap'>"
                            +"<img class='img profile' src='resources/image/common/blank-profile.png' alt='프로필사진'>"
                            +"</div>"
                            +"<div class='name-wrap'>"+result[i].userNo+"</div>"
                            +"</div>"
                            +"<div>"+result[i].commentContent+"</div>"
                            +"<div>"+result[i].commentCreateDate+"</div>"
                            +"<button class='re-comment-open'>답글</button>"
                            +"<div class='re-comment-div' style='display: none;'>"
                            +"<div>답글쓰기</div>"
                            +"<div class='write-area'>"
                            +"<textarea class='comment-textarea'></textarea>"
                            +"<input class='comment-no' type='hidden' value='"+result[i].commentNo+"'>"
                            +"<button class='comment-btn' type='button'>입력</button>"
                            +"</div>"
                            +"<div class='re-comment-wrap'>"
                                
                            +"</div>"
                            +"</div>"
                            +"</div>";
                    }
                    $commentWrap.html(value);
                },
                error:()=>{
                    console.log("통신실패");
                }
            })
    }
</script>
</body>
</html>