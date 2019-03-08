<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>

	<!-- 결제 api -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

	<!-- 자바스크립트 -->
	<script type="text/javascript" src="/artHouse/resources/js/main.js"></script>

	<!-- css -->
	<link rel="stylesheet" href="/artHouse/resources/css/jquery.bxslider.css">
	<style type="text/css">
		.page-body{
			position: relative;
			top: 170px;
			bottom: 0px;
		}
	</style>
	<script type="text/javascript">
	$(function(){
	    IMP.init('imp85782781'); 
		
		var price = document.getElementById('price').childNodes[0].nodeValue;   //td의 특정값을 가져오기 위한 DOM태그
		var id = document.getElementById('user_id').childNodes[0].nodeValue;  
		var name = document.getElementById('code').childNodes[0].nodeValue;  
		
		$("#pay").click(function() {
			/* alert($("#pay").val()); */
			IMP.request_pay({
			    pg : 'html5_inicis',
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : name,
			    amount : price,
			    buyer_email : 'iamport@siot.do',
			    buyer_name : id,
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456'
			}, function(rsp) {
			    if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			    }

			    alert(msg);
			});
		});
			 
		$("#continue").click(function() {
			location.href="http://localhost:8888/artHouse/userFood";
		});
			
	}); //함수 종료
	</script>
</head>
<body>
<%
	String user_id = request.getParameter("user_id");
	String code = request.getParameter("code");
	String price1 = request.getParameter("price");
	int price = Integer.parseInt(price1);
	String amount1 = request.getParameter("amount");
	int amount = Integer.parseInt(amount1);
	int total = price * amount;
	String name = request.getParameter("name");
%>
	<div class="page-body">
<jsp:include page="../../../top.jsp"></jsp:include>
<h1 id="cart_title">장바구니 목록</h1> 
<hr>

	<table border="3" class="table_body" align="left">
		<tr>
			<td width="65">번호</td>
			<td width="150">회원 아이디</td>
			<td width="150">상품명</td>
			<td width="150">수량</td>
			<td width="150">가격</td>
		</tr>
		<tr>
			<td width="50" height="50" id="cart_id">1</td>
			<td width="100" id="user_id"><%= user_id%></td>
			<td width="200" id="code"><%= name%></td>
			<td width="200" id="amount"><%= amount1%></td>
			<td width="200" id="price"><%= price1 %></td>
		</tr>
	</table>
	<input type="button" value="쇼핑 계속하기" align="left" id="continue">
	<input type="button" value="결제하기" align="left" id="pay">
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../../../bottom.jsp"></jsp:include>
</body>
</html>