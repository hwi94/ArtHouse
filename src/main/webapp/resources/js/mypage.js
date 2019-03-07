/* 마이페이지 자바스크립트 파일 */

//입력체크
$(function() {
	//아이디 입력 문자 체크 : 영문, 숫자만
	$("#input_id").on("keyup", function() {
		var reg = /[^(a-zA-Z0-9)]/g;
		var v = $(this).val();
		
		if (reg.test(v)) {
			$(this).val(v.replace(reg, ''));
			$(this).focus();
		}
	});	
	
	//비밀번호 입력 문자 체크 : 숫자+영문자+특수문자 조합
	$("#input_pw").on("change", function() {
		var reg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{5,16}$/;
		
		if (!reg.test($("#input_pw").val())) {
			alert("영문,숫자,특수문자 조합으로 5자리 이상 입력해주세요.");
			$(this).val('').focus();
		}
	});
	
	//비밀번호 확인 체크 : 동일한지 확인 후 출력	
	$("#input_pw2").on("change", function() {
		var pw = $("#input_pw").val();
		var pw2 = $("#input_pw2").val();
		
		if (pw != pw2) {
			$("#pwCheck").text("비밀번호가 일치하지 않습니다.").css("color", "red");
			$(this).val('').focus();
		} else {
			$("#pwCheck").text("확인되었습니다.").css("color", "green");
		}
	});
	
	//숫자만 입력 가능
	$(".numOnly").on("keyup", function() {
		var reg = /[^0-9]/g;
		var v = $(this).val();
		
		if (reg.test(v)) {
			$(this).val(v.replace(reg, ''));
			$(this).focus();
		}	
	});
	
	//이메일 주소 폼 확인
	$("#input_email").on("change", function() {
		var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		if (!reg.test($("#input_email").val())) {
			$("#emailCheck").text("이메일 주소를 확인해주세요.").css("color", "red");
			$(this).val('').focus();
		} else {
			$("#emailCheck").text('');
		}
	});
	
	/* 회원가입 등록하기 */
	$("#join_btn").on("click", function() {		
		if ($("#input_name").val() == "") {
			alert("이름을 입력해주세요.");
			$("#input_name").focus();
			return false;
		}
		
		if ($("#birthYear").val() == "") {
			alert("생년월일을 입력해주세요.");
			$("#birthYear").focus();
			return false;
		}
		
		if ($("#birthMonth").val() == "") {
			alert("생년월일을 입력해주세요.");
			$("#birthMonth").focus();
			return false;
		}
		
		if ($("#birthDate").val() == "") {
			alert("생년월일을 입력해주세요.");
			$("#birthDate").focus();
			return false;
		}
		
		if ($("#tel1").val() == "") {
			alert("휴대폰 번호를 입력해주세요.");
			$("#tel1").focus();
			return false;
		}
		
		if ($("#tel2").val() == "") {
			alert("휴대폰 번호를 입력해주세요.");
			$("#tel2").focus();
			return false;
		}
		
		if ($("#tel3").val() == "") {
			alert("휴대폰 번호를 입력해주세요.");
			$("#tel3").focus();
			return false;
		}
		
		if ($("#input_email").val() == "") {
			alert("이메일 주소를 입력해주세요.");
			$("#input_email").focus();
			return false;			
		}
		
		$("#birth").val($("#birthYear").val() + $("#birthMonth").val() + $("#birthDate").val());
		$("#tel").val($("#tel1").val() + $("#tel2").val() + $("#tel3").val());
		
		alert("수정이 완료되었습니다.");
	});
	
	/* 회원탈퇴 */
	$("#user-del").on("click", function() {
		var con = confirm("정말로 탈퇴하시겠습니까?");
		
		if (con) {
			alert("탈퇴 처리가 완료되었습니다.");
			$("form").attr("action", "delete.do").submit();
		}
	});
});