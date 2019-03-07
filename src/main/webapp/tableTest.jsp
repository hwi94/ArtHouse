<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#cart_title{
		color: deepblue;
		font-style: italic;
	}
</style>
</head>
<body>
<div class="page-body">
<jsp:include page="/top.jsp"></jsp:include>
<h1 id="cart_title">장바구니 목록</h1> 
<hr>
	<table border="2" class="table_body" align="left">
		<tr>
			<td width="150">주문번호</td>
			<td width="150">회원 아이디</td>
			<td width="150">상품명</td>
			<td width="150">수량</td>
			<td width="150">가격</td>
		</tr>
		<tr>
			<td width="200">1</td>
			<td width="200">2</td>
			<td width="200">3</td>
			<td width="200">4</td>
			<td width="200">5</td>
		</tr>
	</table>
	<a href="/artHouse/adminFood">관리자 페이지</a>
	<a href="/artHouse/userFood">상품페이지</a>
	</div>
</body>
</html>