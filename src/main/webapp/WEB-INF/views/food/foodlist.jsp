<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>관리자용 테스트 페이지</title>
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" href="/artHouse/resources/css/arthouse.product.css">
	
	<!-- 해당 페이지 CSS적용 -->
	<style type="text/css">
	
		 #modify{
		position: absolute;  /* 가장 가까운 상위 요소기준으로 상하좌우 지정한 값만큼 떨어진곳에 위치 */
		left: 48px;   		 /* 왼쪽을 기준으로 48px만큼 이동 */
		} 
		
	</style>
	
	<script type="text/javascript">
		$(function() {
			
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
<div class="page-body">
	<!-- 상단메뉴 -->
	<jsp:include page="/top.jsp"></jsp:include>
	
	<!-- 중간내용 -->
	<div class="main-context">
	
		<div class="product-body">
		
			<!-- 타이틀 -->
			<strong class="product-title">팝콘</strong>
			
			<!-- 상품출력 -->
			<ul class="product-list">
				<c:forEach var="dto" items="${list }" varStatus="status">
					<li>
						<a title="상품으로 이동">
							<!-- 상품이미지 -->
							<span class="img-wrap">
								<img alt="${dto.name }" src="./resources/img/food/${dto.img }" id="p${status.count }">
							</span>
							<!-- 상품상세내용 -->
							<span class="text-wrap">
								<span class="text-title">${dto.name}</span>
								<span class="text-detail">${dto.category }</span>
								<%-- <span class="text-detail">${dto.code }</span> --%>
								<span class="price-wrap">
									<span class="text-price">${dto.price }원</span>
								</span>
							</span>
						</a>
						<!-- <span><input type="button" value="수정" id="modify"></span> -->
					</li>
				</c:forEach>
			</ul>
		</div>
		
	</div>
	
	<!-- 하단내용 -->
	<jsp:include page="/bottom.jsp"></jsp:include>
</div>
</body>
</html>