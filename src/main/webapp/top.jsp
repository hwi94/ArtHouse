<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>상단메뉴</title>
	
	<!-- 웹폰트 -->
	<link href="http://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
	
	<!-- css파일 -->
	<link href="/artHouse/resources/css/arthouse.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<!-- 상단메뉴 : header -->
	<header>
		<div class="header-wrap">			
			<!-- 로고 -->
			<div class="top_logo">
				<a title="ArtHouse 메인으로 가기" href="/artHouse/main.jsp">
					<img alt="ARTHOUSE" src="/artHouse/resources/img/logo01.gif" height="100px">
				</a>
			</div>
			
		<%	
			String menu1 = null;
			String menu1_add = null;
			
			String menu2 = null;
			String menu2_add = null;
			
			//로그인 상태가 아닐때
			if (session.getAttribute("user") == null) {
				menu1 = "로그인";
				menu1_add = "/artHouse/users/login.jsp";
				menu2 = "회원가입";
				menu2_add = "/artHouse/users/join_terms.jsp";
				
			//로그인 상태일때	
			} else {
				menu1 = "로그아웃";
				menu1_add = "/artHouse/users/logout.do";
				menu2 = "마이페이지	";
				menu2_add = "/artHouse/users/mypage_main.jsp";
			}
		%>
			
			<!-- 사용자 메뉴 -->
			<div class="top_members">			
				<ul>
					<li>
						<a title="<%= menu1 %>" class="member_menu" href="<%= menu1_add %>"><span><%= menu1 %></span></a>
					</li>
					<li>
						<a title="<%= menu2 %>" class="member_menu" href="<%= menu2_add %>"><span><%= menu2 %></span></a>
					</li>
				</ul>
			</div>		
				
			<!-- 메인메뉴 -->
			<div class="header-menu">		
				<ul>
					<li>
						<a title="영화정보" class="main_menu" href="selectAllMovie.do"><span>영화</span></a>
					</li>
					<li>
						<a title="예매하기" class="main_menu" href="moviePage"><span>예매</span></a>
					</li>
					<li>
						<a title="스토어" class="main_menu"><span>스토어</span></a>
					</li>
					<li>
						<a title="공지사항" class="main_menu" href="serviceCenter/clientSound.do"><span>공지</span></a>
					</li>
				</ul>	
			</div>
		</div>
	</header>
</body>
</html>