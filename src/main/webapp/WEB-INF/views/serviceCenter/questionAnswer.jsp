<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="../resources/css/k_service.css">
<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
		
		<script type="text/javascript">
			$(function(){
				
			
			
			
			
			
			});
		</script>
		
		<div class="k_question_container">
			<div style="width: 970px;">
			<form id="k_answerAlready">
				<table border="0" style="border-top: 2px solid #503396; border-bottom: 2px solid #d2d2d2;">
					<tr>
						<th style="width: 200px; background-color: #EAEAEA;">보내는사람</th>
						<td colspan="3" style="width: 770px;">
							<input type="text" value="khr1287@naver.com" readonly="readonly" name="sender" style="width: 770px;height: 32px;">
						</td>
					</tr>
					<tr>
						<th style="background-color: #EAEAEA;">받는사람</th>
						<td colspan="3">
							<input type="text" value="${qnaDTO.email}" readonly="readonly" name="receiver" style="width: 770px;height: 32px;">
						</td>
					</tr>
					<tr>
						<th style="background-color: #EAEAEA;">제목</th>
						<td colspan="3">
								<input type="text" name="title" style="width: 770px;height: 32px;">
								<input type="hidden" name="hiddenTitle" value="${qnaDTO.title}">
						</td>
					</tr>
					<tr>
						<th style="background-color: #EAEAEA;">내용</th>
						<td colspan="3">
								<textarea name="contents" style="width: 770px;height: 300px;"></textarea>	
						</td>
					</tr>
					<tr>
						<th colspan="4">
							<input type="submit" id="k_answerCompleteButton" value="답변완료">
						</th>
					</tr>
				</table>		
			</form>
			</div>
		</div>
		
		