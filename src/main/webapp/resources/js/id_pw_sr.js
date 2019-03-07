/* 아이디, 비밀번호 찾기 */

$(function() {
	$("#search_btn").on("click", function() {
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
		
		$("#birth").val($("#birthYear").val() + $("#birthMonth").val() + $("#birthDate").val());
		$("#tel").val($("#tel1").val() + $("#tel2").val() + $("#tel3").val());		
	});
});