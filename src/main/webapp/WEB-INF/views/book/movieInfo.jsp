<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br><br>
<div align="center"> 
<c:forEach var="dto" items="${list }">
<span id="tName">${dto.tName }</span><br>
</c:forEach>
</div>