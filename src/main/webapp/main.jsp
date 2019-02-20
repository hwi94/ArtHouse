<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body>	
	<div class="page-body">
		<!-- 상단메뉴 -->
		<jsp:include page="top.jsp"></jsp:include>
		
		<!-- 중간내용 -->
		<div class="main-context">
			<!-- 이미지 슬라이드 -->	
			<div class="slider">
				<div>
					<a href="#">
						<img src="/artHouse/resources/img/slide/slide01.jpg" alt="콜드워">
					</a>		
				</div>
				<div>
					<a href="#">
						<img src="/artHouse/resources/img/slide/slide02.jpg" alt="그린북">
					</a>
				</div>
				<div>
					<a href="#">
						<img src="/artHouse/resources/img/slide/slide03.jpg" alt="가버나움">
					</a>
				</div>
				<div>
					<a href="#">
						<img src="/artHouse/resources/img/slide/slide04.jpg" alt="로마">
					</a>
				</div>
			</div>
		
			d<br>
			d<br>
			d<br>
			d<br>
			d<br>
			d<br>
			d<br>
			d<br>
			d<br>
			d<br>
		</div>
		
		<!-- 하단내용 -->
		<jsp:include page="bottom.jsp"></jsp:include>
	</div>

</body>
</html>