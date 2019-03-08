<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.itbank.artHouse.book.ResvDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itbank.artHouse.book.ResvDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아트하우스</title>
<link rel="stylesheet" href="/artHouse/resources/css/jquery.bxslider.css">
<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		/* 버튼당 기능정리 */
		/* 영화제목 클릭하면 - 극장리스트 #theater-html, #hidden-val설정 */
		/* 극장제목 클릭하면 - bookable과 unbookable css영향 */
		/* Bookable인 날짜 클릭하면 - #infoDate, h1태그(시간컬럼)설정 */
		$(document).ready(function(){
			var movie1 = $("#movieGiven").val();
			if(movie1!=null){
				var list = $("li").text();
				$(list).each(function(index){
					if(movieGiven==index){
						$(this).css("background-color", "black");
						$(this).css("color", "white");
						$("#infoMovie").html(movie1);
						$("#passMovie").val(movie1);
						var movie = {
							"movie" : movie1
						};
						$.ajax({
							url : "movieInfo",
							data : movie,
							type : "get",
							success : function(result) {
								/* 극장컬럼 */
								$("#theater").html(result);
							}
						})//ajax

						$.ajax({
							url : "playtimeInfo",
							data : movie,
							success : function(result) {
								/* 클릭한 영화의 - 모든정보 모아놓는 히든텍스트 */
								$("#hidden").val(result);
							}//success
						})//ajax
						
						$.ajax({
							url : "movieInformation",
							data : movie,
							success: function(result){
								$("#movieInformation").html(result);
							}
							
						})
					}
				})
			}
		
		})
		/* 영화제목이 클릭되면 */
		$("li").click(function() {
			/* 영화정보초기화 */
			$("#movieInformation").html();
			
			/* bookable(클릭가능한 날짜설정)초기화 */
			$("#bookable").removeAttr('style');
			$("#bookable").attr("id", "unbookable");
			$("#unbookable").css("color", "#c3c3c3");
			
			/* 시간h1태그 초기화 */
			$("h1").empty();
			
			/* 극장정보 초기화 */
			$("#theater").empty();
			$("#infoTheater").html("극장");
			
			$("#infoDate").html("일시");
			
			/* 히든텍스트 타임 초기화 */
			$("#textTime").empty();
			
			/* 영화이름(클릭)에 해당하는 극장 가져오기*/
			var movie1 = $(this).text();
			$("#infoMovie").html(movie1);
			$("#passMovie").val(movie1);
			var movie = {
				"movie" : movie1
			};
			$.ajax({
				url : "movieInfo",
				data : movie,
				type : "get",
				success : function(result) {
					/* 극장컬럼 */
					$("#theater").html(result);
				}
			})//ajax

			$.ajax({
				url : "playtimeInfo",
				data : movie,
				success : function(result) {
					/* 클릭한 영화의 - 모든정보 모아놓는 히든텍스트 */
					$("#hidden").val(result);
				}//success
			})//ajax
			
			$.ajax({
				url : "movieInformation",
				data : movie,
				success: function(result){
					$("#movieInformation").html(result);
				}
				
			})
		})// $("li").click(function())

		/* 영화이름 클릭하면 CSS설정 */
		$(document).on("click", "#movie", function() {
			$("li").css("color", "black");
			$("li").css("background-color", "transparent");

			$(this).css("background-color", "black");
			$(this).css("color", "white");
		})
		
		/* 극장 클릭하면 */
		$(document).on("click", "#tName", function() {
			/* 클릭하지 않은 극장 끄기 강조 */
			$("#tName").css("color", "black");
			$("#tName").css("background-color", "transparent");
			
			/* 클릭한 극장 강조 */
			$(this).css("background-color", "black");
			$(this).css("color", "white");
			
			/* bookable(클릭가능한 날짜설정)초기화 */
			$("#bookable").removeAttr('style');
			$("#bookable").attr("id", "unbookable");
			$("#unbookable").css("color", "#c3c3c3");

			/* 시간h1태그 초기화 */
			$("h1").empty();

			var tName = $(this).text();
			/* 하단 극장정보 띄우기 */
			$("#infoTheater").html("극장 :  " + tName);
			$("#passTheater").val("극장: " + tName);
			var hidden = $("#hidden").val();
			var list = hidden.split(",");
			/* 극장정보 형식 - Harry/1T/20190221011000/B1, 2nd Item...*/
			$(list).each(function(index) {
				/* ','로 나눈 정보를 세부정보로 '/'로 나눔 */
				var date = this.split("/");
				/* 극장이름이 똑같으면 */
				//alert("극장이름" + tName + "날짜 : " + date[2].substring(0, 8));
				if (tName == date[1].substring(0, 2)) {
					/* 날짜값과 비교 */
				$("span").each(function(index) {
						/* 날짜가 똑같으면 */
						//alert("$(this).text() : " + $(this).text() + " date[2].substring(6, 8) : " + date[2].substring(6, 8)); 
						if ($(this).text() == date[2].substring(6, 8)) {
							/* 해당날짜만 CSS설정과 예약가능하게 바꿈*/
							$("#textTheater").val(tName);
							$(this).attr("id", "bookable");
							$(this).css("font-weight", "bold");
							$(this).css("color", "#000000");
						}
					})
				}

			})
		})//click 

		/* 날짜 - 예약가능 누르면 */
		$(document).on("click","#bookable",	function() {
			/* 시간비우기 */
			$("h1").empty();

			/* 히든텍스트에 있는 영화정보 가져와서 아이템으로 나누기 */
			var value = $(this).text();
			var hidden = $("#hidden").val();
			var list = hidden.split(",");

			//ex) list[0] = Tree/1T/20190215021300/A3, list[1] = Tree/1T/20190216152013/B3, list[2]=...
			$(list).each(function(index) {
						var date = this.split("/");
						/* 해당영화의 -> 클릭한 날짜의 해당하는 값들만 */
						if (date[2].substring(6, 8) == value && date[1]==$("#textTheater").val()) {
							/* 페이지넘길때 날짜 넘길 히든텍스트  textTime */
							$("#textTime").val(date[2].substring(0,8)); 
							/* 하단에 클릭한값 연도, 날짜 설정해주기 */							
							$("#infoDate").html(
									"일시  : " + date[2].substring(0, 4)
											+ "-"
											+ date[2].substring(4, 6)
											+ "-"
											+ date[2].substring(6, 8));
							$("#passDate").val(
									"일시  : " + date[2].substring(0, 4)
											+ "-"
											+ date[2].substring(4, 6)
											+ "-"
											+ date[2].substring(6, 8));
							/* 시간 컬럼에 시간 띄워주기 */
							$("h1").append(
									date[2].substring(8, 10) + ":"
											+ date[2].substring(10, 12)
											+ "<br>");
						}

					})
		})

		/* 시간 클릭 */
		$(document).on("click", "#time", function() {
			alert('좌석선택버튼을 클릭해주세요.');
			
			/* 해당영화의 모든정보 히든텍스트 가져오기 */
			var timeChoose=$(this).text();
			var hidden = $("#hidden").val();
			var list = hidden.split(",");
			
			var dateData= null;
			var takenSeats = null;
			
			/* 영화의 정보 스캔 */
			$(list).each(
					function(index) {
						/* 영화정보 하나 리스트로 나누기 */
						var date = this.split("/");
						/* 나머지 공백값 없애기 */
						if(date[0].length>=2){
						/* 선택한값 - 시간과, textTime에 저장해둔 날짜가 같은 아이템찾아서 */
						if (timeChoose==(date[2].substring(8, 10) + ":"+ date[2].substring(10, 12)) && $("#textTime").val()==date[2].substring(0,8)) {
							dateData = date[2];
							takenSeats=date[3];
						}
					}
					});
			$("#pass").val(dateData);
			$("#takenSeats").val(takenSeats);
			
		})
		
		
	})//function
