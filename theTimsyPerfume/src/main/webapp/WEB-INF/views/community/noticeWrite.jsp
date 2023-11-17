<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	#writer-wrap{
		width: 900px;
		margin: 0 auto;
	}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div id="writer-wrap">
<form id="enrollForm" method="post" action="noticeWrite.do" enctype="multipart/form-data">
	<table class="table">
		<tr>
			<th><label for="noticeThumbnailFile">썸네일</label></th>
			<td><input type="file" id="noticeThumbnailFile" class="form-control-file border" name="noticeThumbnailFile"></td>
		</tr>
		<tr>
			<th><label>카테고리</label></th>
			<td>
				<select class="custom-select" name="noticeCtgy">
					<option>공지</option>
					<option>이벤트</option>
				</select>
				<input type="text" id="noticeTitle" class="form-control" name="noticeTitle" required>
			</td>
		</tr>
		<tr>
			<th><label for="noticeTitle">제목</label></th>
			<td><input type="text" id="noticeTitle" class="form-control" name="noticeTitle" required></td>
		</tr>
		<tr>
			<th><label for="noticeFile">이미지파일</label></th>
			<td><input type="file" id="noticeFile" class="form-control-file border" name="noticeFile"></td>
		</tr>
		<tr>
			<th><label for="noticeContent">내용</label></th>
			<td><textarea id="noticeContent" class="form-control" rows="10" style="resize:none;" name="noticeContent" required></textarea></td>
		</tr>
	</table>
	<br>
​
	<div align="center">
		<button type="submit" class="btn btn-primary">등록하기</button>
		<button type="reset" class="btn btn-danger">취소하기</button>
	</div>
</form>
</div>
</body>
</html>