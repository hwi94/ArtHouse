<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 상세 보기</title>
<style>

.movie-info{
	height: 400px;
	margin-top: 10px;
	margin-bottom: 40px;
}
.summary{
	margin-bottom: 40px;
}

#thumb-left {
	width: 28%;
	margin-right: 3%;
	float: left;
}

#thumb-right {
	width: 69%;
	padding: 0px;
	float: right;
}

#img-info {
	width: 100%;
}

.movie-content {
	font-size: 14pt;
}

.review::after {
	clear: both;
}

.review-grade{
	margin-bottom: 10px;
}

.review-input{
	display: inline-block;
	width: 100%;
	margin-bottom: 10px;
}

#review-text{
	width: 100%;
	height: 80px;
}

.review-textarea{
	width: 70%;
	float: left;
}

.review-btn{
	width:29%;
	margin-left: 1%;
	float: right;
}


</style>
<!-- 임시로 넣어둔 스크립트 선언부 -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#form").submit(function(){
			var d = $(this).serialize();
			console.log(d);
			$.ajax({
				url: "insertMovieReply.do",
				type: "post",
				data: d,
				success: function(result){
					$("#li").html(result);					
				}
			});
			return false;
		});
	});
</script>
</head>
<body>
<h1></h1>
	<div class="page-body">
		<jsp:include page="../../../top.jsp"></jsp:include>
		<!-- 상세 페이지로 넘길 데이터 -->
		<div class="main-context">
			<div id="movieDetail">
				<h1>영화 상세</h1>
				<hr>
			</div>
			<div class="container">

				<!-- 영화 정보 -->
				<div class="movie-info">
					<div class="thumb" id="thumb-left">
						<img id="img-info" src="/artHouse/resources/img/movie/${movieDTO.photo}">
					</div>
					<div class="thumb" id="thumb-right">
						<div>
							<h1>${movieDTO.title}</h1>
							<span class="movie-content"><strong>평점 / </strong>${movieDTO.grade}</span>&nbsp;&nbsp;
							<span class="movie-content"><strong>추천수 / </strong>${movieDTO.recommend}</span>
							<hr>
							<span class="movie-content"><strong>장르 / </strong>${movieDTO.ganre}</span><br>
							<span class="movie-content"><strong>감독 / </strong>${movieDTO.director}</span>&nbsp;&nbsp;
							<span class="movie-content"><strong>배우 / </strong>${movieDTO.actors}</span><br>
							<span class="movie-content"><strong>개봉일 / </strong>${movieDTO.playdate}</span><br>
							<span class="movie-content"><strong>상영시간 / </strong>${movieDTO.runtime} 분</span>
							<p>
						</div>
						<div class="hypertext">
							<a href="#">예매</a>
							<a href="#">추천</a>
						</div>
						<hr>
						<div>
							여기에<br>
							무엇을<br>
							넣을까<br>
						</div>
					</div>
				</div><!-- 영화 정보 끝 -->
				
				<!-- 영화 줄거리 -->
				<div class="summary">
				<h2>시놉시스</h2>
				<hr>
					<div align="center">
						${movieDTO.summary}
					</div><!-- 영화 줄거리 끝 -->
				</div>
				
				<!-- 영화 리뷰 -->
				<div class="review">
				<h2>평점 및 영화 리뷰</h2>
				<hr>
					<div class="review-input" align="center">
						<form id="form">
						<input type="hidden" name="b_code" value="${movieDTO.code}">
						<input type="hidden" name="writer" value="aaa111">
						<input type="hidden" name="day" value="2019-02-19">
							<table>
								<tr height="30">
									<td colspan="2">
										평점&nbsp;&nbsp; 
										<select style="width: 50px" name="grade">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
										a_code&nbsp;&nbsp; <input type="text" name="a_code">
									</td>
								</tr>
								<tr>
									<td><textarea rows="4" cols="120" placeholder="댓글을 입력하세요." name="content"></textarea></td>
									<td><button type="submit">입력</button></td>
								</tr>
							</table>
						</form>
					</div><!-- 영화 리뷰 끝 -->
					<hr>
					<div class="reply" align="center">
						<ol class="listreply">
							<li id="li">등록된 댓글이 없습니다.</li>
						</ol>
					</div>
				</div>
				
			</div><!-- container 끝 -->
			
		</div><!-- main-context 끝 -->
		<jsp:include page="../../../bottom.jsp"></jsp:include>
	</div><!-- page-body 끝 -->
</body>
</html>