</script>
<style>
#unbookable {
	color: #c3c3c3;
}

li {
	list-style: none;
	color: #333;
}

ul {
	padding: 0px;
}

.col-head {
	line-height: 33px;
	width: 200px;
	height: 33px;
	text-align: center;
	background-color: #333333;
	color: #fff;
	float: left; /*가로 정렬을 하기위한 float*/
	border: 1px solid #e5e5e5;
}

.col-body {
	background-color: #e0d7c0;
	height: 500px;
	float: left;
	width: 200px;
	border: 1px solid #e5e5e5;
}

.element {
	height: 610px;
	width: 810px;
	/* color: #333; */
	font-family: '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 15px;
	font-weight: bold;
}

.select {
	height: 120px;
	width: 810px;
}

.select-body {
	height: 120px;
	width: 200px;
	background-color: black;
	color: white;
	float: left; /*가로 정렬을 하기위한 float*/
	border: 1px solid #e5e5e5;
}

#tName {
	height: 15px;
	width: 180px;
	padding: 10px 90px;
}

#movie {
	height: 15px;
	width: 180px;
	padding: 10px 10px;
}

.spanHeader {
	height: 20px;
	width: 50px;
}
</style>
</head>
<body>
<div class="page-body">
		<!-- 상단메뉴 -->
		<jsp:include page="/top.jsp"></jsp:include>
		
		<!-- 중간내용 -->
		<div class="main-context">
	<br>
	<input type="text" id="movieGiven" style="display:none" value="${movieGiven }">
	<input type="text" id="hidden" style="display: none">
	<input type="text" id="textTime" style="display: none">
	<input type="text" id="textTheater" style="display: none">
	<!-- 값 저장해서 넘길히든값 -->
	
	<div style="width:100%" align="center">
		<div class="element" style="height: 400px;" align="center">
			<div class="col-head">영화</div>
			<div></div>
			<div class="col-head">극장</div>
			<div class="col-head">날짜</div>
			<div class="col-head">시간</div>
			<br>
			<div class="col-body">
				<!-- 영화목록 -->
				<br>
				<table align="center">
					<ul>
						<c:forEach var="rDto" items="${list }">
							<li id="movie">${rDto.movie }</li>
							<br>
						</c:forEach>
					</ul>
				</table>
			</div>

			<div class="col-body" id="theater"></div>
			<div class="col-body" id="date" align="center">
				<br> <br>
				<c:forEach var="date" items="${dayList}">
					<span id="unbookable">${date}</span>
					<br>
					<br>
				</c:forEach>
				<br>
			</div>
			<div class="col-body" align="center">
				<h1 id="time"></h1>
			</div>
		</div>
		<!-- <a href="seatPage">좌석예약</a> -->
		<div class="select">
			<div class="select-body">
			<div id="movieInformation"></div>
				 영화정보<br> <span class="spanHeader" id="infoMovie">이영화는</span>
			</div>
			<div class="select-body" align="left">
				<div>
					<span class="spanHeader" id="infoTheater">극장</span>
				</div>
				<div>
					<span class="spanHeader" id="infoDate">일시</span>
				</div>
				<div>
				</div>
			</div>


			<div class="select-body">좌석정보</div>
			<!-- <div class="select-body" style="background-color: red">좌석선택</div> -->
			<form action= "seatPage" id="form">
				<input type="text" id="passMovie" name="passMovie" style="display: none;">
				<input type="text" id="passTheater" name="passTheater" style="display: none;">
				<input type="text" id="passDate" name="passDate" style="display: none;">
				<input type="text" id="pass" name="playtime" style="display: none;">
				<input type="text" id="takenSeats" name="takenSeats" style="display: none;">
			<button class="select-body" style="background-color:red" onclick="submit()" id="button">좌석선택</button>
	</form>
		</div>
	</div>
</div>
		
		<!-- 하단내용 -->
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>

</body>
</html>