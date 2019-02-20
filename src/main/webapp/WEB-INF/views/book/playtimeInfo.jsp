<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="dto" items="${list}">
${dto.movie }/
${dto.tName }/
${dto.playtime}/
${dto.taken },
</c:forEach>