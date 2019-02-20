<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:forEach var="vo" items="${list}">

	<c:set var="value" value="${vo}" />
	<!-- A,B,C -->
	<c:set var="row" value="${fn:substring(value, 0,1)}" />
	<!-- 1, 2, 3 -->
	<c:set var="col" value="${fn:substring(value, 1,2)}" />
	<!-- TakenSeats, substring3 == T -->
	
	<c:if test="${col==0}">
		<br>
	</c:if>
	
	 <c:if test="${value=='S3'}">
	<span  id="numbering">&nbsp;&nbsp;</span>
	</c:if> 
	
	<c:if test="${row=='A'&&col=='0'}">
	<span  id="numbering">A&nbsp;&nbsp;</span>
	</c:if>
	<c:if test="${row=='B'&&col=='0'}">
	<span  id="numbering">B&nbsp;&nbsp;</span>
	</c:if><c:if test="${row=='C'&&col=='0'}">
	<span  id="numbering">C&nbsp;&nbsp;</span>
	</c:if><c:if test="${row=='D'&&col=='0'}">
	<span  id="numbering">D&nbsp;&nbsp;</span>
	</c:if>
	<c:if test="${row=='E'&&col=='0'}">
	<span  id="numbering">E&nbsp;&nbsp;</span>
	</c:if>
	<c:if test="${row=='F'&&col=='0'}">
	<span  id="numbering">F&nbsp;&nbsp;</span>
	</c:if>
	<c:if test="${row=='G'&&col=='0'}">
	<span id="numbering">G&nbsp;&nbsp;</span>
	</c:if>
	<c:if test="${row=='H'&&col=='0'}">
	<span  id="numbering">H&nbsp;&nbsp;</span>
	</c:if>
	<c:if test="${row=='I'&&col=='0'}">
	<span id="numbering">I&nbsp;&nbsp;</span>
	</c:if>
	
	<c:if test="${col!='0'}">
	<c:if test="${row=='A'||row=='B'||row=='C'}">
		<span class="seats" id="front">${vo}</span>
	</c:if>
	<c:if test="${row=='D'||row=='E'||row=='F'}">
		<span class="seats" id="middle">${vo}</span>
	</c:if>
	<c:if test="${row=='G'||row=='H'||row=='I'}">
		<span class="seats" id="back">${vo}</span>
	</c:if>
	</c:if>
	
	<c:if test="${row=='T'}">
	<span id="unavailable">X</span>
	</c:if>
</c:forEach>
