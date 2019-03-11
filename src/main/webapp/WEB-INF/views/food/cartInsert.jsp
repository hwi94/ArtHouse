<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="com.itbank.artHouse.food.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String id = (String)session.getAttribute("id");   //지금 접속한 아이디를 가져옴
	String name = request.getParameter("name");
	String pname = URLEncoder.encode(name, "UTF-8");
	
	String img = request.getParameter("img");     //이미지 파일을 가져옴
	String pimg = URLEncoder.encode(name, "UTF-8"); //이미지파일명을 UTF-8로 변환(이유: 익스플로러 url로 파라메터 넘길시 에러)
%>
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

	<!-- 자바스크립트 -->
	<script type="text/javascript" src="/artHouse/resources/js/main.js"></script>
	
<script type="text/javascript">
	/* $(function() {
		
		$("#btn1").click(function() {
			alert('유민재');
			var uri = "cartView?&user_id=${dto.user_id }&code=${dto.code}&price=${dto.price}&amount=${dto.amount}&name="+encodeURI(encodeURIComponent(name));
			location.href=uri;
		});
	}); */

</script>	

</head>
<body>
<div class="page-body">
<jsp:include page="../../../top.jsp"></jsp:include>
<c:forEach var="dto" items="${list }">
<hr>
	<h1>장바구니에 담겼습니다</h1>
    <%-- <h3>주문번호: ${dto.cart_id }</h3>  --%>
	<h3>주문자 id: ${dto.user_id }</h3>
	<h3>상품명: <%= name %></h3> 
	<h3>상품코드: ${dto.code }</h3>
	<h3>상품가격: ${dto.price }</h3>
	<h3>상품수량: ${dto.amount }</h3>
	<%-- <h3>상품이미지: <%= img %></h3> --%>
	<hr>
	<%-- <form action="cartView.do" method="get">
	<input type="hidden" name="cart_id" value="">
	<input type="hidden" name="id" value="<%=id%>" id="user_id">
	<input type="submit" value="장바구니 확인">
	</form> --%>
	<a href="cartView?&user_id=${dto.user_id }&code=${dto.code}&price=${dto.price}&amount=${dto.amount}&name=<%=pname%>&img=<%=img%>"><font color="blue">장바구니 확인</font></a>
	<!-- <input type="button" value="장바구니 확인" id="btn1" width="100"> -->
	</c:forEach>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../../../bottom.jsp"></jsp:include>
</body>
</html>