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
				<a title="ArtHouse 메인으로 가기" href="/artHouse/admin_main.jsp">
					<img alt="ARTHOUSE" src="/artHouse/resources/img/logo01.gif" height="100px">
				</a>
			</div>
			
			<!-- 사용자 메뉴 -->
			<div class="top_members">			
				<ul>
					<li>
						<a title="로그아웃" class="member_menu" href="/artHouse/users/logout.do"><span>로그아웃</span></a>
					</li>
					<li>
						<a title="회원관리" class="member_menu" href="/artHouse/users/user_manager.jsp"><span>회원관리</span></a>
					</li>
				</ul>
			</div>		
				
			<!-- 메인메뉴 -->
			<div class="header-menu">		
				<ul>
					<li>
						<a title="영화관리" class="main_menu"><span>영화관리</span></a>
					</li>
					<li>
						<a title="예매관리" class="main_menu"><span>예매관리</span></a>
					</li>
					<li>
						<a title="스토어관리" class="main_menu" href="/artHouse/adminFood"><span>스토어관리</span></a>
					</li>
					<li>
						<a title="공지관리" class="main_menu"><span>공지관리</span></a>
					</li>
				</ul>	
			</div>
		</div>
	</header>
</body>
</html>