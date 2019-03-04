<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr style="border-top-color:  2px solid #503396;">
			<th style="width: 200px;height: 38px;background-color: #f2f2f2;">제목</th>
			<td colspan="3">${noticeDTO.title}</td>
		</tr>
		<tr style="border-top: 1px solid #f2f2f2;border-bottom: 1px solid #f2f2f2;">
			<th style="width: 200px;height: 38px;background-color: #f2f2f2;">영화관</th>
			<td>${noticeDTO.movieTheaters}</td>
			<th style="width: 200px;height: 38px;background-color: #f2f2f2;">등록일</th>
			<td>${noticeDTO.uploadDate}</td>
		</tr>
		<tr>
			<td colspan="4">
				<div style="width: 970px;height:291px;padding:30px 50px 120px 110px;">
					${noticeDTO.contents}
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<input type="button" value="목록">
			</td>
		</tr>
	</table>
</body>
</html>