<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ArtHouse</title>
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- 자바스크립트 -->
	<script type="text/javascript" src="./resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	
	<div class="page-body">
		<div class="slider">
			<ul class="slides">
				<li><img src="http://lorempixel.com/580/250/nature/1"> <!-- random image -->
					<div class="caption center-align">
						<h3>This is our big Tagline!</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div>
				</li>
				<li><img src="http://lorempixel.com/580/250/nature/2"> <!-- random image -->
					<div class="caption left-align">
						<h3>Left Aligned Caption</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div>
				</li>
				<li><img src="http://lorempixel.com/580/250/nature/3"> <!-- random image -->
					<div class="caption right-align">
						<h3>Right Aligned Caption</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div>
				</li>
				<li><img src="http://lorempixel.com/580/250/nature/4"> <!-- random image -->
					<div class="caption center-align">
						<h3>This is our big Tagline!</h3>
						<h5 class="light grey-text text-lighten-3">Here's our small
							slogan.</h5>
					</div>
				</li>
			</ul>
		</div>
		
		<jsp:include page="bottom.jsp"></jsp:include>
	</div>

</body>
</html>