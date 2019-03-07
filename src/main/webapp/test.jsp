<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스 : 회원가입 완료</title>
	
	<!-- css -->
	<link rel="stylesheet" href="resources/css/arthouse.users.css">
</head>
<body>
	<div class="page-body">
		<jsp:include page="/top.jsp"></jsp:include>
		
		<!-- 상단메뉴안내 -->
		<div class="this-menu">
			<div class="main-context cur-info">
				<a href="../main.jsp">
					<span>홈</span>
				</a>
				|
				<a class="current-page">
					<span>회원가입완료</span>
				</a>
			</div>
		</div>
		
		<!-- 회원가입완료 출력 -->
		<div class="main-context">
			<div class="success-info">
				<h4>회원가입이 완료되었습니다.</h4>
				<button type="button" class="move-btn btn" onclick="location.href='../main.jsp'">홈으로 가기</button>
				<button type="button" class="move-btn btn" onclick="location.href='login.jsp'">로그인</button>
			</div>
		</div>
		
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>
</body>
</html>
