<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스 : 회원가입</title>
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- 자바스크립트 -->
	<script type="text/javascript" src="/artHouse/resources/js/join.js"></script>
	
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
				<a class="current-page">
					<span>회원가입</span>
				</a>
			</div>
		</div>
		
		<!-- 회원가입 : 이용약관동의 -->
		<div class="main-context">
			<h5>서비스 이용약관 및 정보이용 안내에 대한 동의를 해주세요.</h5>
			
			<h4>이용약관</h4>
			<p class="term-text">
				<textarea id="term01" rows="10" readonly="readonly"></textarea>
			</p>
			<input type="checkbox" name="terms" class="terms" value="이용약관">
			위의 '이용약관'을 읽고 동의합니다. (필수동의)
			
			<br><br>
			
			<h4>개인정보수집 및 이용안내</h4>
			<p class="term-text">
				<textarea id="term02" rows="10" readonly="readonly"></textarea>
			</p>
			<input type="checkbox" name="terms" class="terms" value="개인정보수집">
			위의 '개인정보수집 및 이용안내'를 읽고 동의합니다. (필수동의)
			
			<br>
			
			<h5 style="color: #000;">
				<input type="checkbox" name="terms" id="all_ck">
				위의 모든 약관을 읽고 동의합니다.
			</h5>
			
			<!-- 소셜로그인시 값 저장 후 넘기기 -->
			<form action="join_input_social.jsp" id="soc_login" name="soc_login" method="post">
				<input type="hidden" name="get_id" id="get_id" value="${param.get_id}">
				<input type="hidden" name="get_pw" id="get_pw" value="${param.get_pw}">
				<input type="hidden" name="get_name" id="get_name" value="${param.get_name}">
			</form>
			
			<p class="btn_area">
				<button class="cancel-btn btn" onclick="location.href='../main.jsp'">취소</button>
				<button class="ok-btn btn" id="terms_ok">확인</button>
			</p>
		</div>		
		
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>

</body>
</html>