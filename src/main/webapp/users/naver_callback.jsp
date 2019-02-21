<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>아트하우스 : 네이버 로그인</title>
	
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<!-- 네이버 아이디 가져온 후 DB에서 조회 / 가입되어 있지 않으면 회원가입 -->
	<script type="text/javascript">
		var clientId = "lYgoZDtP3NJl9CmzLsmX";
		var callbackUrl = "http://localhost:8888/artHouse/users/naver_callback.jsp";
		var naver_id_login = new naver_id_login(clientId, callbackUrl);
		
		// 접근 토큰 값 출력
		//alert(naver_id_login.oauthParams.access_token);
		
 		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
 		
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {			
			var id = naver_id_login.getProfileData('email');
			var pw = "naver_api_login_pw";
			var name = naver_id_login.getProfileData('name');
			
			$.ajax({
				url: "idCheck.do",
				type: "post",
				data: {id: id},
				success: function(result) {
					if (result == 1) {
						$(opener.document).find("#get_id").val(id);

						$(opener.document).find("#soc_login").attr("action", "login_social.do");
						opener.soc_login.submit();

						self.close();
						
					} else if (result == 0) {
						alert("가입되지 않은 회원정보입니다. 회원가입 화면으로 이동합니다.");

						$(opener.document).find("#get_id").val(id);
						$(opener.document).find("#get_pw").val(pw);
						$(opener.document).find("#get_name").val(name);
						
						$(opener.document).find("#soc_login").attr("action", "join_terms.jsp");
						opener.soc_login.submit();

						self.close();
					}
				}
			});
		}
	</script>

</body>
</html>