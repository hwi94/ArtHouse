<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.pageNumber{
	color: black;
}
a:HOVER {
	color: #ff522b;
}
</style>
<!-- 제이쿼리 작성 시 이곳에... -->
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript"></script>
</head>
<body>			
	<div id="listReply">			
	<c:choose>
		<c:when test="${listMovieReply eq ''}">등록된 리뷰가 없습니다.</c:when>
		<c:otherwise>
			<c:forEach var="reply" items="${listMovieReply}">
				<div align="center">
					<table style="border: none;">
						<tr height="30">
							<td width="800">
								<strong>
								평점 
								<c:choose>
									<c:when test="${reply.grade eq 5}">${reply.grade} ★★★★★</c:when>
									<c:when test="${reply.grade eq 4}">${reply.grade} ★★★★☆</c:when>
									<c:when test="${reply.grade eq 3}">${reply.grade} ★★★☆☆</c:when>
									<c:when test="${reply.grade eq 2}">${reply.grade} ★★☆☆☆</c:when>
									<c:when test="${reply.grade eq 1}">${reply.grade} ★☆☆☆☆</c:when>
								</c:choose>
								</strong>
							</td>
							<td rowspan="2" width="100" align="center">
								${reply.writer}<br>
								${reply.day}
							</td>
						</tr>
						<tr height="30">
							<td>${reply.content}</td>
						</tr>
					</table>
				</div>
				<hr width="90%">
			</c:forEach>
		</c:otherwise>
	</c:choose>
	</div>
		
	<!-- 리뷰 페이징 네비게이션 -->
	<div>
		<c:if test="${curPage > BLOCK}">
			<a href="javascript:listReply(${startPg - 1})" class="pageNumber">이전</a>
		</c:if>
		<c:forEach var="i" begin="${startPg}" end="${endPg}" step="1">
			<c:choose>
				<c:when test="${i == curPage}">
					<b><font color=#ff522b>&nbsp;&nbsp;${i}&nbsp;&nbsp;</font></b>
				</c:when>
				<c:otherwise>
					&nbsp;&nbsp;<a href="javascript:listReply(${i})" class="pageNumber">${i}</a>&nbsp;&nbsp;
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${endPg < allPg}">
			<a href="javascript:listReply(${endPg + 1})" class="pageNumber">다음</a>
		</c:if>
	</div>
</body>
</html>