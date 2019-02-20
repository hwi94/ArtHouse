<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="No-Cache">
    <meta http-equiv="imagetoolbar" content="no">
    <meta name="viewport" content="width=1024">
    <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작">
    <meta name="description" content="CGV는 선진화된 관람문화와 최고의 서비스로 고객에게 잊을 수 없는 감동을 선사합니다. CGV홈페이지를 통해 영화 예매뿐만 아니라 그 이상의 서비스와 감동을 전달하고, 다양한 즐거움과 특별한 경험을 제공하고자 합니다.">
    
    
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
	<script type="text/javascript" src="../resources/js/jquery.min.js"></script>
	
  
    <script type="text/javascript">

    	/* 상단로고를 클릭시 메인화면으로 이동  */
		$(function() { 
			$("#top").click(function() {
				$(location).attr('href','http://localhost:7777/artHouse/main.jsp');
			});
			
			$("#p1").click(function() { /* 팝콘1을 클릭했을때 */
				alert('상품1 선택');
			});
		});
    
        /* var cidx = "5";

        $(document).ready(function () {

            $.giftstore_fixObj(this, $('.category_contents_wrap'), $('.category_content'), $('.giftstore_logo'));
            $.fn.focusSet1($('.category_product_list_wrap li'), 'active');

            //영역 문제로 gift_store 클래스 추가
            $("#contents").addClass("gift_store");
            //네비게이션의 카테고리명 변경
            fnCategoryItemsData(cidx);

            $(window).bind("pageshow", function (event) {
                if (!!window.performance && window.performance.navigation.type == 2) {
                    fnGetRefreshInfo();
                }
            });
        });

        $(window).load(function () {
            $('.sect-aside-banner').asideRePosition();
        });

        //뒤로가기 새로고침
        function fnGetRefreshInfo() {

            $.ajax({
                type: "POST",
                url: "/culture-event/popcorn-store/default.aspx/GetCategoryInfo",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {

                    var tmpval = data.d.split('|');

                    $("#cartviewcnt").text(tmpval[0]);
                    $("#giftconcnt").text(tmpval[1]);

                },

                error: function (xhr, status, err) {
                    var err = eval("(" + xhr.responseText + ")");
                    alert(err.Message);
                }
            });

        }

        function fnCategoryItemsData(_idx) {
            
            var jsonData = "{idx: '" + _idx + "', CategoryName:''}";
            
            jQuery.ajax({
                type: "POST",
                url: "/culture-event/popcorn-store/store-category.aspx/GetCategoryProductList",
                data: jsonData,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function (data) {
                    $("div.category_product_list_wrap").append(data.d);
                },
                error: function (xhr, status, err) {
                    var err = eval("(" + xhr.responseText + ")");
                    alert(err.Message);
                }
            });
        }

        function fnCategoryData(cno)
        {
            location.href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=" + cno;
        } */

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

            var _Cnt = cnt;
            var _SubNo = "";
            var _pidx = pidx;

            var params = {
                idx: encodeURIComponent(_idx),
                Quantity: encodeURIComponent(_Cnt),
                SubGG: encodeURIComponent(_SubNo),
                ProIdx: encodeURIComponent(_pidx),
                Type: encodeURIComponent(type),
                UserId: encodeURIComponent("")
            };

            $.ajax({
                type: "POST",
                url: "/culture-event/popcorn-store/store-category.aspx/SetPurchaseItem",
                data: "{ requestData: '" + JSON.stringify(params) + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: true,
                success: function (data) {
                    if (data.d.ResultCode == "00000") {
                        var result = data.d.ResultHtml.split('|');
                        if (result[0] != "") {
                            alert(result[0]);
                        }
                        $('#divAction').append(result[1]);
                        $('#frmBuyAction').submit();
                    }
                    else {
                        if (data.d.ResultMessage == null) {
                            app.goLogin();
                            //window.location.reload();
                        }
                        else {
                            alert(data.d.ResultMessage);
                            // 전체판매수량 소진시 새로고침해준다
                            if (data.d.ResultCode == "99994" || data.d.ResultCode == "99997" || data.d.ResultCode == "99999"){
                                window.location.reload();
                            }
                        }
                    }
                },
                error: function (xhr, status, err) {
                    var err = eval("(" + xhr.responseText + ")");

                    if (err.Message == null) {
                        app.goLogin();
                    }
                    else {
                        alert(err.Message);
                    }
                }
            });

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
            	
				
			<h2><img src="../resources/img/logo01.gif" alt="EVENT" height="93px" align="top" id="top"></h2>
				
				<!-- 서브 메뉴 -->
				

