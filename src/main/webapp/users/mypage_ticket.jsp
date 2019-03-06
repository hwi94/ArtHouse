<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스 : 마이페이지</title>
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" href="../resources/css/arthouse.users.css">
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
				<a class="mypage_main.jsp">
					<span>마이페이지</span>
				</a>
				|
				<a class="current-page">
					<span>나의 예매내역</span>
				</a>
			</div>
		</div>
		
		<!-- 메인화면 -->
		<div class="main-context">
			<!-- 좌측 -->
			<jsp:include page="/left_menu.jsp"></jsp:include>
			
			<!-- 우측 -->
			<div class="col-detail">
				
				<h4>나의 예매내역</h4>
				
				<!-- 예매내역 리스트 시작 -->
				<div class="ticket-list">
					
					<!-- 예매내역 1 -->
					<div class="ticket-info">
						<div class="ticket-img">
							<a href="#">
								<span class="thumb-img">
									<img src="/artHouse/resources/img/movie/m02.jpg">
								</span>
							</a>
						</div>
						
						<div class="ticket-content">
							<dl>
								<dt>
									<a href="#">콜드 워</a>
								</dt>
								<dd>
									<em>관람일시</em>
									<strong>2019.02.21 14:45</strong>
								</dd>
								<dd>
									<em>상영관</em>
									<strong>1관</strong>
								</dd>
								<dd>
									<em>관람좌석</em>
									<strong>E8, E9</strong>
								</dd>
								<dd>
									<em>총 결제금액</em>
									<strong>24,000원</strong>
								</dd>
							</dl>
						</div>	
					</div>
					<!-- //예매내역1 끝 -->
					
				</div>
				<!-- //예매내역 리스트 끝 -->
			</div>
		</div>
		
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>
</body>
</html>