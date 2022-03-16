$(document).ready( function(){
	/* 스토어 서브 네비 */
   	/*========================================================================*/
	$("#menuStore").mouseover(function(){
		$("#menuStore").css({"color" : "#ffb6c1"});
		if($(window).width()>758){
			$("#subNav").css({"display" : "block"});
			$("#subNav2").css({"display" : "none"});
		}
	});

	$("#menuStore").mouseleave(function(){
		$("#menuStore").css({"color" : "black"});
		$("#subNav").css({"display" : "none"});
		
	});

	$("#subNav").mouseover(function(){
		if($(window).width()>758){
			$("#menuStore").css({"color" : "#ffb6c1"});
			$("#subNav").css({"display" : "block"});
		}
	});

	$("#subNav").mouseleave(function(){
		if($(window).width()>758){
			$("#menuStore").css({"color" : "black"});
			$("#subNav").css({"display" : "none"});
		}
	});

	/* 커뮤니티 서브네비 */
   	/*========================================================================*/
	$("#menuComm").mouseover(function(){
		$("#menuComm").css({"color" : "#ffb6c1"});
		if($(window).width()>758){
			$("#subNav2").css({"display" : "block"});
			$("#subNav").css({"display" : "none"});
		}
	});

	$("#menuComm").mouseleave(function(){
		$("#menuComm").css({"color" : "black"});
		$("#subNav2").css({"display" : "none"});
	});

	$("#subNav2").mouseover(function(){
		if($(window).width()>758){
			$("#menuComm").css({"color" : "#ffb6c1"});
			$("#subNav2").css({"display" : "block"});
		}
	});

	$("#subNav2").mouseleave(function(){
		if($(window).width()>758){
			$("#menuComm").css({"color" : "black"});
			$("#subNav2").css({"display" : "none"});
		}
	});

	/* 카테고리 */
	/*========================================================================*/
	$("#category").mouseover(function(){
		$("#categoryLi").css({"color" : "#ffb6c1"});
		if($(window).width()>758){
			$(".categoryDiv").css({"display" : "block"});
		}
	});

	$("#category").mouseleave(function(){
		$("#categoryLi").css({"color" : "black"});
		$(".categoryDiv").css({"display" : "none"});
		
	});

	$(".categoryDiv").mouseover(function(){
		if($(window).width()>758){
			$("#categoryLi").css({"color" : "#ffb6c1"});
			$(".categoryDiv").css({"display" : "block"});
		}
	});

	$(".categoryDiv").mouseleave(function(){
		if($(window).width()>758){
			$("#categoryLi").css({"color" : "black"});
			$(".categoryDiv").css({"display" : "none"});
		}
	});

});