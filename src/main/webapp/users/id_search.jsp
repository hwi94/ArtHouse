<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스 : 아이디찾기</title>

	<!-- 웹폰트 -->
	<link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" href="../resources/css/arthouse.users.css">
	
	<!-- 자바스크립트 -->
	<script type="text/javascript" src="/artHouse/resources/js/id_pw_sr.js"></script>
</head>
<body>
<div class="page-body">

	<!-- 아이디찾기 : 정보입력 -->
	<div class="window-context">
		<h4>아이디 찾기</h4>
			
		<form action="id_search.do" method="post">
			
		<table class="form-table" summary="정보입력">
			<!-- 이름 -->
			<tr>
				<th>
					<label for="input_id">이름</label>
				</th>
				<td>
					<input type="text" name="name" id="input_name" title="이름 입력" maxlength="10">
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
		</table>
		
		<div class="window-btn">
			<button type="submit" class="ok-btn btn" id="search_btn">확인</button>
		</div>
		
		</form>
	</div>
</div>
</body>
</html>