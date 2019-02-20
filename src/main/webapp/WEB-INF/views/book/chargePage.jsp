<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
예약정보<br>
영화 : ${resvDTO1.movie}<br>
예약시간 : ${resvDTO1.playtime }<br>
예약된 좌석 : ${param.click}<br>
가격 : ${param.money }<br>

</body>
</html>