<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>



	</head>
	<body>
		<div class="page-body">
			<jsp:include page="../top.jsp"></jsp:include>
				<div class="k_question_container">
					<ul>
						<li>
							문의하시기 전 FAQ를 확인하시면 궁금증을 더욱 빠르게 해결하실 수 있습니다.
						</li>
						<li>
							1:1 문의글 답변 운영시간 09:00 ~ 21:00
						</li>
					</ul>
					<h4>개인정보 수집에 대한 동의</h4>
					<div class="k_custommer_container">
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
						<p class="k_agreeAboutprivacy_contanier">
							개인정보 수집에 동의하십니까?<br>
							* 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우 서비스를 이용하실수 없습니다.
						</p>
						<div>
							<span>
								
							</span>
						</div>
						<table>
							<tr>
								<th>이름</th>
								<td colspan="3">
									<input type="text">
								</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>
									<input type="text" name="" id="">-
									<input type="text" name="" id="">-
									<input type="text" name="" id="">
								</td>
								<th>이메일</th>
								<td>
									<input type="text" name="" id="">
								</td>
							</tr>
							<tr>
								<th>문의지점</th>
								<td>
									<div>
										<span>
											<input type="radio">
										</span>
										<label>
											지점문의
										</label>
										<span>
											<input type="radio">
										</span>
										<label>
											기타문의
										</label>
									</div>
									<div>
										
									</div>
									<div>
										
									</div>
								</td>
							</tr>
							<tr>
								<th>문의유형</th>
								<td>
									<button>문의유형선택</button>
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td colspan="3">
									<input type="text" id="" name="">
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="3">
									<textarea id="" name=""></textarea>
									<p>0/2000자</p>
								</td>
							</tr>
							<tr>
								<th>파일첨부</th>
								<td>
									<input type="button" id="" name="" value="사진첨부">
								</td> 
							</tr>
						</table>
						<div class="k_submitButtonCenter_container">
							<input type="button" id="" name="" value="등록">
						</div>
					</div>
								
				</div>
			<jsp:include page="../bottom.jsp"></jsp:include>
		</div>
	</body>
</html>