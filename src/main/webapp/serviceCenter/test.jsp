<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			
			
			
			/* 페이지이동 */
			$(document).on("click","#k_pageNum",function(){
				alert("아아아아");
				var id = $(this).attr("id");
				alert($(this).text());
				var pageNum = $(this).text();
				alert(pageNum+"번을 누르셨군요");
				$.ajax({
					url: "selectNoticeList2.do?pageNum="+pageNum,
					type : "POST",
					success : function(result){
						$("h3").html(result);
					}
				});
			});	
			
			
			
			/* 공지사항버튼을눌렀을때.. */
			$("#noticeCheck").click(function() {
				alert("공지사항확인버튼을클릭하셨습니다.");
				$.ajax({
					url: "selectNoticeList2.do",
					type : "post",
					success : function (result) {
						$("h3").html(result);
					}
				});
			});
			
			
			
			
			
			
			
			$("#k_clientSound").click(function() {
				alert("출발");
				location.href="clientSound.do";
			});
		
		
		});//callback
		</script>

</head>
<body>
	<a id="noticeCheck" href="#">공지사항확인</a>
	<a href="selectNoticeList2.do">토탈갯수확인</a>
	<input id="k_clientSound" type="button" value="고객센터">
	<h3></h3>
</body>
</html>