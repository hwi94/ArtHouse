<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <!-- enctype="multipart/form-data" 파일업로드 필수 옵션 -->
    <!-- application/x-www-form-urlencoded 기본옵션 -->
    <!--  <form action="/upload/uploadForm" method="post" enctype="multipart/form-data"> 
    
        <input type="file" name="file">
        <input type="submit" value="업로드">    
    </form> -->
    
    
    
    	<h1>파일 업로드</h1>
<form action="fileupload", method="post" enctype="multipart/form-data">
    <input type="file", name="uploadfile" placeholder="파일 선택" /><br/>
    <input type="submit" value="업로드">
    
    
    
</body>
</html>