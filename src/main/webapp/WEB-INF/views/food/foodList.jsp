<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="No-Cache">
    <meta http-equiv="imagetoolbar" content="no">
    
    <link rel="shortcut icon" href="http://img.cgv.co.kr/theater_img/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" type="image/x-icon" href="http://img.cgv.co.kr/R2014/images/favicon.ico">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/reset.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/layout.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/module.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/common.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/content.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/eggupdate.css">
    <link rel="stylesheet" media="print" type="text/css" href="http://img.cgv.co.kr/R2014/css/print.css">    
   
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
	<script src="http://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>

    
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/phototicket/phototicket.css">
    <link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/slick.css">
	<link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/slick-theme-custom.css">
	<script type="text/javascript" src="./resources/js/jquery.min.js"></script>
	
  
    <script type="text/javascript">

    	/* 상단로고를 클릭시 메인화면으로 이동  */
		$(function() { 
			$("#top").click(function() {
				$(location).attr('href','http://localhost:7777/artHouse1/main.jsp');
			});
			
			$("#p1").click(function() { /* 팝콘1을 클릭했을때 */
				alert('상품1 선택');
			});
		});
    	
		function fnMoveLink(mvtype, pno, pidx, cnt)
        {

            if ("False" == "False") {
                app.goLogin();
            }
            else
            {
                if(mvtype == '1')           //장바구니
                {
                    fnAddCart(pno, pidx);
                }
                else if(mvtype == '2')      //선물하기
                {
                    fnBuyGoods(pno, pidx, 'g', cnt);
                } 
                else if(mvtype == '3')      //구매하기
                {
                    fnBuyGoods(pno, pidx, 'b', cnt);
                }
            }

        }

        function fnBuyGoods(_idx, pidx, type, cnt) {

            if ("False" == "False") {
                app.goLogin();
            }

             //fnCheckPromotionGoods(_idx);

        } 


    </script>

    <script type="text/javascript" src="https://nsso.cjone.com/findCookieSecured.jsp?cjssoq=M%2bhrouiSd1eZ5GW72xok6hGkT2Ijx%2fSaqDSf0mfkydhuRXgFMrb3Vj%2fr1YXRN6Qq1YksAPR1oZ2bhIE8RGQ4LzBaNGlNa05zOGZQUGNFb3gxV1pqZ1RhV2VLTEwxMGZiRTVldUxHeUEwK1ZTQS94Vk16b29hZDVncGFiZjZSVWw%3d"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014//js/system/system.packed.js"></script>
</head>
<body>
	<form name="ssologinfrm" action="https://www.cgv.co.kr/user/login/login-sso.aspx" method="post" novalidate="novalidate">
        <input type="hidden" id="cjssoq" name="cjssoq">
        <input type="hidden" name="returnURL" value="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=5">
    </form>
    <script type="text/javascript">
        function cjsso() {
            if ((typeof _cjssoEncData) != "undefined" && _cjssoEncData != "") {
                document.getElementById("cjssoq").value = _cjssoEncData;
                document.ssologinfrm.submit();
            }
        }

        cjsso();
    </script>
    <div class="skipnaiv">
	<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
</div>
    
	<!-- Header -->
	<div id="header">
		<div class="head">
			
            <!-- 상단 로고 -->
            
            <div class="im-wrap"> <!-- Important wrap -->
            	
				
			<h2><img src="./resources/img/logo01.gif" alt="EVENT" height="93px" align="top" id="top"></h2>
			
</div>
		</div>
        <!-- txt banner -->
        
        <!-- /text banner -->
	</div>
	<!-- /Header -->
	<!-- Contaniner -->
	<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->


		<!-- Contents Area -->
		<div id="contents" class="gift_store">
            
            <!-- Contents Start -->
			
<div id="divAction"></div>
<!-- Contents Area -->

<!-- S 카테고리 메뉴 & 받은선물/장바구니 -->
    

<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
<script type="text/javascript" src="http://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>

<link rel="stylesheet" media="all" type="text/css" href="http://img.cgv.co.kr/R2014/css/giftstore/giftstore.css">

<script language="javascript" type="text/javascript">


    function fnCategoryData(cno) {
        location.href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=" + cno;
    }

</script>


</div>


