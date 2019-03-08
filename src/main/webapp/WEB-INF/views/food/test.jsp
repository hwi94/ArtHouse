<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스</title>
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
	<!-- 자바스크립트 -->
	<script type="text/javascript" src="/artHouse/resources/js/main.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" href="/artHouse/resources/css/jquery.bxslider.css">
	<style type="text/css">
	 h1{
		padding-top: 30px;
	}
	
	.food_name{
		font-size: 20px;
		padding-left: 10px;
		font-weight: bold;	
	}
	.food_price{
		padding-left: 10px;
		font-weight: bold;
	}
	
	
	</style>
	<script type="text/javascript">
		$(function(){
			/*  $("#transfer").click(function(){
				alert('장바구니에 담겼습니다. 확인하시겠습니까?')
				/* document.location = 'http://localhost:7777.com/'; 
				
			}); */
			$("#p1").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p1.jsp');
			});
			
			$("#p2").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p2.jsp');
			});
			
			$("#p3").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p3.jsp');
			});
			
			$("#p4").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p4.jsp');
			});
			
			$("#p5").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p5.jsp');
			});
			
			$("#p6").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p6.jsp');
			});
			
			$("#p7").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p7.jsp');
			});
			
			$("#p8").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p8.jsp');
			});
			
			$("#p9").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p9.jsp');
			});
			
			$("#p10").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p10.jsp');
			});
			
			$("#p11").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p11.jsp');
			});
			
			$("#p12").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p12.jsp');
			});
			
			$("#p13").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p13.jsp');
			});
			
			$("#p14").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p14.jsp');
			});
			
			$("#p15").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p15.jsp');
			});
			
			$("#p16").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p16.jsp');
			});
			
			$("#p17").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p17.jsp');
			});
			
			$("#p18").click(function() {
				$(location).attr('href','http://localhost:8888/artHouse/p18.jsp');
			});
			
			
			
			
			
		});
	</script>
</head>
<body>

	<jsp:include page="../../../top.jsp"></jsp:include>
	
	<div class="page-body">
	<h1>팝콘</h1>
	<hr>
	
	 <c:forEach var="dto" items="${list }" varStatus="status"> 
	<%-- <c:choose>
		<c:when test=""></c:when>
	</c:choose> --%>
	
		<img alt="고소팝콘(L)" src="./resources/img/food/${dto.img }" id="p${status.count }">
		
		<input type="hidden" value="${dto.code }" name="code" id="code"> <!-- 상품1의 코드  -->
	    <input type="hidden" value="${dto.price }" name="price" id="price"> <!-- 상품1의 가격 -->
		<p class="food_name">${dto.name }</p>
		<p class="food_price">${dto.price }</p>
     	<input name="prdId" type="hidden" value="5">   
	    &nbsp;&nbsp;&nbsp;<select name="amount" class="amount_set">
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">4</option>
	    <option value="5">5</option>
	    </select>개
	    <br>
	    <br>
	    <br>
	    <br>
	    <br>
	     </c:forEach>	 
          
	</div>
	
<%
	response.setContentType("text/html; charset=UTF-8");

	
	PrintWriter writer = response.getWriter();

	String id = (String)session.getAttribute("id");
	out.println(session.getAttribute("id"));

	if(session.getAttribute("id").equals("admin")){
		out.println("<script>alert('관리자로 로그인하셨습니다.'); </script>");
	} else if(session.getAttribute("id").equals("yoomk98")){
		out.println("<script>alert('yoomk98님 로그인하셨습니다.'); </script>");
	} else {
		out.println("<script>alert('비회원입니다.'); </script>");
	}

%>	
	
	
	
	
	
	
	
	
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