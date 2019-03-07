<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
<link rel="stylesheet" href="../resources/css/k_service.css">	
	<script type="text/javascript">
	
	
	</script>
	<div class="k_question_container">
		<div style="width: 970px;">
			<span style="font-weight:bold; font-size:20px; padding-top :20px; margin-bottom: 20px">1:1문의내역입니다.</span>
			<table class="k_selectQNAList" style="width:100%; border:0; border-top: 2px solid #503396; border-bottom: 2px solid #d2d2d2;" >
				<tr>
					<th style="text-align: center; background-color: #EAEAEA;">지역</th>
					<th style="text-align: center; background-color: #EAEAEA;">지점</th>
					<th style="text-align: center; background-color: #EAEAEA;">제목</th>
					<th style="text-align: center; background-color: #EAEAEA;">이름</th>
				</tr>
				<c:forEach items="${list}" var="qnaDTO">
					<tr>
						<td style=" text-align: center; width: 150px;">${qnaDTO.areaSelectBox}</td>
						<td style="width: 150px; text-align: center;">${qnaDTO.selectMovieTheater }</td>
						<td style="text-align: center;"><a id="k_QNATitle">${qnaDTO.title}</a></td>
						<td style="width: 150px; text-align: center;">${qnaDTO.name}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4">
						<center>
							<c:forEach begin="1" end="${pageSu}" varStatus="status">
								<a id="k_QNAListPageNum" style="font-size: 15px;">${status.count}</a>
							</c:forEach>
						</center>
					</td>				
				</tr>
			</table>
		</div>
	</div>
	
	