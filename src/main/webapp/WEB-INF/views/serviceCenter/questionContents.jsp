<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
<link rel="stylesheet" href="../resources/css/k_service.css">	


	<script type="text/javascript">
		$(function(){
			$(document).ready(function(){
				
				if($("#k_uploadedImg1").attr("src")=="" ||$("#k_uploadedImg1").attr("src")==null){
					$("#k_uploadedImg1").hide();
				}
				if($("#k_uploadedImg2").attr("src")==""||$("#k_uploadedImg2").attr("src")==null){
					$("#k_uploadedImg2").hide();
				}
				if($("#k_uploadedImg3").attr("src")==""||$("#k_uploadedImg3").attr("src")==null){
					$("#k_uploadedImg3").hide();
				}
				if($("#k_uploadedImg4").attr("src")==""||$("#k_uploadedImg4").attr("src")==null){
					$("#k_uploadedImg4").hide();
				}
				
				
			});
			
			
		});	
	
	</script>
	<div class="k_question_container">
		<div style="width: 970px;">
			<table style="width: 100%; border-top: 2px solid #503396; border-bottom: 2px solid #d2d2d2;">
				<tr>
					<th style="width: 150px; background-color: #EAEAEA;">제목</th>
					<td id="k_answerOfTitle" style="width: 318px; text-align: center;">${qnaDTO.title}</td>
					<th style="width: 150px; background-color: #EAEAEA;">작성자</th>
					<td style="width: 318px; text-align: center;">${qnaDTO.name }</td>
				</tr>
				<tr>
					<th style="width: 150px; background-color: #EAEAEA;">지역</th>
					<td style="width: 318px; text-align: center;">${qnaDTO.areaSelectBox}</td>
					<th style="width: 150px; background-color: #EAEAEA;">지점</th>
					<td style="width: 318px; text-align: center;">${qnaDTO.selectMovieTheater}</td>
				</tr>
				<tr>
					<th style="width: 150px; background-color: #EAEAEA;">이메일</th>
					<td style="width: 318px; text-align: center;">${qnaDTO.email}</td>
					<th style="width: 150px; background-color: #EAEAEA;">연락처</th>
					<td style="width: 318px; text-align: center;">${qnaDTO.tel}</td>
				</tr>
				<tr>
					<td colspan="4" style="width: 100%;height: 300px;  text-align: center;">${qnaDTO.contents}</td>
				</tr>
				<tr>
						<td><img id="k_uploadedImg1" src="${uploadMap.uploadFile1}" style="width: 200px;height: 200px;"></td>
						<td><img id="k_uploadedImg2" src="${uploadMap.uploadFile2}" style="width: 200px;height: 200px;"></td>
						<td><img id="k_uploadedImg3" src="${uploadMap.uploadFile3}" style="width: 200px;height: 200px;"></td>
						<td><img id="k_uploadedImg4" src="${uploadMap.uploadFile4}" style="width: 200px;height: 200px;"></td>
				</tr>
				<tr>
					<td colspan="4">
						<center>
							<input type="button" id="k_answer" value="답변하기">					
						</center>
					</td>
				</tr>
			</table>
		</div>
	</div>