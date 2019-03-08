<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			
			
			<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
			<link rel="stylesheet" href="../resources/css/k_service.css">
			<script type="text/javascript">
				$(function(){
					/* 페이지 - 색상(초기값) */
					$(document).ready(function(){
						$("#k_pageNum").css("color","red");
					});
					
					/* 페이지 - 클릭 (번호색깔지우기)*/
					$("#k_pageNum").click(function(){
						$("#k_pageNum").removeAttr("style");	// 아이디가 전부 공용이기때문에 전부다 지운다.
					});
					/* 페이지 - 클릭 (번호색깔지우기)*/
					$("#k_pageNum").click(function(){
						$("#k_pageNum").removeAttr("color");	// 아이디가 전부 공용이기때문에 전부다 지운다.
					});
					
					/* 페이지 - 클릭 (번호색깔지우기)*/
					$("#k_pageNum").click(function(){
						$("#k_pageNum").css("color",'');	// 아이디가 전부 공용이기때문에 전부다 지운다.
					});
					
					
					
					
				});
			</script>			
				
			
			<div id="k_changeTheMenu" class="noticeList" style="margin: 0 auto;">
				<span style="font-weight:bold; font-size:20px; padding-top :20px; margin-bottom: 20px">공지사항, 아트박스의 최신소식을 알려드립니다.</span>
				<table class="k_selectListNotice" style="border:0; border-top: 2px solid #503396; border-bottom: 2px solid #d2d2d2;" >
					<tr style="background: #EAEAEA;">
	 					<th class="k_noticeListCss" style="width: 113px;height:38px">NO</th> 
						<th class="k_noticeListCss" style="width:131px;height: 38px">지역/영화관</th>
						<th class="k_noticeListCss" style="width: 616px;height: 38px">제목</th>
						<th class="k_noticeListCss" style="width: 110px;height:38px">등록일</th>
					</tr>
					<c:forEach items="${list2}" var="noticeDTO">
					<tr id="k_board">
						<td class="k_noticeListCss" style="border-bottom:1px solid grey; text-align: center;">${noticeDTO.titleNo}</td>
						<td class="k_noticeListCss" style="border-bottom:1px solid grey; text-align: center;">${noticeDTO.movieTheaters}</td>
						<td class="k_noticeListCss" style="border-bottom:1px solid grey; text-align: center;"><a href="#" id="k_title">${noticeDTO.title}</a></td>
						<td class="k_noticeListCss" style="border-bottom:1px solid grey; text-align: center;">${noticeDTO.uploadDate}</td>
					</tr>
					</c:forEach>
						
						<tr>
							<td colspan="4">
								<form action="selectNoticeList2.do">
									<center>
										<a id="k_prev" href="#">[이전]</a>
										<c:forEach begin="1" end="${pageSu}" varStatus="status">
											<a id="k_pageNum" href="#" style="font-size: 15px;">${status.count}</a>
										</c:forEach>
										<a id="k_next" href="#">[다음]</a>
									</center>
								</form>
							</td>
						<tr>
				</table>
			</div>
			
			
			
			
