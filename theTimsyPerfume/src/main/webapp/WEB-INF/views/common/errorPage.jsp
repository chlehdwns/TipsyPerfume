<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ErrorPage</title>
   
    <!-- CSS파일 경로 -->
    <link href="resources/common/errorPage.css" rel="stylesheet">

    <style>
        div {
            border: 1px solid black;
            box-sizing: border-box;
        }

        #errorPageWrap {
            width: 1200px;
            height: 700px;
            margin: auto;
        }
        #errorPageWrap div{text-align: center;}
        #errorPageWrap .error{width: 100%;}
        #errorPageWrap .error div {width: 50%; height: 100%; float: left;}
        #error_1{height: 40%; padding-top: 70px;}
        #error_2{height: 60%;}
        #error_2_img{}
    </style>
</head>


<body>
    <div id="errorPageWrap">
        <div id="error_1" class="error">
            <h2>Oops...!</h2>
            <h2>Something went wrong</h2>
        </div>
        <div id="error_2" class="error">
            <div id="error_2_img">
                <img src="" alt="오류 이미지">
            </div>
            <div id="error_2_errorMsg">
                <h2>${ errorMsg }</h2>
            </div>
        </div>
    </div>
</body>

</html>