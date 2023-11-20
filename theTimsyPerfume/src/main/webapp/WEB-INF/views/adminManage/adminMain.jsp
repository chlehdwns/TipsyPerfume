<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.content{
			width: 1200px;
			height: 1500px;
			align: center;
			margin: auto;
			border: 1px solid red;
		}
		.box{
		height:30px;
		}
	
	
		.content1{
			width:300px;
			height:1500px;
			align:left;
			margin:left;
			background-color : rgb(195, 195, 195);
			float : left;
		
		}
		
		.content1_1{
			width:100%;
			height:50px;
		}
		
		.profile{
			width:100%;
			height:120px;
		
		}
		
		.userProfile{
			width:120px;
			height:120px;
			border-radius: 50%;
			float : left;
		}
		
		#blank-profile{
		margin-top:10px;
		margin-left:10px;
		border-radius: 50%;
		}
		
		
		.nickName{
			float : left;
			margin-top :50px;
			margin-left:20px;
			font-size:18px;
		
		}
		
		.content2{
			align:left;
			margin:left;
			float : left;
			margin-top :30px;
			margin-left:30px;
			width:850px;
			height:100%;

		}
		
		.content2_1{
			
		}
		
		.enroll{
			
		}
	
		.navi1{
			margin-left:30px;
		
		}
	
		 #navi1 a{
            text-decoration:none;
			line-height : 35px;
			font-weight : 800;
			
			
		}
		
		#navi1 > li{
			 list-style : none;
			 font-size : 20px;
		}
		
		#navi1 > li > a{
			 list-style : none;
			 font-size : 22px;
		}
		
		
		 #navi1 > li > ul{
            list-style : none;
		}
	
		#pagingArea {width:fit-content; margin:auto;}
        
        #searchForm {
            width:80%;
            margin:auto;
        }
        #searchForm>* {
            float:left;
            margin:5px;
        }
        .select {width:20%;}
        .text {width:53%;}
        .searchBtn {width:20%;}
	
	
	
	</style>
</head>
<body>

	<!-- 메뉴바 -->
		<jsp:include page="../common/header.jsp" />
		<div class="content">
			<!--  <div class="box"></div>-->
			<div class="content1">
			<div class="content1_1"></div>
			
			<div class="profile">
				<div class="userProfile">
					<img src="resources/image/common/blank-profile.png" width="100" height="100" id="blank-profile">
				</div>
				<div class="nickName">
					<label>${ sessionScope.loginUser.nickName }</label> 
				</div>
			</div>
			
			<div class="box"></div>
			
			<br>
			
				<ul id="navi1">
					<li><a href="#">사용자 관리</a>
						<ul>
							<li><a href="#">판매자 계정 승인</a>
						</ul>
					</li>
					
					<br><br>
					
					<li><a href="#">판매 관리</a>
						<ul>
							<li><a href="#">펀딩 관리</a>
							<li><a href="#">주문 관리 승인</a>
						</ul>
					
					</li>
				
				
				</ul>
			
			
			</div>
			
			<div class="content2">
				<br>
				<h2>사용자 관리</h2>
				<hr>
				
				<div class="content2_1">
					<h3>판매 제품</h3>
				</div>
				<br>
				<div class="enroll">
					<a href="">등록하기</a>
				</div>
				
				
				<!-- -------------------------------------- -->
				
				
            <br>
            <br>
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                        <th>상품 번호</th>
                        <th>카테고리 번호</th>
                        <th>상품명</th>
                        <th>판매 가격</th>
                        <th>등록일</th>
                        
                    </tr>
                </thead>
                <tbody>
                    
						<tr>
							<td>상품 번호</td>
							<td>카테고리 번호</td>
							<td>상품명</td>
							<td>판매 가격</td>
							<td>등록일</td>
							
						</tr>
					
                </tbody>
            </table>
				
				
				
				
			 <div id="pagingArea">
                <ul class="pagination">
                	<c:choose>
                		<c:when test="${ pi.currentPage eq 1 }">
                    		<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                    	</c:when>
                    	<c:otherwise>
                    		<li class="page-item"><a class="page-link" href="list.bo?cPage=${ pi.currentPage - 1 }">Previous</a></li>
                    	</c:otherwise>
                    </c:choose>
                    
                    <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
                    <li class="page-item"><a class="page-link" href="list.bo?cPage=${ p }">${p}</a></li>
                    </c:forEach>
                    
                    <c:choose>
                    	<c:when test="${ pi.currentPage eq maxPage }">
                    		<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                    	</c:when>
                    	<c:otherwise>
                    		<li class="page-item"><a class="page-link" href="list.bo?cPage=${ pi.maxPage -1 }">Next</a></li>
                    	</c:otherwise>
                    </c:choose>
                    
                </ul>
            </div>	
				
				
				 <br clear="both"><br>

            <form id="searchForm" action="" method="get" align="center">
                <div class="select">
                    <select class="custom-select" name="condition">
                        <option value="writer">카테고리 번호</option>
                        <option value="title">상품명</option>
                    </select>
                </div>
                <div class="text">
                    <input type="text" class="form-control" name="keyword">
                </div>
                <button type="submit" class="searchBtn btn btn-secondary">검색</button>
            </form>
            <br><br>
        </div>
        <br><br>
				
				
				
				
				
				
				
				
				
				
				
				
			</div><!-- content2끝 -->
			
			
			
			
			
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		</div><!-- content 끝 div -->
		<jsp:include page="../common/footer.jsp" />
</body>
</html>