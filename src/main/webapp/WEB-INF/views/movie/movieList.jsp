<%@page import="com.itbank.artHouse.movie.MovieDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 차트</title>
<style type="text/css">
/* 텍스트 관련 CSS */
.text-info {
	color: #aaaaaa;
}
.hypertext:link{ color: black; text-decoration: none;}
.hypertext:visited { color: black; text-decoration: none;}
.hypertext:hover { color: #ce843d; text-decoration: none;}

.thumb-image {
	width:100%;
	height: auto;
	margin:0;
}

.box-image {
	width:100%;
}

.box-contents {
	padding-bottom: 50px;
}

#li {
	width:23.5%; 
	margin-right: 2%;
	float: left;
}

#od > li:nth-child(4n){
	margin-right: 0 !important;
}
</style>
<!-- 임시로 넣어둔 스크립트 선언부 -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="page-body">
		<jsp:include page="../../../top.jsp"></jsp:include>
		<!-- 상세 페이지로 넘길 데이터 -->
		<div class="main-context">
			<div id="chartTitle">
				<h1>영화 차트</h1>
				<hr>
			</div>
			<div>
				<ol id="od">
					<c:forEach var="dto" items="${movieList }">
						<li id="li">
								<div style="width:100%;">
									<!-- 영화 포스터 썸네일 -->
									<div class="box-image">
										<c:choose>
											<c:when test="${dto.photo eq null}">
													<img class="thumb-image" src="/artHouse/resources/img/movie/empty.jpg" />
											</c:when>
											<c:otherwise>
												<a href="selectDetailMovie.do?code=${dto.code}">
													<img class="thumb-image" src="/artHouse/resources/img/movie/${dto.photo}" />
												</a>
											</c:otherwise>
										</c:choose>
									</div>
									
									<!-- 영화 간략 정보 -->
									<div class="box-contents" style="width:100%;">
										<a class="hypertext" href="selectDetailMovie.do?code=${dto.code}">
											<strong class="title"><font size=5>${dto.title}</font></strong>
										</a><br>
		
										<span class="text-info"><strong>감독 / </strong>${dto.director}</span><br>
										
										<span class="text-info"><strong>개봉 / </strong>${dto.playdate}</span><br>
											<div> 
											<span class="text-info">
													<strong>추천수 / </strong><span id="newRecommend">${dto.recommend}</span>&nbsp;&nbsp;&nbsp;
											</span>
											</div>
										<!-- <div>
											<button class="hypertext" href="#">예매</button>
										</div> -->
									</div>
								</div>
								<!-- 영화 간략 정보 끝 -->
						</li>
					</c:forEach>
				</ol>
			</div>
		</div>
		<!-- main-context 끝 -->
		<jsp:include page="../../../bottom.jsp"></jsp:include>
	</div>
	<!-- page-body 끝 -->
</body>
</html>
