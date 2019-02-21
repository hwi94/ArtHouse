/* 메인 자바스크립트 */

//이미지 슬라이드
$(document).ready(function(){
	$('.slider').bxSlider({
		auto: true,
		speed: 500
	});
});

$(function() {
	//현재상영작,상영예정작 탭메뉴
	
	$(".tab_content").hide(); // Initially hide all content
	$(".tab_content:first").show();
	
	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tab_content").hide();
		var activeTab = $(this).attr("rel");
		$("#" + activeTab).fadeIn();
	});
});
