<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table border="1">
	<tr height="40">
		<td width="700">평점 ${reply.grade}</td>
	</tr>
	<tr height="40">
		<td>${reply.content}</td>
	</tr>
	<tr height="40">
		<td>${reply.day} / ${reply.writer}</td>
	</tr>
</table>
