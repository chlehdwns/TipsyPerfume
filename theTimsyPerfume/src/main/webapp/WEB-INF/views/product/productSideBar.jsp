<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
	/* #productSideBarWrap div {
	  border: 1px solid black;
	} */
	
	#productSideBarWrap {
	  width: 230px;
	  margin-top: 80px;
	  float: left;
	  position: relative;
	  left: 3%;
	}

	/* 정렬기준 부분 */
  	#pdtSideBarSortArea > label[for='btnradio1'] {
  		border-top-left-radius: 0.25rem;
  		border-bottom-left-radius: 0.25rem;
  	}
  	
  	#pdtSideBarSortArea label{
  		width: 77px;  		
  		height: 30px;
  		background-repeat: no-repeat; 
  	}

	 #btnradio1 + label{background-image: url('resources/image/product/productEtc/sortNewImgBl.png');}
	 #btnradio2 + label{background-image: url('resources/image/product/productEtc/sortBestSellerImgBl.png');}
	 #btnradio3 + label{background-image: url('resources/image/product/productEtc/sortPopularImgBl.png');}
		
	 #btnradio1:checked + label {background-image: url('resources/image/product/productEtc/sortNewImg.png');}
	 #btnradio2:checked + label {background-image: url('resources/image/product/productEtc/sortBestSellerImg.png');}
	 #btnradio3:checked + label {background-image: url('resources/image/product/productEtc/sortPopularImg.png');}


	/* 아코디언 부분 */
      #accordionPanelsStayOpenExample {
        width: 100%;
      }

      /* 아코디언 부분 설정(크기, 범위) */
      #productSideBarWrap .accordion-header {
        width: 100%;
        height: 89px;
        --bs-accordion-btn-padding-y: 2rem;
      }

      #productSideBarWrap .accordion-body {
        padding: 5px 5px 50px 5px;
      }

      /* 체크박스 부분 설정 */
      #productSideBarWrap .pdt-side-checkbox {
        width: 100%;
        max-height: 230px;
        /* 스크롤바 생기는 높이 */
        overflow-y: auto;
        padding: 5px;
      }

      #productSideBarWrap .pdt-side-checkbox-inner {
        margin-left: 10px;
      }

      #productSideBarWrap .list-group-item {
        padding-left: 30px;
        margin: 0px;
      }



/* ↓ 슬라이더 오픈소스 CSS, Copyright https://codepen.io/Manitoba/pen/ZWRjye?js-preprocessor=babel */
#productSideBarWrap [slider] {
  position: relative;
  height: 14px;
  border-radius: 10px;
  text-align: left;
  margin: 50px 0 20px 0;
}

#productSideBarWrap [slider] > div {
  position: absolute;
  left: 13px;
  right: 15px;
  height: 14px;
}

#productSideBarWrap [slider] > div > [inverse-left] {
  position: absolute;
  left: 0;
  height: 14px;
  border-radius: 10px;
  background-color: antiquewhite;
  margin: 0 7px;
}

#productSideBarWrap [slider] > div > [inverse-right] {
  position: absolute;
  right: 0;
  height: 14px;
  border-radius: 10px;
  background-color: antiquewhite;
  margin: 0 7px;
}

#productSideBarWrap [slider] > div > [range] {
  position: absolute;
  left: 0;
  height: 14px;
  border-radius: 14px;
  background-color: rgb(223,190,106);
}

#productSideBarWrap [slider] > div > [thumb] {
  position: absolute;
  top: -7px;
  z-index: 2;
  height: 28px;
  width: 28px;
  text-align: left;
  margin-left: -11px;
  cursor: pointer;
  box-shadow: 0 3px 8px rgba(0, 0, 0, 0.4);
  background-color: #FFF;
  border-radius: 50%;
  outline: none;
}

#productSideBarWrap [slider] > input[type=range] {
  position: absolute;
  pointer-events: none;
  -webkit-appearance: none;
  z-index: 3;
  height: 14px;
  top: -2px;
  width: 100%;
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
  filter: alpha(opacity=0);
  -moz-opacity: 0;
  -khtml-opacity: 0;
  opacity: 0;
}

#productSideBarWrapdiv[slider] > input[type=range]::-ms-track {
  -webkit-appearance: none;
  background: transparent;
  color: transparent;
}

