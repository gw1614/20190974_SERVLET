<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

<!--<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />-->

<%! String greeting = "현재 페이지는 VGA 그래픽 카드 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	
       <div class="container">
		<div class="row" align="center">
			<%
                String sql = "select * from product"; // 조회
                pstmt = conn.prepareStatement(sql); // 연결 생성
                rs = pstmt.executeQuery(); // 쿼리 실행
                while (rs.next()) { // 결과 ResultSet 객체 반복
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                        <img src="img/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                		<h3><%=rs.getString("p_name")%></h3>
		                <p><%=rs.getString("p_description")%>
		                <p><%=rs.getString("p_UnitPrice")%>원
		                <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
            </div>
			<%
				}// 반복문 끝난 이후 db 연결 종료	
            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();

			%>
		</div>
		<hr>
	</div>
</div>
 
<div class="card bg-dark text-white">
    <img src="img/coupang3.jpg" class="card-img" alt="main_image">
    <img src="img/coupang4.jpg" class="card-img" alt="main_image">
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

