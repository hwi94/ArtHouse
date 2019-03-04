<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/artHouse/resources/css/jquery.bxslider.css">
	<link rel="stylesheet" href="../../../resources/css/arthouse.main.css">
	
	<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			
			/* 공지사항 - 리스트 (돔트리완료후) */
			$.ajax({
				url :"selectNoticeList.do",
				type: "POST",
				success : function(result) { 	//컨트롤러접선후result를가져와서 돔트리에찍어준다.
					$("#k_changeTheMenu").append(result);
				}
			});
			
			/* 공지사항 - 페이지전환  */
			$(document).on("click","#k_pageNum",function(){
				var pageNum = $(this).text();
				alert("pageNum값은 ? :"+pageNum);
				$.ajax({
					url:"selectNoticeList.do?pageNum="+pageNum,
					type:"post",
					success:function(result){
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			/* 공지사항 - 내용 ( 제목클릭시 ) */
			$(document).on("click","#k_title",function(){
				var searchContents = $(this).text();
				alert(searchContents);
				alert("내용을가져오는페이지로 넘어옵니다.");
				$.ajax({
					url:"selectNoticeContents.do?searchContents="+searchContents,
					type:"post",
					success:function(result){
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			
			
			
			
			
			
			
			
			
			
			
			/* 상단각메뉴클릭 */
			$(document).on("click","#k_noticeMenu",function(){
				alert("공지사항클릭");
				$.ajax({
					url :"selectNoticeList.do",
					type: "POST",
					success : function(result) { 	//컨트롤러접선후result를가져와서 돔트리에찍어준다.
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			/* 1:1문의 작성메뉴 불러오기*/
			$(document).on("click","#k_questionMenu",function(){
				alert("1:1문의클릭");
				$.ajax({
					url:"uploadQuestion.do",
					type:"POST",
					success : function(result){
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			$(document).on("click","#k_oftenMenu",function(){
				alert("자주묻는질문클릭");
			});
			
			
			
			
			
			
			
			
			
		}); //callback
	
	
	</script>
	
	
	
</head>
<body>
	<div class="page-body">
			<jsp:include page="../../../top.jsp"></jsp:include>
				<center><h3 style="padding-top: 10px;padding-bottom: 10px;">고객센터</h3></center>
			<hr>
			<center>
			<div style="width: 100%;height: 125px; padding-top: 25px;padding-bottom: 25px; margin-right: auto;margin-left: auto;">
				<ul style="margin: auto">
					<li style="float: left;">
						<a id="k_noticeMenu">
							<img alt="공지사항입니다" src="../resources/img/notice/148.png">
						</a>
					</li>
					<li style="float: left;">
						<a id="k_questionMenu">
							<img alt="1:1문의사항입니다." src="../resources/img/notice/147.png">
						</a>
					</li>
					<li style="float: left;">
						<a id="k_oftenMenu">
							<img alt="자주묻는질문입니다." src="../resources/img/notice/150.png">
						</a>
					</li>
				</ul>
			</div>
			</center>
			<div id="k_changeTheMenu">
			
			</div>
		<jsp:include page="../../../bottom.jsp"></jsp:include>
	</div>
</body>
</html>