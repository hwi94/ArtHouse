<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스 : 로그인</title>
	
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- css -->
	<link rel="stylesheet" href="../resources/css/arthouse.users.css">
	
	<!-- 자바스크립트 -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="https://apis.google.com/js/api:client.js"></script>

	<script type="text/javascript">
	//아이디 중복확인
	$(function() {
		$("#login-btn").on("click", function() {
			var id = $("#input_id").val();
			var pw = $("#input_pw").val();
			
			$.ajax({
				url: "login.do",
				type: "post",
				data: {
					id: id,
					pw: pw
					},
				success: function(result) {
					if (id == "") {
						$("#error").text("아이디를 입력해주세요.");	
						
					} else if (pw == "") {
						$("#error").text("비밀번호를 입력해주세요.");
						
					} else if (result == 0) {
						$("#error").text("아이디 또는 비밀번호를 다시 확인해주세요.");
						
					} else if (result == 1) {
						location.href = '../main.jsp';
					}
				}
			});
		});
	});
	</script>
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
					<span>로그인</span>
				</a>
			</div>
		</div>
		
		<!-- 로그인화면 -->
		<div class="main-context center-context">			
			<h6>아이디와 비밀번호를 입력하신 후, 로그인 버튼을 클릭해 주세요.</h6>
			
			<div class="login-form">
				<!-- 일반로그인시 아이디, 비밀번호 로그인 -->		
				<input type="text" name="id" id="input_id" placeholder="아이디" maxlength="12"><br>
				<input type="password" name="pw" id="input_pw" placeholder="비밀번호" maxlength="16"><br>
				<div id="error"></div>
				<button type="button" id="login-btn" class="ok-btn btn">로그인</button>
				
				<!-- 소셜로그인시 값 저장 후 넘기기 -->
				<form id="soc_login" name="soc_login" method="post">
					<input type="hidden" name="get_id" id="get_id">
					<input type="hidden" name="get_pw" id="get_pw">
					<input type="hidden" name="get_name" id="get_name">
				</form>
				
				<!-- 아이디 비밀번호 찾기 -->
				<p>
					<a href="#">아이디 찾기</a>
					|
					<a href="#">비밀번호 찾기</a>
				</p>
				
				<!-- 네이버 아이디로 로그인 버튼 노출 영역 -->
				<div id="naver_id_login"></div>
				
				<script type="text/javascript">
					var clientId = "lYgoZDtP3NJl9CmzLsmX";
					var callbackUrl = "http://localhost:8888/artHouse/users/naver_callback.jsp";
					var naver_id_login = new naver_id_login(clientId, callbackUrl);
					var state = naver_id_login.getUniqState();
					naver_id_login.setButton("green", 3, 45);
					naver_id_login.setDomain("localhost:8000/BBS/main.jsp");
					naver_id_login.setState(state);
					naver_id_login.setPopup();
					naver_id_login.init_naver_id_login();				
				</script>
				<!-- //네이버 아이디로 로그인 버튼 노출 영역 끝 -->
				
				<!-- 카카오 아이디로 로그인 버튼 노출 영역 -->
				<div id="kakao-login-btn">
					<a id="custom-login-btn" href="javascript:loginWithKakao()">
						<img src="/artHouse/resources/img/btn/kakao_account_login_btn.png" width="208"/>
					</a>
				</div>
				
				<script type='text/javascript'>
					//<![CDATA[
					// 사용할 앱의 JavaScript 키를 설정해 주세요.
					Kakao.init('d93a6f4bd118ccfae129f45e6353949c');
					function loginWithKakao() {
						// 로그인 창을 띄웁니다.
						Kakao.Auth.login({
							success: function(authObj) {
								// 로그인 성공시, API를 호출합니다.
								Kakao.API.request({
									url: '/v1/user/me',
									success: function(res) {									
										var id = res.kaccount_email;		//유저의 이메일
										var pw = "kakao_api_login_pw";
										var name = res.properties.nickname;	//유저가 등록한 별명
										
										$.post("idCheck.do", { "id": id },
												function (result) {
													if (result == 1) {
														//로그인 성공시 로그인 처리를 해 준 후 URL로 이동한다.
														document.getElementById("get_id").value = id;
														
														document.soc_login.action = "login_social.do";
														document.soc_login.submit();
														
													} else if (result == 0) {
														alert("가입되지 않은 회원정보입니다. 회원가입 화면으로 이동합니다.");
														
														//회원의 정보(토큰,아이디,이름)은 쿠키나 파라미터로 넘겨서 회원가입 페이지에서 회원 정보를 이용해서 회원 등록을 진행한다.
														document.getElementById("get_id").value = id;
														document.getElementById("get_pw").value = pw;
														document.getElementById("get_name").value = name;
														
														document.soc_login.action = "join_terms.jsp";
														document.soc_login.submit();
													}
												});
									
									},
									fail: function(error) {
										alert(JSON.stringify(error));
									}
								});
							},
							fail: function(err) {
								alert(JSON.stringify(err));
							}
						});
					};
  					//]]>
				</script>
				<!-- //카카오 아이디로 로그인 버튼 노출 영역 -->
				
				<!-- 구글 아이디로 로그인 버튼 노출 영역 -->
				<div id="google-login-btn">
					<span class="icon">
						<img src="/artHouse/resources/img/btn/g-logo.png" width="35px">
					</span>
					<span class="buttonText">구글 아이디로 로그인</span>
				</div>
				
				<script type="text/javascript">
					var googleUser = {};
					var startApp = function() {
						gapi.load('auth2', function(){
							// Retrieve the singleton for the GoogleAuth library and set up the client.
							auth2 = gapi.auth2.init({
								client_id: '314222907719-a139ibftmi1vgbm8r8t9m8jlh4q4a50d.apps.googleusercontent.com',
								cookiepolicy: 'single_host_origin',
								// Request scopes in addition to 'profile' and 'email'
								//scope: 'additional_scope'
							});
							attachSignin(document.getElementById('google-login-btn'));
						});
						
					};

					function attachSignin(element) {
						auth2.attachClickHandler(element, {},
						function(googleUser) {			
							var profile = googleUser.getBasicProfile();
							var id = profile.getEmail();

							//googleUser은 사용자 정보가 담겨진 객체
							//사용자 정보를 조회해서 가입이 되어 있으면 로그인, 가입이 되어 있지 않으면 회원가입 페이지로 이동한다
							$.post("idCheck.do", { "id": id },
							function (result) {
								if (result == 1) {
									//로그인 성공시 로그인 처리를 해 준 후 URL로 이동한다.
									document.getElementById("get_id").value = id;
									
									document.soc_login.action = "login_social.do";
									document.soc_login.submit();
									
								} else if (result == 0) {
									alert("가입되지 않은 회원정보입니다. 회원가입 화면으로 이동합니다.");
									
									//회원의 정보(토큰,아이디,이름)은 쿠키나 파라미터로 넘겨서 회원가입 페이지에서 회원 정보를 이용해서 회원 등록을 진행한다.
									document.getElementById("get_id").value = profile.getEmail();
									document.getElementById("get_pw").value = "google_api_login_pw";
									document.getElementById("get_name").value = profile.getName();
									
									document.soc_login.action = "join_terms.jsp";
									document.soc_login.submit();
								}
							});

						}, function(error) {
							alert(JSON.stringify(error, undefined, 2));
						});
					}
				</script>
				
				<script>startApp();</script>
				<!-- //구글 아이디로 로그인 버튼 노출 영역 -->
			
			</div>
		</div>
		
		<jsp:include page="/bottom.jsp"></jsp:include>
	</div>
</body>
</html>