#productSideBarWrap div[slider] > input[type=range]::-moz-range-track {
  -moz-appearance: none;
  background: transparent;
  color: transparent;
}

#productSideBarWrap div[slider] > input[type=range]:focus::-webkit-slider-runnable-track {
  background: transparent;
  border: transparent;
}

#productSideBarWrap div[slider] > input[type=range]:focus {
  outline: none;
}

#productSideBarWrap div[slider] > input[type=range]::-ms-thumb {
  pointer-events: all;
  width: 28px;
  height: 28px;
  border-radius: 0px;
  border: 0 none;
}

#productSideBarWrap div[slider] > input[type=range]::-moz-range-thumb {
  pointer-events: all;
  width: 28px;
  height: 28px;
  border-radius: 0px;
  border: 0 none;
}

#productSideBarWrap div[slider] > input[type=range]::-webkit-slider-thumb {
  pointer-events: all;
  width: 28px;
  height: 28px;
  border-radius: 0px;
  border: 0 none;
  -webkit-appearance: none;
}

#productSideBarWrap div[slider] > input[type=range]::-ms-fill-lower {
  background: transparent;
  border: 0 none;
}

#productSideBarWrap div[slider] > input[type=range]::-ms-fill-upper {
  background: transparent;
  border: 0 none;
}

#productSideBarWrap div[slider] > input[type=range]::-ms-tooltip {
  display: none;
}

#productSideBarWrap [slider] > div > [sign] {
  opacity: 0;
  position: absolute;
  margin-left: -11px;
  top: -39px;
  z-index:3;
  background-color: rgb(223,190,106);
  color: #fff;
  width: 28px;
  height: 29px;
  border-radius: 28px;
  -webkit-border-radius: 15px;
  align-items: center;
  -webkit-justify-content: center;
  justify-content: center;
  text-align: center;
}

#productSideBarWrap [slider] > div > [sign]:after {
  position: absolute;
  content: '';
  left: 0;
  border-radius: 16px;
  top: 20px;
  border-left: 14px solid transparent;
  border-right: 14px solid transparent;
  border-top-width: 16px;
  border-top-style: solid;
  border-top-color: rgb(223,190,106);
}

#productSideBarWrap [slider] > div > [sign] > span {
  font-size: 12px;
  font-weight: 700;
  line-height: 28px;
}

#productSideBarWrap [slider]:hover > div > [sign] {
  opacity: 1;
}
/* ↑ 슬라이더 오픈소스 CSS */
    </style>

  </head>

  <body>
  

  

<style>



