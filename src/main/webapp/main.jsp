<%@page import="com.itbank.artHouse.users.UserDTO"%>
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
	<link rel="stylesheet" href="/artHouse/resources/css/arthouse.css">

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
			<!-- //이미지 슬라이드 끝 -->
			
			<br>
			<br>
			
			<!-- 현재상영작 / 상영예정작 탭메뉴 -->
			<div class="flip-box">
				<ul class="tabs">
					<li class="active" rel="tab1">현재상영작</li>
					<li rel="tab2">상영예정작</li>
				</ul>
				
				<div class="flip-content"> 			
					<!-- 현재상영작 -->
					<div id="tab1" class="tab_content">
						<ul>
							<!-- 영화1 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/M1.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">콜드워</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
							<!-- 영화2 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/M2.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">가버나움</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
							<!-- 영화3 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/M3.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">쉰들러 리스트</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
							<!-- 영화4 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/M4.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">일일시호일</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
						</ul> 
					</div>
	    			
	    			<!-- 상영예정작 -->
					<div id="tab2" class="tab_content">
						<ul>
							<!-- 영화1 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/s01.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">그때 그들</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
							<!-- 영화2 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/s02.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">더 와이프</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
							<!-- 영화3 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/s03.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">칠곡 가시나들</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
							<!-- 영화4 -->
							<li class="tab-item">
								<div class="flip-img">
									<img src="/artHouse/resources/img/movie/s04.jpg">
								</div>
								<div class="flip-info">
									<h3 class="film-name">항거: 유관순 이야기</h3>
								</div>
								<div class="flip-btn">
									<a href="#">예매하기</a>
								</div>
							</li>
						</ul> 
					</div>
				</div>
			</div>
			<!-- 현재상영작 / 상영예정작 탭메뉴 끝 -->
			
			<div class="vid-content">
				<div class="content-title">
					<h3><span>MOVIE SELECTION</span></h3>
				</div>
				<iframe width="720" height="388" src="https://www.youtube.com/embed/uTHKSu-9xhU" frameborder="0" 
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<img src="/artHouse/resources/img/movie/sel01.jpg">
			</div>
			
		</div>
		
		<!-- 하단내용 -->
		<jsp:include page="bottom.jsp"></jsp:include>
	</div>

</body>
</html>