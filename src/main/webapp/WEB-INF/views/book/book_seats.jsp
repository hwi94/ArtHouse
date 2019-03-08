<%@page import="com.itbank.artHouse.users.UserDTO"%>
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
<title>Insert title here</title>
<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<!-- css -->
	<!-- <link rel="stylesheet" href="/artHouse/resources/css/jquery.bxslider.css"> -->
<style type="text/css">
.seats {
	width: 20px;
	height: 20px;
	/* line-height: 11px; */
	border: solid 2px #ed8c00;
}

.seats {
	float: left; /*가로 정렬을 하기위한 float*/
	width: 18px;
	height: 15px;
	line-height: 15px;
	overflow: hidden;
	text-align: center;
	color: #fff;
	background-color: #666;
	font-size: 10px;
	text-align: center;
}
.seatPlace{
width:70%;
height:500px;
}
#front {
	/* line-height: 11px; */
	border: solid 2px #ed8c00;
}

#middle {
	line-height: 11px;
	border: solid 2px #01c73c;
}

#back {
	line-height: 11px;
	border: solid 2px #f71708;
}

#unavailable {
	/* line-height: 11px; */
	border: solid 2px #666;
	float: left; /*가로 정렬을 하기위한 float*/
	/* width: 20px;
	height: 20px;
	line-height: 15px; */
	overflow: hidden;
	text-align: center;
	color: #fff;
	background-color: #bbb;
	font-size: 10px;
	width: 18px;
	height: 15px;
}

#numbering {
	font-size: 12px;
	text-align: center;
	float: left; /*가로 정렬을 하기위한 float*/
	width: 20px;
	height: 20px;
	line-height: 11px;
	/* border: solid 2px #f71708; */
	font-weight: bold;
	line-height: 20px;
	overflow: hidden;
}
#blank{
font-size: 12px;
	text-align: center;
	float: left; /*가로 정렬을 하기위한 float*/
	width: 22px;
	height: 19px;
	line-height: 11px;
	/* border: solid 2px #f71708; */
	font-weight: bold;
	line-height: 20px;
	overflow: hidden;
}

.col-body {
	background-color: #e0d7c0;
	height: 450px;
	width: 800px;
}

.screen {
	width: 100%;
	height: 25px;
	margin: 0 auto;
	line-height: 25px;
	text-align: center;
	background:
		url(http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/step2/screen_bg.png)
		repeat-x left;
	color: #333;
	font-family: '돋움', dotum, Nanum Gothic, sans-serif;
	font-size: 12px;
	font-weight: bold;
}

.radiobutton.type-rating_economy .icon {
	background-image: none;
	border: 2px solid #ed8c00;
	width: 11px;
	height: 12px;
	left: 330px;
	top: 365px;
}

.radiobutton.type-rating_comfort .icon {
	background-image: none;
	border: 2px solid #01c73c;
	width: 11px;
	height: 12px;
	left: 330px;
	top: 385px;
}

.radiobutton.type-rating_prime .icon {
	background-image: none;
	border: 2px solid #f71708;
	width: 11px;
	height: 12px;
	left: 330px;
	top: 405px;
}

