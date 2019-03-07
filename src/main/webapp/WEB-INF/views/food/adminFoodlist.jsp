<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>관리자 페이지</title>
	
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
		
		#delete{
			position: absolute;
			left: 100px; 
		}
		
		
	</style>
	
	<script type="text/javascript">
		$(function() {
			
		
			$("#delete").click(function() {		//'삭제'버튼을 클릭했을 경우
				$(location).attr('해당 페이지로 이동');
			});
		});
		
	</script>
</head>
<body>
<div class="page-body">
	<!-- 상단메뉴 -->
	<jsp:include page="/admin_top.jsp"></jsp:include>
	
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
						<form action="adminDelete.do" method="post">
							<!-- 상품이미지 -->
							<span class="img-wrap">
								<img alt="${dto.name }" src="./resources/img/food/${dto.img }" id="p${status.count }" name="img">
							</span>
							<!-- 상품상세내용 -->
							<span class="text-wrap">
								<span class="text-title" id="name${status.count }">${dto.name}</span>
								<span class="text-detail" id="category${status.count }">${dto.category }</span>
								<span class="text-detail" id="code${status.count }">${dto.code }</span>
								<span class="price-wrap">
									<span class="text-price" id="price${status.count }">${dto.price }원</span>
								</span>
								<input type="hidden" name="code" value="${dto.code }">
							</span>
						</a>
						<%-- <span><input type="button" value="수정" id="modify${status.count }"></span> --%>
						<div class="adminInsertBtn">
							 <a href="http://localhost:8888/artHouse/insertFood.jsp?code=${dto.code }&name=${dto.name}&category=${dto.category}&price=${dto.price}">등록</a>
						</div>
						<div class="adminModifyBtn">
							 <a href="http://localhost:8888/artHouse/modify.do?code=${dto.code }&name=${dto.name}&category=${dto.category}&price=${dto.price}">수정</a>
						</div>
						<span><input type="submit" value="삭제" id="delete${status.count }"></span>
						</form>
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
