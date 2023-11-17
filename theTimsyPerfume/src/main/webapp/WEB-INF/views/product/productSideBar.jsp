<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
      crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <!-- header.html CSS파일 경로적기 -->
    <link href="resources/" rel="stylesheet">


    <style>

      #productSideBarWrap div {
        border: 1px solid black;
      }
      #productSideBarWrap{width: 250px;}
      #accordionPanelsStayOpenExample{width: 100%;}
      
      /* 아코디언 부분 설정(크기, 범위) */
      .accordion-header{width: 100%; height: 89px; --bs-accordion-btn-padding-y: 2rem;}
      .accordion-body {padding: 5px 5px 30px 5px;}

      /* 체크박스 부분 설정 */
      .pdt-side-checkbox {
        width: 100%;
        max-height: 230px; /* 스크롤바 생기는 높이 */
        overflow-y: auto;
        padding: 5px;
      }

      .pdt-side-checkbox-inner {
        margin-left: 10px;
      }

      .list-group-item {
        --bs-list-group-item-padding-x: 2rem;
      }
    </style>

  </head>

  <body>
    <div id="productSideBarWrap">
    
      <div class="accordion" id="accordionPanelsStayOpenExample">
        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
              브랜드 PDT_MANUFAC
            </button>
          </h2>
          <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
            <div class="accordion-body">

              <div class="list-group custom-control custom-checkbox pdt-side-checkbox">
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  그레이 구스
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  베일리스
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  바카디
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  스미노프
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  헤네시
                </label>
              </div>


            </div>
          </div>
        </div>


        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
              종류 PDT_GROUP
            </button>
          </h2>
          <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
            <div class="accordion-body">
              
              <div class="list-group custom-control custom-checkbox pdt-side-checkbox">
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  맥주
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  소주
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  와인
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  샴페인
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  헤네시
                </label>
              </div>
            </div>
          </div>
        </div>


        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingThree">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
              가격
            </button>
          </h2>
          <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
            <div class="accordion-body">
              <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
            </div>
          </div>
        </div>

        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingFour">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
              도수
            </button>
          </h2>
          <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
            <div class="accordion-body">
              <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
            </div>
          </div>
        </div>

        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingFive">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
              용량
            </button>
          </h2>
          <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
            <div class="accordion-body">
              <div class="list-group custom-control custom-checkbox pdt-side-checkbox">
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--
                  -->~ 100 ml
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  100ml ~ 300ml
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  300ml ~ 500ml
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  600ml ~ 800ml
                </label>
                <label class="list-group-item">
                  <input class="form-check-input me-1" type="checkbox" value="">
                  800ml ~
                </label>
              </div>
            </div>
          </div>
        </div>
      </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

      <div class="check-box-area">
        <hr>
        <div>종류</div>
        <div class="custom-control custom-checkbox pdt-side-checkbox">
          <div class="list-group" style="width:100%;">
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              그레이 구스
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              베일리스
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              바카디
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              스미노프
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              헤네시
            </label>
          </div>
        </div>
      </div>

      <div class="check-box-area">
        <hr>
        <div>용량</div>
        <div class="custom-control custom-checkbox pdt-side-checkbox">
          <div class="list-group" style="width:100%;">
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              그레이 구스
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              베일리스
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              바카디
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              스미노프
            </label>
            <label class="list-group-item">
              <input class="form-check-input me-1" type="checkbox" value="">
              헤네시
            </label>
          </div>
        </div>
      </div>

 

      </div>
    </div>


  </body>

  </html>