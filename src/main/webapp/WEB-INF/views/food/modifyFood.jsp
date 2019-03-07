<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 상품페이지</title>

	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 
	
<style type="text/css">
	#title_admin{
		color: black;
		
	}
	
	#frame_body{
		position: relative;
		font-family: "NanumGothic";
		font-size: 13px;
		font-weight: normal;
		
	}
	
	#header_admin{
		padding-top: 200px;
	}
	
	#table_css{
		border-collapse: collapse;
		
	}
	
	.hr{
		color: #503396;
	}
	
/* 	#productCode{
		 position: absolute;
		 left: 130px; 
		 top: 273px;
	} */
	
	.td{
		text-align: center;
	}
	#p_code,#p_name,#p_category,#p_price,#p_desc,#p_img{
		background-color:  #F0FFF0;
	}
</style>
<script type="text/javascript">
	$(function() {
		// 상품 등록 유효성검사
	    $("#modify").click(function(){
	        var code = $("#productCode").val();
	        var name = $("#productName").val();
	        var category = $("#productCategory").val();
	        var price = $("#productPrice").val();
	        var desc = $("#productDesc").val();
	        var img = $("#productPhoto").val();

	        if(code == "" ) {
	            alert("상품코드를 입력해야합니다.");
	            productCode.foucs();
	        } else if (name == "") {
	            alert("상품명을 입력해야합니다.");
	            productName.focus();
	        } else if (category == "") {
	            alert("카테고리를 입력해야합니다.");
	            productCategory.focus();
	        } else if (price == "") {
	            alert("상품 가격을 등록해야합니다.");
	            productPrice.focus();
	        } else if (desc == "") {
	            alert("상품 설명을 입력해야합니다.");
	            productDesc.focus();
	        } /* else if (img == "") {
	            alert("상품 이미지를 등록해야합니다.");
	            productPhoto.focus();
	        } */
	        // 상품 정보 전송
	       /*  document.form1.action = "${path}/shop/product/insert.do";
	        document.form1.submit(); */
	        location.href
	        
	    	});
	});
</script>
</head>
<body>


<!-- 해당 페이지 내 프레임바디 설정 -->	
<div id="frame_body">  
	<jsp:include page="../../../top.jsp"></jsp:include>
<div id="header_admin">
	<h1 id="title_admin">상품 수정</h1>
	<hr>
	<br>
	<br>
</div>
		
<form action="modify2.do" method="post" enctype="multipart/form-data">

    <table border="1" id="table_css">
    	<tr>
    		<td id="p_code" height="30" width="100">상품코드</td>
    		<td><input type="text" name="code" id="productCode" width="500" value="${param.code }"></td>
    	</tr>
        <tr>
            <td id="p_name" height="30">상품명</td>
            <td><input type="text" name="name" id="productName" value="${param.name }"></td>
        </tr>
        <tr>
            <td id="p_category" height="30">카테고리</td>
            <td><input type="text" name="category" id="productCategory" value="${param.category }"></td>
        </tr>
        <tr>
            <td id="p_price" height="30">가격</td>
            <td><input type="text" name="price" id="productPrice" value="${param.price }"></td>
        </tr>
       <!--  <tr>
            <td id="p_desc">상품설명</td>
            <td><textarea rows="5" cols="60" name="desc" id="productDesc"></textarea></td>
        </tr> -->
        <tr>
            <td height="300" id="p_img">상품이미지</td>
            <td><input type="file" name="file" id="productPhoto"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="수정">
                <br>
            </td>
        </tr>
    </table>
</form>
    

<br>
<br>
<br>
<br>
<jsp:include page="../../../bottom.jsp"></jsp:include>
</div>
</body>
</html>