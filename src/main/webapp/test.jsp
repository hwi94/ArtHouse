<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="signUp.do">
			<table>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text"name="id">
					</td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td>
						<input type="password"name="pw">
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>
						<input type="text"name="name">
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>
						<input type="text"name="tel">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="등록">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>