<!-- E 카테고리 메뉴 & 받은선물/장바구니 -->
    <div class="category_product_list_wrap">
     
    
     <strong class="category_product_list_title">팝콘<span>고소, 달콤부터 고메팝콘까지, 안먹으면 서운해요</span></strong> <ul class="com_list_style">      
     <li class="">      
     <!-- 1번 상품 -->
     <c:forEach var="dto" items="${list }" begin="0" end="0">
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100069" class="btn_category_product">          
     <span class="com_list_img_wrap"><img src="./resources/img/food/pop1.jpg" alt="고소팝콘(L)"></span>              
     <span class="com_list_text_wrap">              
     <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">고소팝콘(L)</span>           
     <span class="com_list_sale_price_wrap">                  
     <span class="store_deatail_source_price">${dto.price }</span>              
     </span>          </span>      </a>    <!-- 1번 상품 위의 링크 -->   
     </c:forEach>
     <a href="#none" onclick="javascript:fnMoveLink('1', '100069', '0', ''); return false;" class="btn_category_product_cart" id="p1">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100069', 0, '1'); return false;" class="btn_category_product_gift">2</a>         
     <a href="#none" onclick="javascript:fnMoveLink('3', '100069', 0, '1'); return false;" class="btn_category_product_buy">3</a>
     <form action="cart.do" method="post">
     <input name="prdId" type="hidden" value="5">   
     <select name="amount">
     <option value="1">1</option>
     <option value="2">2</option>
     <option value="3">3</option>
     <option value="4">4</option>
     <option value="5">5</option>
     </select>개   
     </form>      
     </li><li class="">
      
     <!-- 2번 상품 -->
     <c:forEach var="dto" items="${list }" begin="1" end="1">
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100068" class="btn_category_product">
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img }" alt="달콤팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">달콤팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>          
     <a href="#none" onclick="javascript:fnMoveLink('1', '100068', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100068', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100068', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
    
     <!-- 3번 상품 -->
     <c:forEach var="dto" items="${list }" begin="2" end="2">
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100071" class="btn_category_product">          
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="더블치즈팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">더블치즈팝콘(L)</span>
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>          
	 </c:forEach>          
     <a href="#none" onclick="javascript:fnMoveLink('1', '100071', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100071', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100071', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">  
         
     <!-- 4번 상품 -->
     <c:forEach var="dto" items="${list }" begin="3" end="3">
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100070" class="btn_category_product">      
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="바질어니언팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">바질어니언팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>          
     <a href="#none" onclick="javascript:fnMoveLink('1', '100070', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100070', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100070', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
     
               
     <!-- 5번 상품 --> 
     <c:forEach var="dto" items="${list }" begin="4" end="4"> 
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100047" class="btn_category_product">        
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="더블초콜렛 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">더블초콜렛 팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>          
     <a href="#none" onclick="javascript:fnMoveLink('1', '100047', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100047', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100047', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
          
     <!-- 6번 상품 -->
     <c:forEach var="dto" items="${list }" begin="5" end="5">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100051" class="btn_category_product">     
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="카라멜&amp;치즈 믹스팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">카라멜&amp;치즈 믹스팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100051', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100051', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100051', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
             
     <!-- 7번 상품 -->
     <c:forEach var="dto" items="${list }" begin="6" end="6">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100082" class="btn_category_product">  
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="바질어니언팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">바질어니언팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100082', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100082', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100082', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
            
     <!-- 8번 상품 -->
     <c:forEach var="dto" items="${list }" begin="7" end="7">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100081" class="btn_category_product">   
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="더블치즈팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">더블치즈팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100081', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100081', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100081', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
        
     <!-- 9번 상품 -->
     <c:forEach var="dto" items="${list }" begin="8" end="8">          
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100067" class="btn_category_product">       
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="고소팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">고소팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100067', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100067', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100067', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
              
     <!-- 10번 상품 -->
     <c:forEach var="dto" items="${list }" begin="9" end="9">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100066" class="btn_category_product"> 
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="달콤팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">달콤팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100066', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100066', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100066', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
        
     <!-- 11번 상품 -->
     <c:forEach var="dto" items="${list }" begin="10" end="10">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100050" class="btn_category_product"> 
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="크리미카라멜 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">크리미카라멜 팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100050', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100050', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100050', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
            
     <!-- 12번 상품 -->
     <c:forEach var="dto" items="${list }" begin="11" end="11">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100049" class="btn_category_product">   
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="리얼치즈 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">리얼치즈 팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100049', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100049', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100049', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
              
     <!-- 13번 상품 -->
     <c:forEach var="dto" items="${list }" begin="12" end="12">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100048" class="btn_category_product"> 
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="스위트랜치 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">스위트랜치 팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100048', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100048', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100048', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
              
     <!-- 14번 상품 -->          
     <c:forEach var="dto" items="${list }" begin="13" end="13"> 
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100046" class="btn_category_product"> 
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="카라멜&amp;치즈 믹스팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">카라멜&amp;치즈 믹스팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100046', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100046', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100046', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
            
     <!-- 15번 상품 -->
     <c:forEach var="dto" items="${list }" begin="14" end="14">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100045" class="btn_category_product">   
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="크리미카라멜 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">크리미카라멜 팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100045', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100045', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100045', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
           
     <!-- 16번 상품 -->
     <c:forEach var="dto" items="${list }" begin="15" end="15">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100044" class="btn_category_product">    
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="리얼치즈 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">리얼치즈 팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100044', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100044', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100044', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
            
     <!-- 17번 상품 -->
     <c:forEach var="dto" items="${list }" begin="16" end="16">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100043" class="btn_category_product">   
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="스위트랜치 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">스위트랜치 팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100043', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100043', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100043', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      
         
     <!-- 18번 상품 -->
     <c:forEach var="dto" items="${list }" begin="17" end="17">           
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100042" class="btn_category_product">      
     <span class="com_list_img_wrap"><img src="./resources/img/food/${dto.img}" alt="더블초콜렛 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">${dto.name }</span>              <span class="com_list_text_name">더블초콜렛 팝콘(M)</span>              
     <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">${dto.price }</span>              </span>          </span>      </a>
     </c:forEach>            
     <a href="#none" onclick="javascript:fnMoveLink('1', '100042', '0', ''); return false;" class="btn_category_product_cart">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100042', 0, '1'); return false;" class="btn_category_product_gift">2</a>          
     <a href="#none" onclick="javascript:fnMoveLink('3', '100042', 0, '1'); return false;" class="btn_category_product_buy">3</a> </li></ul>
    
     
</div>
    
<!-- /Contents Area -->

	<!-- /Contaniner --> 
    <div class="com_pop_wrap">
		<div class="com_pop_fog"></div>
	</div>
</body>
</html>