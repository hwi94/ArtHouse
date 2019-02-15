<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../resources/css/k_service.css">
		<script type="text/javascript"src="../resources/js/jquery.min.js"></script>
		
		
		
		
		<script type="text/javascript">
			$(function() {
				/* 기타문의클릭시 지역선택 , 영화관선택 비활성 */
				$("#k_question_other").click(function() {
					alert("기타문의를 클릭하셨군요");
					$("#k_areaSelectBox").prop("disabled",true);
					$("#k_selectMovieTheater").prop("disabled",true);
				});
				
				/* 지역문의클릭시 지역선택 , 영화관선택 활성 */
				$("#k_question_place").click(function() {
					alert("지점문의를 클릭하셨군요");
					$("#k_areaSelectBox").prop("disabled",false);
					$("#k_selectMovieTheater").prop("disabled",false);
				});
				
				
				
				$("#k_selectArea").click(function() {
					alert("지역선택 클릭했네요");
					$("#k_areaSelectBox").trigger("click");
				});
			
			
			
			
			
			
			
			});//callback		
		</script>
		
		

	</head>
	<body>
		<div class="page-body">
			<jsp:include page="../top.jsp"></jsp:include>
				<div class="k_question_container">
					<ul class="k_question_ul_container">
						<li>
							문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다.
						</li>
						<li>
							1:1 문의글 답변 운영시간 09:00 ~ 21:00
						</li>
					</ul>
					<h4 style="font-size: 10px">개인정보 수집에 대한 동의</h4>
					<div class="k_custommer_container" style="font-size: 8pt;">
						귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집. 이용에 대한 본인동의가 필요한 항목입니다.<br>
						<br>
						개인정보의 수집 및 이용목적<br>
						회사는 1:1 문의내역의 확인, 요청사항 처리 또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br>
						<br>
						수집하는 개인정보의 항목<br>
						이름,연락처,이메일주소<br>
						<br>
						개인정보의 보유기간 및 이용기간<br>
						문의 접수 ~ 처리 완료 후 6개월<br>
						(단, 관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에 따라 보존)<br>
						자세한 내용은 '개인정보 처리방침' 을 확인하시기 바랍니다.<br>
					</div>
					<div class="k_questionInputForm_container">
						<form>
						<p class="k_agreeAboutprivacy_contanier">
							개인정보 수집에 동의하십니까?<br>
							* 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우 서비스를 이용하실수 없습니다.　　　　　　　　　　　　　　　　　　　
							<input type="radio" id="k_agree" name="infoAgree"><label class="selectMenu">동의함</label><input type="radio" id="k_disagree" name="infoAgree"><label class="selectMenu">동의하지 않음</label>
						</p>
						<table class="k_question_table">
							<tr class="k_question_trRow">
								<th class="k_question_column">이름</th>
								<td colspan="3">
									<input type="text" style="width: 195px">
								</td>
							</tr>
							<tr>
								<th class="k_question_column">연락처</th>
								<td>
									<input type="text" name="" id="" class="mobileLength">-
									<input type="text" name="" id="" class="mobileLength">-
									<input type="text" name="" id="" class="mobileLength" >
								</td>
								<th class="k_question_column" style="width: 195px">이메일</th>
								<td>
									<input type="text" name="" id="">
								</td>
							</tr>
							<tr>
								<th class="k_question_column">문의지점</th>
								<td colspan="3">
									<div class="k_buttonGroup">
										<span>
											<input type="radio" class="radioMenu" id="k_question_place" name="questionType" checked="checked"><label class="selectMenu">지점문의</label>
										</span>
										<span>
											<input type="radio" class="radioMenu" id="k_question_other" name="questionType"><label class="selectMenu">기타문의</label>
										</span>
									</div>
									
									<div class="k_buttonGroup">
										<select id="k_areaSelectBox" style="width: 70px;height: 25px;font-size: 9pt;">
											<option value="">지역선택</option>
											<option value="서울">서울</option>
											<option value="경기">경기</option>
											<option value="인천">인천</option>
											<option value="대충세">대전/충청/세종</option>
											<option value="부대경">부산/대구/경상</option>
											<option value="광전">광주/전라</option>
											<option value="강원">강원</option>
											<option value="제주">제주</option>
										</select>
									</div>
									
									<div class="k_buttonGroup">
										<select id="k_selectMovieTheater" style="width: 70px;height: 25px;font-size: 9pt;">
											<option value="">영화관선택</option>
											<option value="서울">서울</option>
											<option value="경기">경기</option>
											<option value="인천">인천</option>
											<option value="대충세">대전/충청/세종</option>
											<option value="부대경">부산/대구/경상</option>
											<option value="광전">광주/전라</option>
											<option value="강원">강원</option>
											<option value="제주">제주</option>
										</select>
									</div>
									
								</td>
							</tr>
							<tr>
								<th class="k_question_column">문의유형</th>
								<td>
									<div class="k_buttonGroup">
										<select id="k_selectMovieTheater" style="width: 120px;height: 25px;font-size: 9pt;">
											<option value=""></option>
											<option value="서울"></option>
											<option value="경기"></option>
											<option value="인천"></option>
											<option value="대충세"></option>
											<option value="부대경"></option>
											<option value="광전"></option>
											<option value="강원"></option>
											<option value="제주"></option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<th class="k_question_column">제목</th>
								<td colspan="3">
									<input type="text" id="" name="" style="width: 785px">
								</td>
							</tr>
							<tr>
								<th class="k_question_column">내용</th>
								<td colspan="3">
									<textarea id="" name="" style= "width: 785px;height: 200px"></textarea>
									<p style="font-size:9pt">0/2000자</p>
								</td>
							</tr>
							<tr>
								<th class="k_question_column">파일첨부</th>
								<td colspan="3" width="785px;">	
									<button style="width: 120px;height: 60px">사진 추가하기</button>
								</td> 
							</tr>
						</table>
						<div class="k_submitButtonCenter_container">
							<input type="button" id="" name="" value="등록" class="k_question_uploadButton">
						</div>
					</form>
					</div>
				</div>
			<jsp:include page="../bottom.jsp"></jsp:include>
		</div>
	</body>
</html>