<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../resources/css/k_service.css">
<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
		<script type="text/javascript">
			$(function(){

			
			
			
			
			
			});
		
		
		
		</script>




<body>
	<div class="k_question_container">
		<span style="font-weight:bold; font-size:20px; padding-top :20px; margin-bottom: 20px">공지사항, 아트하우스의 최신소식을 알려드립니다.</span>
		<table style=" width:100%; border:0; border-top: 2px solid #503396; border-bottom: 2px solid #d2d2d2;">
			<tr>
				<th class="k_noticeListCss" style="border-bottom: 1px solid #dcdcdc; width: 200px;height: 36px;background-color: #f2f2f2;">제목</th>
				<td class="k_noticeListCss" id="k_noticeTitle" style="text-align:center; border-bottom: 1px solid #dcdcdc; width: 700px; "colspan="3">${noticeDTO.title}</td>
			</tr>
			<tr>
				<th class="k_noticeListCss" style="border-bottom: 1px solid #dcdcdc; width: 200px;height: 36px;background-color: #f2f2f2;">영화관</th>
				<td class="k_noticeListCss" style="text-align:center; border-bottom: 1px solid #dcdcdc; width: 250px">${noticeDTO.movieTheaters}</td>
				<th class="k_noticeListCss" style="border-bottom: 1px solid #dcdcdc; width: 200px;height: 36px;background-color: #f2f2f2;">등록일</th>
				<td class="k_noticeListCss" style="text-align:center; border-bottom: 1px solid #dcdcdc; width: 250px">${noticeDTO.uploadDate}</td>
			</tr>
			<tr>
				<td colspan="4">
					<div style="width: 810px;height:291px;padding:30px 50px 120px 110px; text-align:center;">
						${noticeDTO.contents}
					</div>
				</td>
			</tr>
		</table>
		<div>
			<input type="button" value="목록" id="k_noticeList" style="width: 60px;height: 22px; margin-top: 10px; ">
			<input type="button" value="수정" id="k_noticeUpdate" style="width: 60px;height: 22px; margin-top: 10px; ">
			<input type="button" value="삭제" id="k_noticeDelete" style="width: 60px;height: 22px; margin-top: 10px; ">
		</div>
	</div>
</body>
</html>