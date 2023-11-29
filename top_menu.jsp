<%@ page contentType = "text/html; charset=utf-8" %>
<nav class = "navbar navbar-expand navbar-white bg-white">
    <div class = "dropdown">
        <button class = "btn btn-secondary dropdown-toggle" type ="button" id="dropdownMenuButton" data-toggle = "dropdown" aria-haspopup="true" aria-expanded="false">
            카테고리
        </button>
        <div class = "dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a clss = "dropdown-item" href = "https://www.coupang.com/np/categories/498704">패션의류/잡화</a>
            <a clss = "dropdown-item" href = "https://www.coupang.com/np/categories/486248">뷰티</a>
            <a clss = "dropdown-item" href = "https://www.coupang.com/np/campaigns/10076">식품</a>
            
        </div>
    </div>
    
    <div>
        <img src = "img\logo_coupang.png" class = "img-fluid" alt= "main_image">
    </div>
    
    <div class = "container">
        <div class ="navbar-header">
            <a class="navbar-brand" href="index.jsp">상품목록(기본 홈)</a>
            <a class ="navbar-brand" href="../index.jsp">로그인</a>
            <a class ="navbar-brand" href="../index.jsp">회원가입</a>
            <a class ="navbar-brand" href="../index.jsp">고객센터</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>
        </div>
    </div>
</nav>