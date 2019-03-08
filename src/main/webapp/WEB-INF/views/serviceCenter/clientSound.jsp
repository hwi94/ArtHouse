<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


				<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/> <!-- 달력 스타일시트 -->
				<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
				<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>




	<link rel="stylesheet" href="/artHouse/resources/css/jquery.bxslider.css">
	<link rel="stylesheet" href="/artHouse/resources/css/arthouse.css">
	
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
				$(this).attr("style","color:red");
				$(this).css('color','red');
				alert("pageNum값은 ? :"+pageNum);
				$.ajax({
					url:"selectNoticeList.do?pageNum="+pageNum,
					type:"post",
					success:function(result){
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			/* 공지사항 - 내용 (제목클릭시) */
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
			
			/* 공지사항 - 내용확인후 목록버튼눌렀을때, */
			$(document).on("click","#k_noticeList",function(){
				alert("목록?");
				$.ajax({
					url :"selectNoticeList.do",
					type: "POST",
					success : function(result) { 	
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			/* 공지사항 - 게시물삭제 */
			$(document).on("click","#k_noticeDelete",function(){
				var result = confirm("정말로 게시글을 삭제하시겠습니까?");
				var title = $("#k_noticeTitle").text();
				if(result == true){
					alert("삭제가 완료되었습니다");
					$.ajax({
						url :"selectNoticeDelete.do?title="+title,
						type: "POST",
						success : function(result) { 	
							$("#k_changeTheMenu").html(result);
						}
					});
				}else{
					return false;
				}
			});
			
			/* 1:1문의 - 리스트페이지전환*/
			$(document).on("click","#k_QNAListPageNum",function(){
				alert("문의내역페이지번호를누르셨군요");
				var QNAPageNum = $(this).text();
				$(this).css("color","red");
				alert("QNAPageNum값은 ? :"+QNAPageNum);
				$.ajax({
					url:"selectQNAList.do?QNAPageNum="+QNAPageNum,
					type:"post",
					success:function(result){
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			/* 문의내역 - 제목으로조회 */
			$(document).on("click","#k_QNATitle",function(){
				alert("제목눌렀습니까?");
				var title = $(this).text();
				alert(title);
				$.ajax({
					url :"selectQNAContents.do?title="+title,
					type: "POST",
					success : function(result) { 	
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			/* 1:1답변하기 */
			$(document).on("click","#k_answer",function(){
				alert("답변하기클릭완료");
				var title = $("#k_answerOfTitle").text();
				$.ajax({
					url:"answerPage.do?title="+title,
					type:"POST",
					success:function(result){
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			/* 1:1답변완료 - 답변완료되면 게시글 삭제, */
			$(document).on("click","#k_answerCompleteButton",function(){
				alert("답변완료버튼 클릭!!");
				/* alert($("#k_answerAlready").serialize()); */
				$("#k_answerAlready").submit(function(){
					alert("답변이 완료되었습니다.");
					var data = $(this).serialize();
					$.ajax({
						url:"answerComplete.do",
						type:"post",
						data : data,
						success:function(result){
							$("#k_changeTheMenu").html(result);
						}
					});
					
					
				});
			});
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			/* 공지사항 - 상단메뉴(리스트) */
			$(document).on("click","#k_noticeMenu",function(){
				alert("공지사항클릭");
				$("#k_noticeImg").attr("src","../resources/img/notice/156.png");
				$("#k_questionImg").attr("src","../resources/img/notice/147.png");
				$("#k_questionListImg").attr("src","../resources/img/notice/159.png");
				$("#k_noticeUploadImg").attr("src","../resources/img/notice/165.png");
				$.ajax({
					url :"selectNoticeList.do",
					type: "POST",
					success : function(result) { 	//컨트롤러접선후result를가져와서 돔트리에찍어준다.
						$("#k_changeTheMenu").html(result);
					}
				});
			});
			
			/*공지사항 - 등록(관리자로그인)*/
			$(document).on("click","#k_noticeUploadMenu",function(){
				alert("공지사항등록클릭");
				$("#k_noticeUploadImg").attr("src","../resources/img/notice/166.png");
				$("#k_noticeImg").attr("src","../resources/img/notice/148.png");
				$("#k_questionImg").attr("src","../resources/img/notice/147.png");
				$("#k_questionListImg").attr("src","../resources/img/notice/159.png");
				
				$.ajax({
					url :"noticeUploadPage.do",
					type: "POST",
					success : function(result) { 	//컨트롤러접선후result를가져와서 돔트리에찍어준다.
						$("#k_changeTheMenu").html(result);
					
					}
				});
			});
			
			
				
			
			
			
			/* 1:1문의 - 상단메뉴(작성)*/
			$(document).on("click","#k_questionMenu",function(){
				alert("1:1문의클릭");
				$("#k_questionImg").attr("src","../resources/img/notice/157.png");
				$("#k_noticeImg").attr("src","../resources/img/notice/148.png");
				$("#k_questionListImg").attr("src","../resources/img/notice/159.png");
				$("#k_noticeUploadImg").attr("src","../resources/img/notice/165.png");
				
				$.ajax({
					url:"uploadQuestion.do",
					type:"POST",
					success : function(result){	
						$("#k_changeTheMenu").html(result);
					}
				});
				console.log("셀렉트박스를생성해볼게요..");				
			});
			
			/* 1:1문의 - 관리자로그인시 내역조회가능 */
			$(document).on("click","#k_questionListMenu",function(){
				alert("관리자이십니까?? 문의내역클릭 !!");
				$("#k_questionListImg").attr("src","../resources/img/notice/160.png");
				$("#k_questionImg").attr("src","../resources/img/notice/147.png");
				$("#k_noticeImg").attr("src","../resources/img/notice/148.png");
				$("#k_noticeUploadImg").attr("src","../resources/img/notice/165.png");
				$.ajax({
					url:"selectQNAList.do",
					type:"POST",
					success:function(result){
						$("#k_changeTheMenu").html(result);
					}
				});
				
			});
			
			
				
			
			
			
			
			
			
			
			
		}); //callback
	
	
	</script>
	
	
	
</head>
<body>
	<div class="page-body">
			<jsp:include page="../../../top.jsp"></jsp:include>
			<div style="height:50px; border-bottom: 2px solid #503396; background-color: #EAEAEA; "><div style="padding-left: 400px;padding-top: 15px;font-weight: bold;">고객센터</div></div>
			<center>
			<div style="width: 50%;height: 125px; padding-top: 25px;padding-bottom: 25px;">
				<ul style="margin: auto">
					<li style="float: left;">
						<a id="k_noticeMenu">
							<img id="k_noticeImg" alt="공지사항입니다" src="../resources/img/notice/156.png">
						</a>
					</li>
					<li style="float: left;">
						<a id="k_questionMenu">
							<img id="k_questionImg" alt="1:1문의사항입니다." src="../resources/img/notice/147.png">
						</a>
					</li>
					<li style="float: left;">
						<a id="k_questionListMenu">
							<img id="k_questionListImg" alt="1:1문의내역입니다." src="../resources/img/notice/159.png">
						</a>
					</li>
					<li style="float: left;">
						<a id="k_noticeUploadMenu">
							<img id="k_noticeUploadImg" alt="공지사항등록입니다." src="../resources/img/notice/165.png">
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