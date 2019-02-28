<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- 달력 스타일시트 -->
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script type="text/javascript">
	$(function() {

		/* 개봉일 */
		$("#k_releaseDate").datepicker({dateFormat: 'yy-mm-dd'});

		/* 포스터 미리보기 */
		/* 포스터 버튼 눌렀을 때 핸들이미지파일셀렉트라는 메소드실행 */
		$("#k_inputPoster").change(function(e) {
			console.log("펑션들어왔다");

			/* 선택한파일을 files에넣는다. */
			var files = e.target.files;
			console.log("파일이름:" + files);
			/* files를 배열에 넣는다 */
			var filesArr = Array.prototype.slice.call(files);
			console.log(filesArr);
			/* 배열에 들어있는거하나씩꺼내기 */
			filesArr.forEach(function(f) {
				/* 이미지타입이아닐때, */
				if (!f.type.match("image.*")) {
					alert("확장자는 이미지 확장자만 가능합니다.");
					console.log("not image");
					return;
				} // match if 
				console.log("yes image");
				/* f를 sel_file에 대입. */
				sel_file = f;
				/* 파일리더는 무엇인가? */
				var reader = new FileReader();
				reader.onload = function(e) {
					/* 속성 : src 지정 */
					$("#k_poster").attr("src", e.target.result);
				} // reader Function 
				reader.readAsDataURL(f);
			}); // forEach
		}); //change

		/* 영화등록 */
		$("#k_upload").click(function() {
			/* 공백체크 */
			if ($("#k_poster").attr("src") == null) {
				alert("포스터를 등록해주세요");
				return;
			} else if ($("#k_code").val() == "") {
				alert("영화코드를 입력해주세요.");
				return;
			} else if ($("#k_title").val() == "") {
				alert("제목을 입력해주세요");
				return;
			} else if ($("#k_genre").val() == "") {
				alert("장르를 입력해주세요");
				return;
			} else if ($("#k_releaseDate").val() == "") {
				alert("개봉일을 입력해주세요");
				return;
			} else if ($("#k_minute").val() == "") {
				alert("상영시간을 입력해주세요");
				return;
			} else if ($("#k_country").val() == "") {
				alert("개봉국가를 입력해주세요");
				return;
			} else if ($("#k_ageRestriction").val() == "") {
				alert("연령제한을 입력해주세요");
				return;
			} else if ($("#k_director").val() == "") {
				alert("감독을 입력해주세요");
				return;
			} else if ($("#k_summary").val() == "") {
				alert("줄거리를 입력해주세요");
				return;
			} else { //모든조건 충족.
				var infoAll = $("#k_form").serialize(); // 폼안의정보 담기. (포스터는 안담기는데 어떤속성으로 담아야하는지..)
				console.log(infoAll);
				$("#k_form").submit();
			}

		});//upload

	});// callback
</script>

<style type="text/css">
.img_wrap {
	width: 252px;
	height: 364px;
}

</style>
</head>
<body>
	<div class="page-body">
		<!-- 상단메뉴 -->
		<jsp:include page="../top.jsp"></jsp:include>

		<!-- 중간내용 -->
		<div class="main-context">
			<!-- 영화등록 -->
			<h2 style="text-align: center">관리자 - 영화 등록</h2>
			<hr>
			<form id="k_form" action="insertMovie.do" method="POST">
				<div align="center">
					<table border="1">
						<tr>
							<td rowspan="11" width="200">
								<div class="img_wrap">
									<!-- 영화포스터가들어갈 자리 -->
									<img id="k_poster" name="poster" style="width: 252px; height: 364px;">
								</div>
								<div>
									<input type="file" id="k_inputPoster" style="width: 76px;">
								</div>
							</td>
						</tr>
						<tr>
							<th>코드</th>
							<td><input type="text" id='k_code' name="code"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" id='k_title' name="title"></td>
						</tr>
						<tr>
							<th>장르</th>
							<td>
								<select style="width: 160px" name="genre">
									<option value="horror">공포</option>
									<option value="comedy">코미디</option>
									<option value="romantic">멜로</option>
									<option value="action">액션</option>
									<option value="familly">가족</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>개봉일</th>
							<td><input type="text" id='k_releaseDate' name="playdate"></td>
						</tr>
						<tr>
							<th>상영시간</th>
							<td><input type="text" id='k_minute' name="runtime"></td>
						</tr>
						<tr>
							<th>감독</th>
							<td><input type="text" id='k_director' name="director"></td>
						</tr>
						<tr>
							<th>배우</th>
							<td><input type="text" id='k_starring' name="actors"></td>
						</tr>
						<tr>
							<th>연령제한</th>
							<td><input type="text" id='k_ageRestriction' name="agerequire"></td>
						</tr>
						<tr>
							<th>줄거리</th>
							<td><textarea rows="5" cols="22" id="k_summary"	name='summary'></textarea></td>
						</tr>
					</table>
				</div>
				<br>
				<div align="center">
					<input type="button" value="등록" id="k_upload">
					<input type="reset" value="다시 입력">
				</div>
			</form>

		</div>

		<!-- 하단내용 -->
		<jsp:include page="../bottom.jsp"></jsp:include>
	</div>
</body>
</html>