.icon {
	/* position: absolute; */
	width: 15px;
	height: 16px;
	margin-right: 3px;
	vertical-align: middle;
	display: inline-block;
	*display: inline;
	zoom: 1;
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
.tag{
	float:left;
    display: block;
    height: 100%;
    color: #333;
    font-family: Verdana;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
        width: 20px;
    height: 20px;
    line-height: 20px;
    border: 1px solid #d6d3ce;
    background-color: #f2f0e5;
    text-decoration: none;
}
li {
    list-style: none;
    display: list-item;
    text-align: -webkit-match-parent;
        float: left;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
</style>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var inputTaken = $("#inputTaken").val(); //예약된좌석
						var inputName = $("#inputName").val(); //상영관
						var inputTime = $("#inputTime").val(); //상영 시간

						var data1 = {
							playtime : inputTime,
							seatTaken : inputTaken
						};
						$.ajax({
							url : "seatSelect",
							data : data1,
							success : function(result) {
								$(".seatPlace").html(result);
							},
							error : function(request, status, error) {
								alert("code:" + request.status + "\n"
										+ "message:" + request.responseText
										+ "\n" + "error:" + error);
							}

						})//ajax
						
						$(".tag").click(function(){
							$(".tag").css("color","black");
							$(".tag").css("background-color","#f2f0e5");
							$(this).removeAttr("background-color");
							$(this).css("background-color","black");
							$(this).css("color","white");
							$("#count").val($(this).text());
							$("#click").val("");
						});
						
						$(document).on("click",".seats",function() {
							var count = $("#count").val();
							var clicked = $("#click").val();
							var value = $(this).text();
							var price;
							
							if($(this).attr('id')=='front'){
								price=11000;
							}else if($(this).attr('id')=='middle'){
								price=10000;
							}else if($(this).attr('id')=='back'){
								price=9000;
							}
							
							
							/* 클릭해서 모두선택 카운트값 0 일때 */
							if(count=='0') {
								var yesNo=confirm('모두 선택되었습니다. 재선택 하시겠습니까?');
								/* 재선택 */
								if(yesNo==true) {
									$("#count").val("");
									$("#click").val("");
									$(".seats").css("background-color", "#666");
									
									$(".tag").removeAttr("background-color");
									$(".tag").css("background-color","#f2f0e5");
									$(".tag").css("color","black");
								/* 재선택이 아닐때 */
								}else if(yesNo==false){
									alert('결재선택을 선택해주세요');
								}
								
							/* 카운트값이 빈값이 아닐때 */
							} else if(count=="") {
								alert('인원수를 선택해주세요');
							/* 카운트값이 0이아닐때 */
							}else if(count>0) {
								$("#count").val(count-1);
								if(clicked=="") {
									$("#click").val($(this).text());
									
									$("#totalPrice").text("총금액  ");
									$("#infoSeats").text($(this).text());
									$("#infoPrice").text(price);
									$("#money").val(price);
								}else {
									$("#click").val(clicked+"-"+$(this).text());
									
									$("#infoSeats").text($("#infoSeats").text()+","+$(this).text());
									var infoPrice=$("#infoPrice").text();
									infoPrice *=1;
									$("#infoPrice").text(infoPrice+price);
									$("#money").val(infoPrice+price);
								}
								var list = clicked.split("-");
								$(list).each(function(index,person) {
									var cSeats = person;
									$(".seats").each(function(index) {
										if($(this).text()==cSeats) {
											$(this).css("background-color","#ad1712");
											$(this).css("background-position","0 0");
										} 
									})
								/*  if(value==person) {
									 alert("이미 선택된 좌석입니다");
									 $("#count").val(count+1);
									 var length = list.length;
									 length*=1;
									 alert("list.length-1 : "+ (length-1));
									 list.splice(length,1);
								 }  */
								})
							}
						})//click

						$(document).on("mouseover", ".seats", function() {
							$(".seats").css("background-color", "#666");

							/* var clicked = $("#click").val();
							$("#seats").each(function(index) {
								if ($(this).text() == clicked) {
									$(this).css("background-color", "#ad1712");
									$(this).css("background-position", "0 0");
								}
							});*/
							$(this).css("background-color", "#ad1712");
							$(this).css("background-position", "0 0"); 
							var clicked = $("#click").val();
							var list = clicked.split("-");
							$(list).each(function(index,person) {
								var cSeats = person;
								$(".seats").each(function(index) {
									if($(this).text()==cSeats) {
										$(this).css("background-color","#ad1712");
										$(this).css("background-position","0 0");
									}
								})
							})

						})

						$(document).on("mouseout", ".seats", function() {
							$(".seats").css("background-color", "#666");
							var clicked = $("#click").val();
							var list = clicked.split("-");
							$(list).each(function(index,person) {
								var cSeats = person;
								$(".seats").each(function(index) {
									if($(this).text()==cSeats) {
										$(this).css("background-color","#ad1712");
										$(this).css("background-position","0 0");
									}
								})
							})

						});

					});//document
