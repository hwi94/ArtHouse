<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아트하우스 : 마이페이지</title>
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
					<span>마이페이지</span>
				</a>
			</div>
		</div>
		
		<!-- 메인화면 -->
		<div class="main-context">
			<!-- 좌측 -->
			<jsp:include page="/left_menu.jsp"></jsp:include>
			
			<!-- 우측 -->
			<div class="col-detail">
				bbb
			</div>
		</div>
		
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>
</body>
</html>