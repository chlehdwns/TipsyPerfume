<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Tipsy Perfume - 보드 페이지</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        width: 800px;
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
</style>
</head>
<body>
<section>
<div id="board-wrap">
    <div id="content-title">
        제목
    </div>
    <table class="table">
        <tr class="title-head">
            <td>분류 <span class="top-text">안주</span></td>
            <td>작성자 <span class="top-text">홍길동</span></td>
            <td>작성일 <span class="top-text">0000-00-00 00:00</span></td>
            <td>조회수 <span class="top-text">51</span></td>
            <td>추천수 <span class="top-text">51</span></td>
        </tr>
    </table>
    <div class="board-content-wrap">
        <pre class="board-content">
돈을 많이 버는 방법은 다양하며 개인의 능력, 상황, 관심사 등에 따라 다를 수 있습니다. 하지만 아래에 일반적으로 알려진 몇 가지 방법을 제시해 드릴 수 있습니다



직업적인 성공: 자신의 업무 능력을 향상시키고, 경력을 쌓아가는 것으로 직업적인 성공을 이루어 돈을 많이 벌 수 있습니다. 자신의 전문 분야에서 경쟁력을 갖추고, 스킬을 향상시키는 것이 중요합니다.



창업: 독립적인 사업을 시작하여 창업자로 성공하면 수익을 창출할 수 있습니다. 이는 많은 시간, 노력, 재정 투자, 창의성, 인내심이 필요한 과정입니다.



투자: 자신의 자금을 투자하여 수익을 창출할 수 있습니다. 주식, 부동산, 상품, 채권 등 다양한 투자 도구를 탐색하고, 투자에 대한 전문적인 지식을 습득하는 것이 중요합니다.



부동산 투자: 부동산 시장에서 투자하는 것은 많은 사람들에게 수익을 가져다 줍니다. 부동산 투자를 통해 임대 소득, 자산 가치 증대, 부동산 거래 등으로 수익을 창출할 수 있습니다.



창작활동: 창작 분야에서 독창적이고 인기 있는 작품을 창작하여 수익을 올릴 수 있습니다. 예를 들어 작가, 화가, 음악가, 디자이너 등으로서 자신의 창작물을 판매하거나 저작권 수입을 얻을 수 있습니다.



온라인 비즈니스: 인터넷과 디지털 기술을 활용하여 온라인 비즈니스를 시작할 수 있습니다. 전자상거래, 소셜 미디어 마케팅, 블로그 운영, 유튜브 채널 운영 등을 통해 수익을 창출할 수 있습니다.



중요한 점은 돈을 많이 벌기 위해서는 노력, 전문성, 창의성, 시간 관리, 계획 등이 필요하며, 투자나 사업 등에 참여할 때에는 위험과 보상을 신중히 고려해야 합니다.
        </pre>
        <div class="board-content-image">
            <img class="img" src="n1.jpg">
        </div>
        <div class="like-wrap">
            <div class="like-btn-wrap">
                <i class='fa fa-thumbs-o-up like-btn' style='font-size:36px' onclick="alert('로그인후 사용이 가능합니다')"></i>
                <div id="like-count">0</div>
            </div>
            <div class="like-btn-wrap">
                <i class='fa fa-thumbs-o-down like-btn' style='font-size:36px; transform: scaleX(-1);' onclick="alert('로그인후 사용이 가능합니다')"></i>
            <div id="dislike-count">0</div>
            </div>
        </div>
    </div>
    <div class="board-comment-wrap">
        <div>
            댓글쓰기
        </div>
        <div class="write-area">
            <textarea class="comment-textarea" name=""></textarea>
            <button class="comment-btn" type="button">입력</button>
        </div>
        <div class="board-comment-wrap">
            <div class="board-comment">
                <div class="display-flex bottom-interval">
                    <div class="profile-wrap">
                        <img class="profile-img"" src="resources/image/common/blank-profile.png" alt="프로필사진">
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
                    <div class="board-comment-wrap">
                        <div class="board-comment">
                            <div class="display-flex bottom-interval">
                                <div class="profile-wrap">
                                    <img class="profile-img" src="resources/image/common/blank-profile.png" alt="프로필사진">
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
                                    <button class="comment-btn" type="button">입력</button>
                                </div>
                                <div class="board-comment-wrap">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="board-comment">
                <div class="display-flex bottom-interval">
                    <div class="profile-wrap">
                        <img class="profile-img"" src="resources/image/common/blank-profile.png" alt="프로필사진">
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
                        <button class="comment-btn" type="button">입력</button>
                    </div>
                    <div class="board-comment-wrap">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<script>
    $(()=>{
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
    })
</script>
</body>
</html>