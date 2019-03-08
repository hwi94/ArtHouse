<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 수정페이지</title>
<style type="text/css">
	#p_code,#p_name,#p_category,#p_price,#p_desc,#p_img{
		background-color:  #F0FFF0;
	}
</style>
</head>
<body>
<div class="page-body">
<jsp:include page="../../../admin_top.jsp"></jsp:include>
<h1>상품정보가 수정되었습니다</h1>
<hr>
<table border="1" id="table_css">
    	<tr>
    		<td id="p_code" height="30" width="100">상품코드</td>
    		<td>${param.code }&nbsp;&nbsp;&nbsp;</td>
    	</tr>
        <tr>
            <td id="p_name" height="30">상품명</td>
            <td>${param.name }&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td id="p_category" height="30">카테고리</td>
            <td>${param.category}&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td id="p_price" height="30">가격</td>
            <td>${param.price }&nbsp;&nbsp;&nbsp;</td>
        </tr>
</table>

    <br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<jsp:include page="../../../bottom.jsp"></jsp:include>
	</div>
</body>
</html>