<script type="text/javascript">
    //상단 키워드 광고 (S)
    function AdSearchExt(txt, SearchText) {
        $('#header_keyword').attr('placeholder', txt);
        $('#header_ad_keyword').val(SearchText);
    }

    function hdIcoSet(left, sh) { }
    //상단 키워드 광고 (E)

</script>
				
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
     <li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100069" class="btn_category_product">
     <!-- 1번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244796940.jpg" alt="고소팝콘(L)"></span>              
     <span class="com_list_text_wrap">              
     <span class="com_list_text_title">고소팝콘(L)</span>              
     <span class="com_list_text_name">고소팝콘(L)</span>              
     <span class="com_list_sale_price_wrap">                  
     <span class="store_deatail_source_price">5,000</span>              
     </span>          </span>      </a>    <!-- 1번 상품 위의 링크 -->    
         
     <a href="#none" onclick="javascript:fnMoveLink('1', '100069', '0', ''); return false;" class="btn_category_product_cart" id="p1">1</a>          
     <a href="#none" onclick="javascript:fnMoveLink('2', '100069', 0, '1'); return false;" class="btn_category_product_gift">2</a>         
     <a href="#none" onclick="javascript:fnMoveLink('3', '100069', 0, '1'); return false;" class="btn_category_product_buy">3</a>
     <form action="cart.do" method="post">
     <input name="prdId" type="hidden" value="6">   
     <select name="amount">
     <option value="1">1</option>
     <option value="2">2</option>
     <option value="3">3</option>
     <option value="4">4</option>
     <option value="5">5</option>
     </select>개   
     </form>      
     </li><li class="">
     <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100068" class="btn_category_product">
      
     <!-- 2번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463244213800.jpg" alt="달콤팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">달콤팝콘(L)</span>              <span class="com_list_text_name">달콤팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">5,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100068', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100068', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100068', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100071" class="btn_category_product">          
     <!-- 3번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463247055100.jpg" alt="더블치즈팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">더블치즈팝콘(L)</span>              <span class="com_list_text_name">더블치즈팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">6,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100071', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100071', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100071', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100070" class="btn_category_product">          
     <!-- 4번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463246051050.jpg" alt="바질어니언팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">바질어니언팝콘(L)</span>              <span class="com_list_text_name">바질어니언팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">6,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100070', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100070', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100070', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100047" class="btn_category_product">          
     <!-- 5번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463237406590.jpg" alt="더블초콜렛 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">더블초콜렛 팝콘(L)</span>              <span class="com_list_text_name">더블초콜렛 팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">6,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100047', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100047', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100047', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100051" class="btn_category_product">          
     <!-- 6번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463231086510.jpg" alt="카라멜&amp;치즈 믹스팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">카라멜&amp;치즈 믹스팝콘(L)</span>              <span class="com_list_text_name">카라멜&amp;치즈 믹스팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">6,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100051', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100051', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100051', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100082" class="btn_category_product">          
     <!-- 7번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464079698890.jpg" alt="바질어니언팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">바질어니언팝콘(M)</span>              <span class="com_list_text_name">바질어니언팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">5,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100082', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100082', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100082', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100081" class="btn_category_product">          
     <!-- 8번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15464078822330.jpg" alt="더블치즈팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">더블치즈팝콘(M)</span>              <span class="com_list_text_name">더블치즈팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">5,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100081', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100081', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100081', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100067" class="btn_category_product">          
     <!-- 9번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463243497220.jpg" alt="고소팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">고소팝콘(M)</span>              <span class="com_list_text_name">고소팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">4,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100067', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100067', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100067', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100066" class="btn_category_product">          
     <!-- 10번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463242301430.jpg" alt="달콤팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">달콤팝콘(M)</span>              <span class="com_list_text_name">달콤팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">5,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100066', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100066', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100066', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100050" class="btn_category_product">          
     <!-- 11번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463235179830.jpg" alt="크리미카라멜 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">크리미카라멜 팝콘(L)</span>              <span class="com_list_text_name">크리미카라멜 팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">6,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100050', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100050', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100050', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100049" class="btn_category_product">          
     <!-- 12번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463236161710.jpg" alt="리얼치즈 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">리얼치즈 팝콘(L)</span>              <span class="com_list_text_name">리얼치즈 팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">6,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100049', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100049', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100049', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100048" class="btn_category_product">          
     <!-- 13번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463236806310.jpg" alt="스위트랜치 팝콘(L)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">스위트랜치 팝콘(L)</span>              <span class="com_list_text_name">스위트랜치 팝콘(L)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">6,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100048', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100048', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100048', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100046" class="btn_category_product">          
     <!-- 14번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463237965700.jpg" alt="카라멜&amp;치즈 믹스팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">카라멜&amp;치즈 믹스팝콘(M)</span>              <span class="com_list_text_name">카라멜&amp;치즈 믹스팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">4,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100046', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100046', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100046', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100045" class="btn_category_product">          
     <!-- 15번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463238755070.jpg" alt="크리미카라멜 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">크리미카라멜 팝콘(M)</span>              <span class="com_list_text_name">크리미카라멜 팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">4,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100045', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100045', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100045', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100044" class="btn_category_product">          
     <!-- 16번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463239421030.jpg" alt="리얼치즈 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">리얼치즈 팝콘(M)</span>              <span class="com_list_text_name">리얼치즈 팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">4,500</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100044', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100044', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100044', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100043" class="btn_category_product">          
     <!-- 17번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463239947060.jpg" alt="스위트랜치 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">스위트랜치 팝콘(M)</span>              <span class="com_list_text_name">스위트랜치 팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">5,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100043', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100043', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100043', 0, '1'); return false;" class="btn_category_product_buy">3</a>      </li><li class="">      <a href="/culture-event/popcorn-store/product-detail.aspx?GG_NO=100042" class="btn_category_product">          
     <!-- 18번 상품 -->          
     <span class="com_list_img_wrap"><img src="http://img.cgv.co.kr/GiftStore/Product/Pc/List/15463240570440.jpg" alt="더블초콜렛 팝콘(M)"></span>              
     <span class="com_list_text_wrap">              <span class="com_list_text_title">더블초콜렛 팝콘(M)</span>              <span class="com_list_text_name">더블초콜렛 팝콘(M)</span>              <span class="com_list_sale_price_wrap">                  <span class="store_deatail_source_price">5,000</span>              </span>          </span>      </a>          <a href="#none" onclick="javascript:fnMoveLink('1', '100042', '0', ''); return false;" class="btn_category_product_cart">1</a>          <a href="#none" onclick="javascript:fnMoveLink('2', '100042', 0, '1'); return false;" class="btn_category_product_gift">2</a>          <a href="#none" onclick="javascript:fnMoveLink('3', '100042', 0, '1'); return false;" class="btn_category_product_buy">3</a> </li></ul>
</div>
    
<!-- /Contents Area -->

	<!-- /Contaniner --> 
    <div class="com_pop_wrap">
		<div class="com_pop_fog"></div>
	</div>
	
</body>
</html>