<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>${board.boardTitle } - Tipsy Perfume</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<style>
    .display-flex{display: flex;align-items: center;}
    .bottom-interval{margin-bottom: 3px}
    .profile-img{
        height: 100%;
        width: 100%;
        object-fit: contain;
        border-radius: 14px;
    }
    .profile-wrap{
        width: 28px;
        height: 28px;
        display: flex;
    }
    .name-wrap{
        font-size: 15px;
        margin-left: 5px;
    }

    #board-wrap{
        width: 1000px;
        margin: 0 auto;
        overflow: hidden;
        padding: 0px 0px 120px 0px;
    }
    #content-title{
        font-size: 36px;
        font-weight: 600;
        text-align: center;
        margin: 40px 0;
    }
    .table{
        width: 100%;
        text-align: center;
        border-spacing: 0px;
        border-collapse: collapse;
        margin-bottom: 30px;
        --bs-table-bg: none;
    }
    .table tr{
        border-style: solid;
        border-width: 2px 0px;
        border-color: rgb(165, 165, 165);
    }
    .table td{padding: 15px 0px;}
    .title-head{
        background-color: rgb(221, 221, 221);
        width: 350px;
    }
    .top-text{
        color: rgb(100, 100, 100);
        font-size: 14px;
    }
    .board-content-wrap{
        margin: 0 auto;
        width: 700px;
    }
    .board-content{
        font-size: 16px;
        width: 100%;
        margin: 0 auto;
        white-space: pre-wrap;
        line-height: 22px;
    }
    .board-content-image{
        width: 700px;
        margin: 0 auto;
    }
    .img{
        width: 100%;
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
    .disabled-btn{
        width: 10%;
        height: 60px;
        margin-left: 20px;
    }
    .board-comment{
        padding-bottom: 10px;
        border-bottom: 2px solid rgb(94, 94, 94);
        margin-bottom: 10px;
    }
    .re-comment-div{
        padding: 5px 20px;
        margin: 0 auto;
        background-color: rgb(221, 221, 221);
    }

    .like-wrap{
        width: 300px;
        display: flex;
        justify-content: space-between;
        margin: 50px auto;
    }
    .like-btn-wrap{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .like-btn{cursor: pointer;}
    .board-btn{
    	font-size: 18px;
    }
</style>
<section>
<input id="board-no" type="hidden" value="${board.boardNo}">
<div id="board-wrap">
    <div id="content-title">
        ${board.boardTitle }
        <button class="board-btn">수정</button>
        <button class="board-btn">삭제</button>
    </div>
    <table class="table">
        <tr class="title-head">
            <td>분류 <span class="top-text">${board.boardCtgyCode }</span></td>
            <td>작성자 <span class="top-text">${board.boardWriter }</span></td>
            <td>작성일 <span class="top-text">${board.boardCreateDate }</span></td>
            <td>조회수 <span class="top-text">${board.boardCount }</span></td>
            <td>추천수 <span id="title-like" class="top-text">51</span></td>
        </tr>
    </table>
    <div class="board-content-wrap">
        <pre class="board-content">
${board.boardContent }
        </pre>
        <div class="like-wrap">
                    <c:choose>
                    <c:when test="${empty loginUser }">
                    	<div class="like-btn-wrap">
                        	<i class='fa fa-thumbs-o-up like-btn' style='font-size:36px' onclick="alert('로그인후 사용이 가능합니다')"></i>
                        	<div id="like-count"></div>
                    	</div>
                    	<div class="like-btn-wrap">
                        	<i class='fa fa-thumbs-o-down like-btn' style='font-size:36px; transform: scaleX(-1);' onclick="alert('로그인후 사용이 가능합니다')"></i>
                        <div id="dislike-count"></div>
                    	</div>
                    </c:when>
                    <c:otherwise>
                    	<div class="like-btn-wrap">
                        	<i id="like" class='fa fa-thumbs-o-up like-btn' style='font-size:36px'></i>
                        	<div id="like-count"></div>
                    	</div>
                    	<div class="like-btn-wrap">
                        	<i id="dislike" class='fa fa-thumbs-o-down like-btn' style='font-size:36px; transform: scaleX(-1);'></i>
                        <div id="dislike-count"></div>
                    	</div>
                    </c:otherwise>
                    </c:choose>
    	</div>
    </div>
    <div class="board-comment-div">
        <div>
            댓글쓰기
        </div>
        <div class="write-area">
            <c:choose>
            <c:when test="${empty loginUser }">
                <textarea class="comment-textarea" name="" readonly>로그인 후 작성해 주세요</textarea>
                <button class="disabled-btn" type="button" onclick="alert('로그인후 사용이 가능합니다')">입력</button>
            </c:when>
            <c:otherwise>
                <textarea class="comment-textarea" name=""></textarea>
                <button class="comment-btn" type="button">입력</button>
            </c:otherwise>
            </c:choose>
        </div>
        <div id="board-comment-wrap">
        </div>
    </div>
</div>
</section>
<script>
    $(()=>{
    	loadRecommend();
        loadAllCommentList();
        
    	$("#like").click(()=>{
        	recommend('L');
        });
        $("#dislike").click(()=>{
        	recommend('D');
        });
        
        $(document).on("click",".re-comment-open", function(){
            let $reCommentDiv = $(this).next(".re-comment-div");
            if ($reCommentDiv.css("display") === 'none') {
                $reCommentDiv.slideDown(100);
                $(".comment-open-btn").text("닫기");
            } else {
                $reCommentDiv.slideUp(100);
                $(".comment-open-btn").text("답글");
            }
        });
        $(document).on("click",".comment-btn", function(){
            const $commentContent = $(this).prevAll(".comment-textarea");
            const $boardNo = $("#board-no");
            const $commentGroup = $(this).prevAll(".comment-no");
            const $commentDepth = $(this).prevAll(".comment-depth");
            const userNo = "${loginUser.userNo}";
            $.ajax({
                url:"insertComment",
                type:"post",
                data:{
                    commentContent:$commentContent.val(),
                    commentGroup:$commentGroup.val(),
                    commentDepth:$commentDepth.val(),
                    boardNo:$boardNo.val(),
                    userNo:userNo
                },
                success:(result)=>{
                    if(result=="1"){
                        $commentContent.val("");
                        if($commentGroup.val()){
                            loadGroupCommentList($commentGroup.val());
                        }
                        else{
                            loadAllCommentList();
                        }
                    }
                },
                error:()=>{
                    console.log("통신실패");
                }
            });
        });
    });
    
    function recommend(ld){
    	$.ajax({
    		url:"boardRecommend",
    		type:"get",
    		data:{
    			userNo:"${loginUser.userNo}",
    			likeFlag:ld,
    			contentNo:$("#board-no").val()
    		},
    		success:(result)=>{
    			alert(result);
    			loadRecommend();
    		},
    		error:()=>{
    			console.log("통신실패");
    		}
    	})
    }
    function loadRecommend(){
    	$.ajax({
    		url:"loadBoardRecommend",
    		type:"get",
    		data:{
    			contentNo:$("#board-no").val()
    		},
    		success:(result)=>{
    			$("#title-like").text(result.likeCount);
    			$("#like-count").text(result.likeCount);
    			$("#dislike-count").text(result.dislikeCount);
    		},
    		error:()=>{
    			console.log("통신실패");
    		}
    	})
    }
    
    function loadAllCommentList(){
        $.ajax({
            url:"commentList",
            type:"get",
            data:{
                boardNo:$("#board-no").val()
            },
            success:(result)=>{
                const $commentWrap = $("#board-comment-wrap");
                let value="";
                for(let i in result){
                    if(result[i].commentDepth == 0){
                        value+=  "<div class='board-comment'>"
                                +"<div class='display-flex bottom-interval'>"
                                +"<div class='profile-wrap'>"
                                +"<img class='profile-img' src='resources/image/common/blank-profile.png' alt='프로필사진'>"
                                +"</div>"
                                +"<div class='name-wrap'>"+result[i].userNo+"</div>"
                                +"</div>"
                                +"<div>"+result[i].commentContent+"</div>"
                                +"<div>"+result[i].commentCreateDate+"</div>"
                                +"<button class='re-comment-open'>답글 "
                        if(result[i].groupCount-1!=0){
                            value+=result[i].groupCount-1;
                        }
                        value+=  "</button><div class='re-comment-div' style='display: none;'>"
                                +"<div>답글쓰기</div>"
                                +"<div class='write-area'>"
                        if("${loginUser.userNo}"==""){
                        	value+=  "<textarea class='comment-textarea' readonly>로그인 후 작성해 주세요</textarea>"
                            		+"<button class='disabled-btn' type='button'  onclick=\"alert('로그인후 사용이 가능합니다')\">입력</button>";
                        }
                        else{
                        	value+=  "<textarea class='comment-textarea'></textarea>"
                        			+"<input class='comment-no' type='hidden' value='"+result[i].commentNo+"'>"
                        			+"<input class='comment-depth' type='hidden' value='"+result[i].commentDepth+1+"'>"
                        			+"<button class='comment-btn' type='button'>입력</button>";
                        }
                        value+=  "</div>"
                                +"<div class='re-comment-wrap'>";
                    }
                    else{
                        value+=  "<div class='board-comment'>"
                                +"<div class='display-flex bottom-interval'>"
                                +"<div class='profile-wrap'>"
                                +"<img class='profile-img' src='resources/image/common/blank-profile.png' alt='프로필사진'>"
                                +"</div>"
                                +"<div class='name-wrap'>"+result[i].userNo+"</div>"
                                +"</div>"
                                +"<div>"+result[i].commentContent+"</div>"
                                +"<div>"+result[i].commentCreateDate+"</div>"
                                +"</div>";
                    }
                    if(result[i].commentIndex == result[i].groupCount-1){
                        value+=  "</div>"
                                +"</div>"
                                +"</div>";
                    }
                }
                $commentWrap.html(value);
            },
            error:()=>{
                console.log("통신실패");
            }
        });
    }
    function loadGroupCommentList(commentGroup){
        $.ajax({
            url:"commentList",
            type:"get",
            data:{
                "boardNo":$("#board-no").val(),
                "commentGroup":commentGroup
            },
            success:(result)=>{
                console.log(result);
                const $commentWrap = $(".comment-no[value="+commentGroup+"]").parent().next(".re-comment-wrap");
                let value="";
                for(let i in result){
                    console.log("dd");
                    value+=  "<div class='board-comment'>"
                            +"<div class='display-flex bottom-interval'>"
                            +"<div class='profile-wrap'>"
                            +"<img class='profile-img' src='resources/image/common/blank-profile.png' alt='프로필사진'>"
                            +"</div>"
                            +"<div class='name-wrap'>"+result[i].userNo+"</div>"
                            +"</div>"
                            +"<div>"+result[i].commentContent+"</div>"
                            +"<div>"+result[i].commentCreateDate+"</div>"
                            +"</div>";
                }
                $commentWrap.html(value);
            },
            error:()=>{
                console.log("통신실패");
            }
        });
    }
</script>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>