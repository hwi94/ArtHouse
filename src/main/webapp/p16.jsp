<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.food_name{
		font-size: 18px;
		padding-left: 10px;
		font-weight: bold;	
	}
	.food_price{
		padding-left: 10px;
		font-weight: bold;
	}
	.category_product_detail_dlist{
	 	padding-top: 190px;
	}

</style>
</head>
<body>
 <jsp:include page="top.jsp"></jsp:include> 
	
	<div class="page-body">
	<h1>리얼치즈 팝콘(M) 상세페이지</h1>
	<hr>
	<form action="cartInsert.do" method="post">
	<img src="/artHouse/resources/img/food/pop16.jpg">
	<p class="food_name">리얼치즈 팝콘(M)</p>
	<p class="food_price">4,500</p>
	<input type="hidden" name="code" value="pop16">  <!-- 상품명 -->
	<input type="hidden" name="price" value="4500">  <!-- 상품가격 -->
	<input type="hidden" name="name" value="리얼치즈 팝콘(M)">  <!-- 상품명 -->
	<input name="prdId" type="hidden" value="5">   
	   &nbsp;&nbsp;&nbsp;<select name="amount" class="amount_set">
	    <option value="1">1</option>
	    <option value="2">2</option>
	    <option value="3">3</option>
	    <option value="4">4</option>
	    <option value="5">5</option>
	    </select>개
	<br>
		&nbsp;&nbsp;&nbsp;<input type="submit" value="장바구니" style="background-color: pink;">&nbsp;&nbsp;&nbsp;<!-- <input type="button" value="추천" style="background-color: skyblue;"> -->
	</form>
	
	<hr>
	</div>
	<dl class="category_product_detail_dlist">         	<dt>이용안내</dt>         	<dd>• 해당 기프트콘은 오프라인 매점에서 실제 상품으로 교환할 수 있는 온라인 상품권입니다.<br>
• <strong>구매 후 전송받으신 기프트콘은,</strong><br>
사용가능한 CGV의 매점에서 지정된 해당 상품으로만 교환이 가능합니다.<br>
(사용가능 CGV는 '상품교환'에서 확인 가능합니다)<br>
해당 상품 내에서 팝콘 혹은 음료, 스낵 변경 시 추가 비용이 발생합니다.<br>
교환 완료한 상품의 환불 및 반품은 불가합니다.<br>
• <strong>유효기간 연장을 신청하는 경우,</strong><br>
유효기간은 발급일로부터 5년 이내 횟수 제한 없이 기간 연장 가능하며, 1회 연장 시 3개월(92일) 단위로 유효기간이 연장됩니다.&nbsp;&nbsp;<br>
단, 이벤트 경품 및 프로모션 상품의 경우 유효기간 연장이 불가할 수 있습니다.<br>
유효기간 만료 이후에는 결제금액의 90% 환불이 가능합니다.&nbsp;&nbsp;<br>
• 매점상품 기프트콘은 극장 매점에서 상품 교환 후 수령한 영수증으로 CJ ONE 적립이 가능합니다.<br>
(모바일App,웹 &gt; MY &gt; 매점적립 or 홈페이지&gt; My CGV &gt; 매점이용 포인트 적립)<br>
• 상기 이미지는 실제와 다를 수 있습니다.</dd>         	<dt>취소/환불</dt>         	<dd>• 구매자는 최초 유효기간 이내에 결제금액의 100%에 대해 결제취소/환불이 가능하며, 최초 유효기간 만료 후에는 수신자가 결제금액의 90%에 대해 환불 요청 가능합니다.<br>
• 단, 이미 사용된 기프트콘에 대해서는 결제취소/환불 신청이 불가합니다.&nbsp;<br>
• 결제취소/환불 방법<br>
결제취소는 모바일App,웹 &gt; MY &gt; 결제내역조회 &gt; 스토어 or 홈페이지 &gt; My CGV &gt; 스토어 &gt; 결제내역의 해당 주문 상세내역에서 가능합니다.<br>
(기프트콘은 구매일로부터 60일 이내 결제취소 가능하며, 카드 결제취소 가능 기간이 경과하였을 경우, 고객센터로 연락주시면 됩니다)<br>
환불은 모바일App,웹 &gt; MY &gt; 기프트콘 or 홈페이지 &gt; My CGV &gt; 스토어 &gt; 내 기프트콘에서 환불을 원하는 기프트콘 등록 후 진행 가능하며, 비회원의 경우 고객센터로 신청 가능합니다.<br>
단 이 때, 본인 확인 및 계좌 확인 절차가 진행됩니다.<br>
• 수신자는 선물받은 기프트콘의 수신거절을 요청할 수 있으며, 이 경우 구매자에게 취소 및 환불에 대한 안내가 이루어집니다.&nbsp;<br>
• 결제취소 가능 기간이 경과한 후 수신자가 수신거절을 요청할 경우 구매자에게 기프트콘이 재발송됩니다.<br>
• CGV고객센터 1544-1122</dd>         </dl>
</body>
</html>