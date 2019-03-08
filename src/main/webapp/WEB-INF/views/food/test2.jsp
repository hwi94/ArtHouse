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
	<style type="text/css">
	 h1{
		padding-top: 30px;
	}
	
	.food_name{
		font-size: 20px;
		padding-left: 10px;
		font-weight: bold;	
	}
	.food_price{
		padding-left: 10px;
		font-weight: bold;
	}
	
	
	</style>
	<script type="text/javascript">
		$(function(){
			 $("#transfer").click(function(){
				alert('장바구니에 담겼습니다. 확인하시겠습니까?')
				/* document.location = 'http://localhost:7777.com/'; */
			}); 
			
		});
	</script>
</head>
<body>
<jsp:include page="../../../top.jsp"></jsp:include>
	
	<div class="page-body">
	<h1>팝콘</h1>
	<hr>
	
	<form action="cartInsert.do" method="post">
	<a href="/detail/detailPage">
		<img alt="고소팝콘(L)" src="./resources/img/food/pop1.jpg">
		</a>
		<input type="hidden" value="pop1" name="code" id="code"> <!-- 상품1의 코드  -->
	    <input type="hidden" value="${dto.price }" name="price" id="price"> <!-- 상품1의 가격 -->
		<p class="food_name">${dto.name }</p>
		<p class="food_price">${dto.price }</p>
     	<input name="prdId" type="hidden" value="5">   
	    &nbsp;&nbsp;&nbsp;<select name="amount" class="amount_set">
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">4</option>
	    <option value="5">5</option>
	    </select>개
	    <br>
	    &nbsp;&nbsp;&nbsp;<input type="submit" value="장바구니에 담기" id="transfer">
	    <hr>
	    <input type="hidden" value="pop1" name="code" id="code"> <!-- 상품1의 코드  -->
	    <input type="hidden" value="5000" name="price" id="price"> <!-- 상품1의 가격 -->
		<p class="food_name">고소팝콘(L)</p>
		<p class="food_price">5,000</p>
     	<input name="prdId" type="hidden" value="5">   
	    &nbsp;&nbsp;&nbsp;<select name="amount" class="amount_set">
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">4</option>
	    <option value="5">5</option>
	    </select>개
	    <br>
	    &nbsp;&nbsp;&nbsp;<input type="submit" value="장바구니에 담기" id="transfer">
	    
	    </form>
	    </div>
</body>
</html>