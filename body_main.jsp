<%@ page contentType = "text/html; charset=utf-8" %>
<%! String greeting = "쿠팡에 오신것을 환영합니다";
    String tagline = "하단 페이지 : 확인";%>
    <div class = "jumbotron">
        <div class = "container">
            <h1 class = "display-3">
                <%=greeting%>
            </h1>
        </div>
    </div>
    <div class = "container">
        <div class = "text-center">
            <h3>
                <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>
<div class="card bg-dark text-white">
    <img src="img/coupang3.jpg" class="card-img" alt="main_image">
<!--    <img src = "img\logo_coupang.png" class = "img-fluid" alt= "main_image">-->
    <div class="card-img-overlay">
        <h5 class="card-title">빅 세일 이벤트</h5>
        <p class="card-text">출처 : 쿠팡</p>
    </div>
 </div>

<div class="list-group">
      <a href="https://www.coupang.com/vp/products/6573830453?itemId=99053681&vendorItemId=3180840758&sourceType=cmgoms&omsPageId=97795&omsPageUrl=97795&isAddedCart=" class="list-group-item list-group-item-action active" aria-current="true">
        프로틴 파우더</a>
      <a href="https://www.coupang.com/vp/products/6714055704?itemId=18259827588&vendorItemId=3161168955&sourceType=cmgoms&omsPageId=97795&omsPageUrl=97795&isAddedCart=" class="list-group-item list-group-item-action">유산균</a>
    </div>

