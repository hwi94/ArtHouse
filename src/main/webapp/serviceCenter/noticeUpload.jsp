<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/> <!-- 달력 스타일시트 -->
				<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
				<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
				
				<!-- 네이버 스마트 에디터 -->
				<script type="text/javascript" src="../resources/SE2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
				<script type="text/javascript">
					
				
				
				var oEditors = [];
					
				$(function() {
					
					/* 작성일 */ 
					$("#k_uploadDate").datepicker({
						
					}); 

						/* 스마트에디터 */
						nhn.husky.EZCreator.createInIFrame({
						oAppRef: oEditors,
					    elPlaceHolder: "k_contents",		// content id 값 일치.
					    sSkinURI: "../resources/SE2/SmartEditor2Skin.html", //파일 존재 경로
					    htParams : {
					    	bUseToolbar : true,			// 툴바사용여부 
					    	bUseVerticalResizer : true, // 입력창 크기 조절바 사용여부
					    	bUseModeChanger : true,		// 모드 탭
						fOnBeforeUnload : function(){	// 저장후 빠져나올때 경고창, 중괄호로 막아줌으로써 경고창을 띄우지않게함.
						
						}
					},
					
					fOnAppLoad : function(){
						// 기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
						// 로딩이 완료된후 에디터에 삽입되는 텍스트.

						
					},//appLoad
					fCreator : "createSEditor2"
				});//Editor
						
							
							
						 $("#save").click(function(){
							 //저장 클릭시 에디터내용을 area에 전달
							 
							 if($("#k_title").val()==""){
								alert("제목을입력해주세요");
								return false;
							 }else if($("#k_movieTheaters").val()==""){	
								alert("영화관을입력하세요");
								return false;
							 }else if($("#k_uploadDate").val()==""){
								alert("날짜를 입력하세요");
								return false;
							 }else{			//내용 실패...
						         oEditors.getById["k_contents"].exec("UPDATE_CONTENTS_FIELD",[]);
						         $("#k_form").submit();
							 } //else
					      }); //저장
						
					
				}); // callBack
			
				</script>
				
				
	</head>
	<body>
		<form action="noticeUpload.do" id="k_form">
			<table style="margin: 0 auto">
			
				<tr>
					<th style="background: gray">제목</th>
					<td colspan="3" style="width: 592px">
						<input type="text" style="width: 600px;" id="k_title" name="title">
					</td>
				</tr>
				<tr>
					<th style="background: gray">영화관</th>
					<td>
						<input type="text" style="width: 270px" id="k_movieTheaters" name="movieTheaters">
					</td>
					<th style="background: gray">등록일</th>
					<td>
						<input type="text" style="width: 270px" id="k_uploadDate" name="uploadDate">
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<!-- 내용 --><textarea id="k_contents" name="contents" style="width: 654px;height: 412px"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<center>
							<input type="button" id="save" value="저장">
						</center>
					</td>
				</tr>
			</table>
		</form>
	
	</body>
</html>