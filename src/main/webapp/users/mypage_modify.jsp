<%@page import="com.itbank.artHouse.users.UserDTO"%>
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
	<script type="text/javascript" src="/artHouse/resources/js/mypage.js"></script>
</head>
<body>
	<jsp:useBean id="dto" class="com.itbank.artHouse.users.UserDTO">
		<jsp:setProperty name="dto" property="*" />
	</jsp:useBean>

	<div class="page-body">
		<jsp:include page="/top.jsp"></jsp:include>
		
		<!-- 상단메뉴안내 -->
		<div class="this-menu">
			<div class="main-context cur-info">
				<a href="../main.jsp">
					<span>홈</span>
				</a>
				|
				<a href="mypage_main.jsp">
					<span>마이페이지</span>
				</a>
				|
				<a class="current-page">
					<span>회원정보수정</span>
				</a>
			</div>
		</div>
		
	<%
		dto = (UserDTO)session.getAttribute("user");
	
		String id = dto.getId();
		String name = dto.getName();
		String birth = dto.getBirth();
		String tel = dto.getTel();
		String mail = dto.getMail();
		
		String tel1 = tel.substring(0, 3);
		String tel2 = null;
		String tel3 = null;
		
		if (tel.length() == 10) {
			tel2 = tel.substring(3, 6);
			tel3 = tel.substring(6);
		} else {
			tel2 = tel.substring(3, 7);
			tel3 = tel.substring(7);
		}
	%>	
		
		<!-- 회원가입 : 가입정보입력 -->
		<div class="main-context">
			<!-- 좌측 -->
			<jsp:include page="/left_menu.jsp"></jsp:include>
			
			<!-- 우측 -->
			<div class="col-detail">
	
				<h4>회원정보수정</h4>
				
				<form action="update.do" method="post">
				
				<table class="form-table" summary="정보입력">
					<!-- 아이디 -->
					<tr>
						<th>
							<label for="input_id">아이디</label>
						</th>
						<td>
							<input type="text" name="id" id="input_id" title="아이디 입력" maxlength="12" readonly="readonly" value="<%= id %>">
							<span class="text-sub" style="margin-left: 111px;">영문이나 숫자 혹은 그 조합 5~12자리</span>
						</td>
					</tr>
					
					<!-- 비밀번호 -->
					<tr>
						<th>
							<label for="input_pw">비밀번호</label>
						</th>
						<td>
							<input type="password" name="pw" id="input_pw" title="비밀번호 입력" maxlength="16">
							<span class="text-sub" style="margin-left: 111px;">영문, 숫자, 특수문자 조합 5~16자리</span>
						</td>
					</tr>
					
					<!-- 비밀번호확인 -->
					<tr>
						<th>
							<label for="input_pw2">비밀번호 확인</label>
						</th>
						<td>
							<input type="password" name="pw2" id="input_pw2" title="비밀번호 확인 입력" maxlength="16">
							<span class="text-sub" id="pwCheck" style="margin-left: 111px;"></span>
						</td>
					</tr>
					
					<!-- 이름 -->
					<tr>
						<th>
							<label for="input_name">이름</label>
						</th>
						<td>
							<input type="text" name="name" id="input_name" title="이름 입력" maxlength="10" value="<%= name %>">
						</td>
					</tr>
					
					<!-- 생년월일 -->
					<tr>
						<th>
							<label for="birthDay">생년월일</label>
						</th>
						<td>
							<input type="text" name="birthYear" id="birthYear" title="생년월일 년도 입력" class="w55 numOnly" maxlength="4" value="<%= birth.substring(0, 4) %>">
							<span class="text-sub">년</span>
							<input type="text" name="birthMonth" id="birthMonth" title="생년월일 월 입력" class="w44 numOnly" maxlength="2" value="<%= birth.substring(4, 6) %>">
							<span class="text-sub">월</span>
							<input type="text" name="birthDate" id="birthDate" title="생년월일 일 입력" class="w44 numOnly" maxlength="2" value="<%= birth.substring(6) %>">
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
							<input type="text" name="tel1" id="tel1" title="연락처 앞번호 입력" class="w55 numOnly" maxlength="3" value="<%= tel1 %>">
							<span class="text-sub">-</span>
							<input type="text" name="tel2" id="tel2" title="연락처 중간번호 입력" class="w55 numOnly" maxlength="4" value="<%= tel2 %>">
							<span class="text-sub">-</span>
							<input type="text" name="tel3" id="tel3" title="연락처 뒷번호 입력" class="w55 numOnly" maxlength="4" value="<%= tel3 %>">
							
							<input type="hidden" name="tel" id="tel">
						</td>
					</tr>
					
					<!-- 이메일 -->
					<tr>
						<th>
							<label for="input_email">이메일</label>
						</th>
						<td>
							<input type="text" name="mail" id="input_email" title="이메일 입력" maxlength="30" value="<%= mail %>">
							<span class="text-sub" id="emailCheck" style="margin-left: 111px;"></span>
						</td>
					</tr>
				</table>
				
				<input type="hidden" name="grade" value="M1">
							
				<div id="del-btn">
					<a href="#" id="user-del">회원탈퇴</a>
				</div>
				
				<p class="btn_area">
					<button type="button" class="cancel-btn btn" onclick="location.href='mypage_main.jsp'">취소</button>
					<button type="submit" class="ok-btn btn" id="join_btn">확인</button>
				</p>			
				
				</form>
			</div>
			
			
		</div>	
		
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>

</body>
</html>