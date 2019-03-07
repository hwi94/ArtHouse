<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 등록</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- 달력 스타일시트 -->
<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(function() {
		/* 개봉일 */
		$("#playdate").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>
</head>
<body>
	<div class="page-body">
		<!-- 상단메뉴 -->
		<jsp:include page="../../../admin_top.jsp"></jsp:include>

		<!-- 중간내용 -->
		<div class="main-context">
			<!-- 영화등록 -->
			<h2 style="text-align: center">관리자 - 영화 정보 수정</h2>
			<hr>
			<form action="updateMovieAction.do" method="post">
			<input type="hidden" name="code" value="${movieDTO.code}">
			<input type="hidden" name="grade" value="${movieDTO.grade}">
			<input type="hidden" name="count" value="${movieDTO.count}">
			<input type="hidden" name="recommend" value="${movieDTO.recommend}">
			<input type="hidden" name="photo" value="${movieDTO.photo}">
				<div align="center">
					<table border="1">
						<!-- <tr>
							<td rowspan="9">
								<div class="img_wrap">
									<img id="poster-thumbnail" style="width: 250px; height: 360px;">
								</div>
								<div>
									<input type="file" id="photo" name="file">
								</div>
							</td>
						</tr> -->
						<tr>
							<th>제목</th>
							<td><input type="text" id="title" name="title" value="${movieDTO.title}"></td>
						</tr>
						<tr>
							<th>장르</th>
							<td><select style="width: 170px" name="ganre">
									<option value="공포">공포</option>
									<option value="코미디">코미디</option>
									<option value="멜로">멜로</option>
									<option value="액션">액션</option>
									<option value="가족">가족</option>
							</select></td>
						</tr>
						<tr>
							<th>개봉일</th>
							<td><input type="text" id="playdate" name="playdate" value="${movieDTO.playdate}"></td>
						</tr>
						<tr>
							<th>상영시간</th>
							<td><input type="text" id='runtime' name="runtime" value="${movieDTO.runtime}"></td>
						</tr>
						<tr>
							<th>감독</th>
							<td><input type="text" id='director' name="director" value="${movieDTO.director}"></td>
						</tr>
						<tr>
							<th>배우</th>
							<td><input type="text" id='actors' name="actors" value="${movieDTO.actors}"></td>
						</tr>
						<tr>
							<th>연령제한</th>
							<td><input type="text" id='agerequire' name="agerequire" value="${movieDTO.agerequire}"></td>
						</tr>
						<tr>
							<th>줄거리</th>
							<td><textarea rows="12" cols="70" id="summary" name="summary">${movieDTO.summary}</textarea></td>
						</tr>
					</table>
				</div>
				<br>
				<div align="center">
					<input type="submit" value="수정">
				</div>
			</form>

		</div>

		<!-- 하단내용 -->
		<jsp:include page="../../../bottom.jsp"></jsp:include>
	</div>
</body>
</html>