</script>

</head>
<body>

<div class="page-body">
		<!-- 상단메뉴 -->
		<jsp:include page="/top.jsp"></jsp:include>
		
		<!-- 중간내용 -->
		<div class="main-context" align="center">	
	<!-- 예약인원수 -->
	<input type="text" id="count" name="count" style="display: none">
	<!-- 상영관 -->
	<input type="text" id="inputName" value="${rDto.tName}" name="tName" style="display: none">
	<!-- 예약된 자석 -->
	<input type="text" id="inputTaken" value="${rDto.taken }" style="display: none">
	<br>
	<div class="col-body" align="center">
		<div class="titleHead">
		<span class="title" style="float:left;">일반</span>
		<table style="float:left;">
		<ul>
			<li class="" type="adult"><a class="tag" href="#" id="tag" onclick="return false;">0</a></li>
			<li type="adult" class=""><a class="tag" href="#" id="tag" onclick="return false;">1</a></li>
			<li type="adult" class=""><a class="tag" href="#" id="tag" onclick="return false;">2</a></li>
			<li type="adult" class=""><a class="tag" href="#" id="tag" onclick="return false;">3</a></li>
			<li type="adult" class=""><a class="tag" href="#"  id="tag" onclick="return false;">4</a></li>
			<li type="adult" class=""><a class="tag" href="#" id="tag" onclick="return false;">5</a></li>
			<li type="adult"><a class="tag" href="#" id="tag" onclick="return false;">6</a></li>
			<li type="adult"><a class="tag" href="#" id="tag" onclick="return false;">7</a></li>
			<li type="adult"><a class="tag" href="#" id="tag" onclick="return false;">8</a></li>
		</ul>
		</table>
		<br>
		<br>
		</div>
		
		<div class="screen" title="SCREEN" style="width: 652px;">
			<span class="text" style="line-height: 25px;">Screen</span>
		</div>
		<br> <br>
		<div style="float: right;">
			<span class="radiobutton type-rating_economy" title="Economy 석"
				style=""><span class="icon">.</span>Economy Zone</span> <span
				class="radiobutton type-rating_comfort" title="Standard 석"
				style="display: block;"><span class="icon">.</span>Standard
				Zone</span> <span class="radiobutton type-rating_prime" title="Prime 석"
				style="display: block;"><span class="icon">.</span>Prime Zone</span>
		</div>
		<div align="center" style="width: 50%;">
			<div align="center" class="seatPlace" style="width: 100%;"></div>
		</div>
		<br> <br> <br>
	</div>
	<div class="select">
		<div class="select-body">
			영화정보<br> <span class="spanHeader" id="infoMovie">${passMovie}</span>
		</div>
		<div class="select-body">
			<div>
				<span class="spanHeader" id="infoTheater">${passTheater}</span>
			</div>
			<div>
				<span class="spanHeader" id="infoDate">${passDate}</span>
			</div>
		</div>


		<div class="select-body">좌석정보<br>
		<span class="spanHeader" id="infoSeats"></span><br>
		<span class="spanHeader" id="totalPrice"></span>
		<span class="spanHeader" id="infoPrice"></span>
		</div>
		<!-- <div class="select-body" style="background-color: red">좌석선택</div> -->
		<form action="chargePage" id="form">
		<!-- 영화 시간 -->
		<%UserDTO userdto = (UserDTO)session.getAttribute("user");
		%>
		<input type="text" id="id" value="<%=userdto.getId() %>" name="id" style="display:none">
		<input type="text" id="movie" value="${rDto.movie}" name="movie" style="display: none">
		<input type="text" id="inputTime" value="${rDto.playtime}" name="playtime" style="display: none">
		<input type="text" id="click" name="click" style="display: none">
		<input type="text" id="money" name="money" style="display: none">
		<button class="select-body" style="background-color: red"
				onclick="submit()" id="button">결제선택</button>
		</form>
	</div>
</div>
		
		<!-- 하단내용 -->
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>

</body>
</html>