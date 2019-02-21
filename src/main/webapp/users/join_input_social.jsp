<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스 : 회원가입</title>
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" href="../resources/css/arthouse.users.css">
	
	<!-- 자바스크립트 -->
	<script type="text/javascript" src="/artHouse/resources/js/join.js"></script>
	
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
		
		<!-- 회원가입 : 가입정보입력 -->
		<div class="main-context">
			<h4>가입정보입력</h4>
			
			<form action="join.do" method="post">
			
			<input type="hidden" name="id" value="${param.get_id}">
			<input type="hidden" name="pw" value="${param.get_pw}">
			
			<table class="form-table" summary="정보입력">					
				<!-- 이름 -->
				<tr>
					<th>
						<label for="input_name">이름</label>
					</th>
					<td>
						<input type="text" name="name" id="input_name" title="이름 입력" maxlength="10" value="${param.get_name}">
					</td>
				</tr>
				
				<!-- 생년월일 -->
				<tr>
					<th>
						<label for="birthDay">생년월일</label>
					</th>
					<td>
						<input type="text" name="birthYear" id="birthYear" title="생년월일 년도 입력" class="w55 numOnly" maxlength="4">
						<span class="text-sub">년</span>
						<input type="text" name="birthMonth" id="birthMonth" title="생년월일 월 입력" class="w44 numOnly" maxlength="2">
						<span class="text-sub">월</span>
						<input type="text" name="birthDate" id="birthDate" title="생년월일 일 입력" class="w44 numOnly" maxlength="2">
						<span class="text-sub">일</span>
						
						<input type="hidden" name="birth" id="birth">
					</td>
				</tr>
				
				<!-- 성별 -->
				<tr>
					<th>
						<label for="input_gender">성별</label>
					</th>
					<td>
						<input type="radio" name="gender" value="여" checked="checked">여성
						<input type="radio" name="gender" value="남">남성
					</td>
				</tr>
				
				<!-- 휴대폰 -->
				<tr>
					<th>
						<label for="input_tel">휴대폰</label>
					</th>
					<td>
						<input type="text" name="tel1" id="tel1" title="연락처 앞번호 입력" class="w55 numOnly" maxlength="3">
						<span class="text-sub">-</span>
						<input type="text" name="tel2" id="tel2" title="연락처 중간번호 입력" class="w55 numOnly" maxlength="4">
						<span class="text-sub">-</span>
						<input type="text" name="tel3" id="tel3" title="연락처 뒷번호 입력" class="w55 numOnly" maxlength="4">
						
						<input type="hidden" name="tel" id="tel">
					</td>
				</tr>
				
				<!-- 이메일 -->
				<tr>
					<th>
						<label for="input_email">이메일</label>
					</th>
					<td>
						<input type="text" name="mail" id="input_email" title="이메일 입력" maxlength="30">
						<span class="text-sub" id="emailCheck" style="margin-left: 111px;"></span>
					</td>
				</tr>
			</table>
			
			<input type="hidden" name="grade" value="M1">
						
			<p class="btn_area">
				<button type="button" class="cancel-btn btn" onclick="location.href='../main.jsp'">취소</button>
				<button type="submit" class="ok-btn btn" id="join_btn">확인</button>
			</p>
			
			</form>
		</div>		
		
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>

</body>
</html>