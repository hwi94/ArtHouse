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
				
				var cnt = 1;
				
				/* 클릭마다사진올릴수있는공간생성  */
				$("#k_attachments_upload").click(function () {
					console.log("펑션들어왔습니다.");
					if(cnt == 1){
						$("#attachments1").show();
						cnt++;
						console.log("cnt빠져나가는값은 2입니다.");
						return false;
					}else if(cnt == 2){
						$("#attachments2").show();
						cnt++;
						console.log("cnt빠져나가는값은 3입니다.");
						return false;
					}else if(cnt == 3){
						$("#attachments3").show();
						cnt++;
						console.log("cnt빠져나가는값은 4입니다.");
						return false;
					}else if(cnt == 4){
						$("#attachments4").show();
						cnt++;
						console.log("cnt빠져나가는값은 5입니다.");
						return false;
					}else if(cnt == 5){
						$("#attachments5").show();
						cnt++;
						console.log("cnt빠져나가는값은 6입니다.");
						return false;
					}
				});
				// ------------------------------------------------사진공간----------------------------------------------------------------------------
				
				/* 사진업로드1번버튼 */
				$("#k_attachments_fub1").change(function(e) {
					console.log("사진업로드 1번버튼 ");
					/* 선택한파일을 files에넣는다. */
					var files = e.target.files;
					console.log("파일이름:"+files);
					/* files를 배열에 넣는다 */
					var filesArr = Array.prototype.slice.call(files);
					console.log(filesArr);
					/* 배열에 들어있는거하나씩꺼내기 */
					filesArr.forEach(function(f){
						/* 이미지타입이아닐때, */
						if(!f.type.match("image.*")){
							alert("확장자는 이미지 확장자만 가능합니다.");
							console.log("not image");
							return;
						} // match if 
							console.log("yes image");
						/* f를 sel_file에 대입. */
						sel_file = f;
						/* 파일리더는 무엇인가? */
						var reader = new FileReader();
						reader.onload = function(e){
							/* 1. 파일선택을완료하면버튼숨김 */
							$("#k_attachments_fub1").hide();
							/* 2. 이미지태그생성 및 속성, 아이디부여 */
							$("#k_attachments_img_container1").append("<img id='k_uploadImg1' style= 'width:120px; heigth:93px;'>");
							/* 속성 : src 지정 */
							$("#k_uploadImg1").attr("src", e.target.result);
							console.log($("#k_uploadImg1").val());
							
						} // reader Function 
						reader.readAsDataURL(f);
					}); // forEach
				});	//사진업로드	
				
				/* 사진클릭시 삭제. */
				$(document).on("click","#k_uploadImg1",function(){
					console.log("1111??");
					$("#k_uploadImg1").remove();
					$("#k_attachments_fub1").show();
					
				});
				//--------------------------------------------------------------------------------------------------------------------------------------
				/* 사진업로드1번버튼 */
				$("#k_attachments_fub2").change(function(e) {
					console.log("사진업로드 1번버튼 ");
					/* 선택한파일을 files에넣는다. */
					var files = e.target.files;
					console.log("파일이름:"+files);
					/* files를 배열에 넣는다 */
					var filesArr = Array.prototype.slice.call(files);
					console.log(filesArr);
					/* 배열에 들어있는거하나씩꺼내기 */
					filesArr.forEach(function(f){
						/* 이미지타입이아닐때, */
						if(!f.type.match("image.*")){
							alert("확장자는 이미지 확장자만 가능합니다.");
							console.log("not image");
							return;
						} // match if 
							console.log("yes image");
						/* f를 sel_file에 대입. */
						sel_file = f;
						/* 파일리더는 무엇인가? */
						var reader = new FileReader();
						reader.onload = function(e){
							/* 1. 파일선택을완료하면버튼숨김 */
							$("#k_attachments_fub2").hide();
							/* 2. 이미지태그생성 및 속성, 아이디부여 */
							$("#k_attachments_img_container2").append("<img id='k_uploadImg2' style= 'width:120px; heigth:93px;'>");
							/* 속성 : src 지정 */
							$("#k_uploadImg2").attr("src", e.target.result);
							
						} // reader Function 
						reader.readAsDataURL(f);
					}); // forEach
				});	//사진업로드	
				
				/* 사진클릭시 삭제. */
				$(document).on("click","#k_uploadImg2",function(){
					console.log("1111??");
					$("#k_uploadImg2").remove();
					$("#k_attachments_fub2").show();
					
				});
				//--------------------------------------------------------------------------------------------------------------------------------------
				/* 사진업로드3번버튼 */
				$("#k_attachments_fub3").change(function(e) {
					console.log("사진업로드 3번버튼 ");
					/* 선택한파일을 files에넣는다. */
					var files = e.target.files;
					console.log("파일이름:"+files);
					/* files를 배열에 넣는다 */
					var filesArr = Array.prototype.slice.call(files);
					console.log(filesArr);
					/* 배열에 들어있는거하나씩꺼내기 */
					filesArr.forEach(function(f){
						/* 이미지타입이아닐때, */
						if(!f.type.match("image.*")){
							alert("확장자는 이미지 확장자만 가능합니다.");
							console.log("not image");
							return;
						} // match if 
							console.log("yes image");
						/* f를 sel_file에 대입. */
						sel_file = f;
						/* 파일리더는 무엇인가? */
						var reader = new FileReader();
						reader.onload = function(e){
							/* 1. 파일선택을완료하면버튼숨김 */
							$("#k_attachments_fub3").hide();
							/* 2. 이미지태그생성 및 속성, 아이디부여 */
							$("#k_attachments_img_container3").append("<img id='k_uploadImg3' style= 'width:120px; heigth:93px;'>");
							/* 속성 : src 지정 */
							$("#k_uploadImg3").attr("src", e.target.result);
							
						} // reader Function 
						reader.readAsDataURL(f);
					}); // forEach
				});	//사진업로드	
				
				/* 사진클릭시 삭제. */
				$(document).on("click","#k_uploadImg3",function(){
					console.log("1111??");
					$("#k_uploadImg3").remove();
					$("#k_attachments_fub3").show();
					
				});
				//--------------------------------------------------------------------------------------------------------------------------------------
				/* 사진업로드4번버튼 */
				$("#k_attachments_fub4").change(function(e) {
					console.log("사진업로드 4번버튼 ");
					/* 선택한파일을 files에넣는다. */
					var files = e.target.files;
					console.log("파일이름:"+files);
					/* files를 배열에 넣는다 */
					var filesArr = Array.prototype.slice.call(files);
					console.log(filesArr);
					/* 배열에 들어있는거하나씩꺼내기 */
					filesArr.forEach(function(f){
						/* 이미지타입이아닐때, */
						if(!f.type.match("image.*")){
							alert("확장자는 이미지 확장자만 가능합니다.");
							console.log("not image");
							return;
						} // match if 
							console.log("yes image");
						/* f를 sel_file에 대입. */
						sel_file = f;
						/* 파일리더는 무엇인가? */
						var reader = new FileReader();
						reader.onload = function(e){
							/* 1. 파일선택을완료하면버튼숨김 */
							$("#k_attachments_fub4").hide();
							/* 2. 이미지태그생성 및 속성, 아이디부여 */
							$("#k_attachments_img_container4").append("<img id='k_uploadImg4' style= 'width:120px; heigth:93px;'>");
							/* 속성 : src 지정 */
							$("#k_uploadImg4").attr("src", e.target.result);
							
						} // reader Function 
						reader.readAsDataURL(f);
					}); // forEach
				});	//사진업로드	
				
				/* 사진클릭시 삭제. */
				$(document).on("click","#k_uploadImg4",function(){
					console.log("1111??");
					$("#k_uploadImg4").remove();
					$("#k_attachments_fub4").show();
					
				});
				//--------------------------------------------------------------------------------------------------------------------------------------
				/* 사진업로드1번버튼 */
				$("#k_attachments_fub5").change(function(e) {
					console.log("사진업로드 5번버튼 ");
					/* 선택한파일을 files에넣는다. */
					var files = e.target.files;
					console.log("파일이름:"+files);
					/* files를 배열에 넣는다 */
					var filesArr = Array.prototype.slice.call(files);
					console.log(filesArr);
					/* 배열에 들어있는거하나씩꺼내기 */
					filesArr.forEach(function(f){
						/* 이미지타입이아닐때, */
						if(!f.type.match("image.*")){
							alert("확장자는 이미지 확장자만 가능합니다.");
							console.log("not image");
							return;
						} // match if 
							console.log("yes image");
						/* f를 sel_file에 대입. */
						sel_file = f;
						/* 파일리더는 무엇인가? */
						var reader = new FileReader();
						reader.onload = function(e){
							/* 1. 파일선택을완료하면버튼숨김 */
							$("#k_attachments_fub5").hide();
							/* 2. 이미지태그생성 및 속성, 아이디부여 */
							$("#k_attachments_img_container5").append("<img id='k_uploadImg5' style= 'width:120px; heigth:93px;'>");
							/* 속성 : src 지정 */
							$("#k_uploadImg5").attr("src", e.target.result);
							
						} // reader Function 
						reader.readAsDataURL(f);
					}); // forEach
				});	//사진업로드	
				
				/* 사진클릭시 삭제. */
				$(document).on("click","#k_uploadImg5",function(){
					console.log("1111??");
					$("#k_uploadImg5").remove();
					$("#k_attachments_fub5").show();
					
				});
				
				
				
				
				
				
				//----------------------------------------------------------------------------------------------------------------------------------------
				
				
				
				
				
				/* 기타문의클릭시 지역선택 , 영화관선택 비활성 */
				$("#k_question_other").click(function() {
					alert("기타문의를 클릭하셨군요");
					$("#k_areaSelectBox").prop("disabled",true);
					$("#k_selectMovieTheater").prop("disabled",true);
					/* 문의유형선택바뀜  */
					$("#k_questionType1").hide();
					$("#k_questionType2").show();
				});
				
				/* 지역문의클릭시 지역선택 , 영화관선택 활성 */
				$("#k_question_place").click(function() {
					alert("지점문의를 클릭하셨군요");
					$("#k_areaSelectBox").prop("disabled",false);
					$("#k_selectMovieTheater").prop("disabled",false);
					/* 문의유형선택바뀜  */
					$("#k_questionType1").show();
					$("#k_questionType2").hide();
					$("#")
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
						<form enctype="multipart/form-data" method="post">
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
									<input type="text" name="" id="" class="mobileLength" maxlength="3">-
									<input type="text" name="" id="" class="mobileLength" maxlength="4">-
									<input type="text" name="" id="" class="mobileLength" maxlength="4">
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
										<select id="k_areaSelectBox" style="width: 70px;height: 25px;font-size: 9pt; ">
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
										<select id="k_questionType1" style="width: 120px;height: 25px;font-size: 9pt;">
											<option value="">문의유형 선택</option>
											<option value="일반 문의">일반 문의</option>
											<option value="칭찬">칭찬</option>
											<option value="불만">불만</option>
											<option value="제안">제안</option>
										</select>
										<select id="k_questionType2" style="width: 120px;height: 25px;font-size: 9pt; display: none;">
											<option value="">문의유형 선택</option>
											<option value="영화정보">영화정보 문의</option>
											<option value="회원및포인트">회원 및 포인트 문의</option>
											<option value="예매/결제">예매/결제 관련 문의</option>
											<option value="이벤트">이벤트 문의</option>
											<option value="일반">일반 문의</option>
											<option value="제안/건의">제안/건의</option>
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
									<input type="button" id="k_attachments_upload" style="width: 120px;height: 60px" value="사진첨부">
									<ul>
										<li id="attachments1" style="width: 120px;height: 93px; float: left; display: none;" class="attachments">
											<div align="center" id="k_attachments_img_container1" style="width: 120px;height: 93px">
												<input type="file" id="k_attachments_fub1" name="imgFile1" class="uploadBtn" style="width: 76px; margin-top: 35px;">
											</div>
										</li>
										<li id="attachments2" style="width: 120px;height: 93px; float: left; display: none;" class="attachments">
											<div align="center" id="k_attachments_img_container2" style="width: 120px;height: 93px">
												<input type="file" id="k_attachments_fub2" name="imgFile2" class="uploadBtn" style="width: 76px; margin-top: 35px;">
											</div>
										</li>
										<li id="attachments3" style="width: 120px;height: 93px; float: left; display: none;" class="attachments">
											<div align="center" id="k_attachments_img_container3" style="width: 120px;height: 93px">
												<input type="file" id="k_attachments_fub3" name="imgFile3" class="uploadBtn" style="width: 76px; margin-top: 35px;">
											</div>
										</li>
										<li id="attachments4" style="width: 120px;height: 93px; float: left; display: none;" class="attachments">
											<div align="center" id="k_attachments_img_container4" style="width: 120px;height: 93px">
												<input type="file" id="k_attachments_fub4" name="imgFile4" class="uploadBtn" style="width: 76px; margin-top: 35px;">
											</div>
										</li>
										<li id="attachments5" style="width: 120px;height: 93px; float: left; display: none;" class="attachments">
											<div align="center" id="k_attachments_img_container5" style="width: 120px;height: 93px">
												<input type="file" id="k_attachments_fub5" name="imgFile5" class="uploadBtn" style="width: 76px; margin-top: 35px;">
											</div>
										</li>
									</ul>
								</td>
							</tr>
						</table>
						<div class="k_submitButtonCenter_container"	style="margin: auto">
							<center>
								<input type="button" id="k_question_uploadButton" name="" value="등록" class="k_question_uploadButton">
							</center>
						</div>
					</form>
					</div>
				</div>
			<jsp:include page="../bottom.jsp"></jsp:include>
		</div>
	</body>
</html>