</style>
  
    <div id="productSideBarWrap" class="d-none d-lg-block">
    
    <div id="pdtSideBarSortArea" class="btn-group" role="group" aria-label="Basic radio toggle button group">
		<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
		<label class="btn btn-outline-primary" for="btnradio1"></label>
		
		<input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
		<label class="btn btn-outline-primary" for="btnradio2"></label>
		
		<input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
		<label class="btn btn-outline-primary" for="btnradio3"></label>
	</div>
    
    
      <div class="accordion" id="accordionPanelsStayOpenExample">
        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse"
              data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
              aria-controls="panelsStayOpen-collapseOne">
              브랜드
              ${pdtManufac}
            </button>
          </h2>
          <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
            aria-labelledby="panelsStayOpen-headingOne">
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
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
              aria-controls="panelsStayOpen-collapseTwo">
              종류 PDT_GROUP
            </button>
          </h2>
          <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
            aria-labelledby="panelsStayOpen-headingTwo">
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
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false"
              aria-controls="panelsStayOpen-collapseThree">
              가격
            </button>
          </h2>
          <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
            aria-labelledby="panelsStayOpen-headingThree">
            <div class="accordion-body">
              
              <!-- ↓ 슬라이더 오픈소스, https://codepen.io/Manitoba/pen/ZWRjye?js-preprocessor=babel
                Copyright (c) 2023 - JY - https://codepen.io/Manitoba/pen/ZWRjye?js-preprocessor=babel

                Permission is hereby granted, free of charge, to any person 
                obtaining a copy of this software and associated documentation 
                files (the "Software"), to deal in the Software without restriction,
                including without limitation the rights to use, copy, modify, 
                merge, publish, distribute, sublicense, and/or sell copies of 
                the Software, and to permit persons to whom the Software is 
                furnished to do so, subject to the following conditions:

                The above copyright notice and this permission notice shall 
                be included in all copies or substantial portions of the Software.

                THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
                EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
                OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
                NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
                HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
                WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
                OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
                DEALINGS IN THE SOFTWARE.
                -->
              <div slider id="slider-distance">
                <div>
                  <div inverse-left style="width:70%;"></div>
                  <div inverse-right style="width:70%;"></div>
                  <div range style="left:30%;right:40%;"></div>
                  <span thumb style="left:30%;"></span>
                  <span thumb style="left:60%;"></span>
                  <div sign style="left:30%;">
                    <span id="sidebar-range-value">30</span>
                  </div>
                  <div sign style="left:60%;">
                    <span id="sidebar-range-value">60</span>
                  </div>
                </div>
                <input type="range" tabindex="0" value="30" max="100" min="0" step="1" oninput="this.value=Math.min(this.value,this.parentNode.childNodes[5].value-1);
                var value=(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.value)-(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.min);
                var children = this.parentNode.childNodes[1].childNodes;
                children[1].style.width=value+'%';
                children[5].style.left=value+'%';
                children[7].style.left=value+'%';children[11].style.left=value+'%';
                children[11].childNodes[1].innerHTML=this.value;" />

                <input type="range" tabindex="0" value="60" max="100" min="0" step="1" oninput="
                this.value=Math.max(this.value,this.parentNode.childNodes[3].value-(-1));
                var value=(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.value)-(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.min);
                var children = this.parentNode.childNodes[1].childNodes;
                children[3].style.width=(100-value)+'%';
                children[5].style.right=(100-value)+'%';
                children[9].style.left=value+'%';children[13].style.left=value+'%';
                children[13].childNodes[1].innerHTML=this.value;" />
              </div>
              <!-- ↑ 슬라이더 오픈소스 -->
            </div>
          </div>
        </div>

        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingFour">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false"
              aria-controls="panelsStayOpen-collapseFour">
              도수
            </button>
          </h2>
          <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse"
            aria-labelledby="panelsStayOpen-headingFour">
            <div class="accordion-body">
              <!-- ↓ 슬라이더 오픈소스, https://codepen.io/Manitoba/pen/ZWRjye?js-preprocessor=babel -->
              <div slider id="slider-distance">
                <div>
                  <div inverse-left style="width:70%;"></div>
                  <div inverse-right style="width:70%;"></div>
                  <div range style="left:30%;right:40%;"></div>
                  <span thumb style="left:30%;"></span>
                  <span thumb style="left:60%;"></span>
                  <div sign style="left:30%;">
                    <span id="sidebar-range-value">30</span>
                  </div>
                  <div sign style="left:60%;">
                    <span id="sidebar-range-value">60</span>
                  </div>
                </div>
                <input type="range" tabindex="0" value="30" max="100" min="0" step="1" oninput="this.value=Math.min(this.value,this.parentNode.childNodes[5].value-1);
                var value=(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.value)-(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.min);
                var children = this.parentNode.childNodes[1].childNodes;
                children[1].style.width=value+'%';
                children[5].style.left=value+'%';
                children[7].style.left=value+'%';children[11].style.left=value+'%';
                children[11].childNodes[1].innerHTML=this.value;" />

                <input type="range" tabindex="0" value="60" max="100" min="0" step="1" oninput="
                this.value=Math.max(this.value,this.parentNode.childNodes[3].value-(-1));
                var value=(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.value)-(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.min);
                var children = this.parentNode.childNodes[1].childNodes;
                children[3].style.width=(100-value)+'%';
                children[5].style.right=(100-value)+'%';
                children[9].style.left=value+'%';children[13].style.left=value+'%';
                children[13].childNodes[1].innerHTML=this.value;" />
              </div>
              <!-- ↑ 슬라이더 오픈소스 -->
            </div>
          </div>
        </div>

        <div class="accordion-item">
          <h2 class="accordion-header" id="panelsStayOpen-headingFive">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
              data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false"
              aria-controls="panelsStayOpen-collapseFive">
              용량
            </button>
          </h2>
          <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse"
            aria-labelledby="panelsStayOpen-headingFive">
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




    </div>
    </div>


  </body>

  </html>