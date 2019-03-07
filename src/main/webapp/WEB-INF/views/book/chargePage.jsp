<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/artHouse/resources/css/jquery.bxslider.css">
<!-- 제이쿼리 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>s
<style >
.col-body {
width:800px;
height:400px;
background-color: #e0d7c0;
padding-left: 50px;
font-size: 15px; 
/* font-weight: bold; */
}
.mainPage{
background-color: black;
color: white;
}
.info{
width:50px;
font-weight: bold;
}
</style>
</head>
<body>
	<div class="page-body">
		<!-- 상단메뉴 -->
		<jsp:include page="/top.jsp"></jsp:include>

		<!-- 중간내용 -->
		<div class="main-context" align="center">
		
			<div class="col-body" align="left">
			<h1>예매정보 확인</h1>
		<hr>	
			<br>
			<br>
			<span class="info">영화 </span> : ${resvDTO1.movie}<br>
			<span class="info">예약시간 </span> : 
			<c:set var="value" value="${resvDTO1.playtime}" />
			${fn:substring(value, 0,4)} 년 ${fn:substring(value, 4,6)} 월 ${fn:substring(value, 6,8)} 일 ${fn:substring(value, 8,10)} 시 ${fn:substring(value, 10,12)}분
			
			<br>
			<span class="info"> 예약된 좌석 </span> : ${param.click}<br>
			<span class="info"> 가격 </span> : ${param.money }<br>
			<br>
			<a href="main.jsp" class="mainPage">메인 화면으로 돌아가기</a>
			</div>
		</div>

		<!-- 하단내용 -->
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>

</body>
</html>
</body>
</html>