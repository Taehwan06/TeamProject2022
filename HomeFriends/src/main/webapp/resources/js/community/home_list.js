function listFn(e){
	if(e == 'recent'){
		location.href="home_list.do?&sort=recent"
		$(".list_btn").css({"background" : "none", "color" : "black"});
		$("#recent").css({"background" : "#ffb6c1", "color" : "white"});
	}else if(e == 'view'){
		$(".list_btn").css({"background" : "none", "color" : "black"});
		$("#view").css({"background" : "#ffb6c1", "color" : "white"});
		location.href="home_list.do?&sort=view"
	}else{
		$(".list_btn").css({"background" : "none", "color" : "black"});
		$("#scrap").css({"background" : "#ffb6c1", "color" : "white"});
		location.href="home_list.do?&sort=scrap"
	}
}
function writeFn(){
	alert("로그인 후 이용 가능합니다.");
	location.href='home_insert.do';
}
$(document).ready(function(){
	if(sort == "recent"){
		$(".list_btn").css({"background" : "none", "color" : "black"});
		$("#recent").css({"background" : "#ffb6c1", "color" : "white"});
	}else if(sort == 'view'){
		$(".list_btn").css({"background" : "none", "color" : "black"});
		$("#view").css({"background" : "#ffb6c1", "color" : "white"});
	}else if(sort == "scrap"){
		$(".list_btn").css({"background" : "none", "color" : "black"});
		$("#scrap").css({"background" : "#ffb6c1", "color" : "white"});
	}
	/* 스토어 서브 네비 */
	/*========================================================================*/
	$("#menuStore").mouseover(function(){
		$("#menuComm").css({"color" : "#ffb6c1"});
		if($(window).width()>751){
			$("#subNav").css({"display" : "block"});
			$("#subNav2").css({"display" : "none"});
		}
	});
	
	$("header").mouseover(function(){
		if($(window).width()>751){
			$("#subNav2").css({"display" : "block"});
			$("#subNav").css({"display" : "none"});
		}
	});
	
	$("#menuLogin").mouseover(function(){
		$("#subNav2").css({"display" : "none"});
	});
	
	$("#menuLogin").mouseleave(function(){
		if($(window).width()>751){
			$("#subNav2").css({"display" : "block"});
		}
	});
	
	$("#menuJoin").mouseover(function(){
		$("#subNav2").css({"display" : "none"});
	});
	
	$("#menuJoin").mouseleave(function(){
		if($(window).width()>751){
			$("#subNav2").css({"display" : "block"});
		}
	});
	
	$("#menuSearchlist").mouseover(function(){
		$("#subNav2").css({"display" : "none"});
	});
	
	$("#menuSearchlist").mouseleave(function(){
		if($(window).width()>751){
			$("#subNav2").css({"display" : "block"});
		}
	});
	
	/* 커뮤니티 서브네비 */
	/*========================================================================*/
	$("#menuComm").mouseover(function(){
		$("#menuComm").css({"color" : "#ffb6c1"});
		if($(window).width()>751){
			$("#subNav").css({"display" : "none"});
			$("#subNav2").css({"display" : "block"});
		}else{
			$("#subNav").css({"display" : "none"});
			$("#subNav2").css({"display" : "none"});
		}
	});

	$("#subNav").mouseover(function(){
		if($(window).width()>751){
			$("#menuStore").css({"color" : "#ffb6c1"});
		}
	});

	$("#subNav").mouseleave(function(){
		$("#menuStore").css({"color" : "black"});
		$("#menuComm").css({"color" : "#ffb6c1"});
		$("#subNav").css({"display" : "none"});
		$("#subNav2").css({"display" : "block"});
	});
	
	/* 카테고리 */
	/*========================================================================*/
	
	$("#category").mouseover(function(){
		$("#categoryLi").css({"color" : "#ffb6c1"});
		if($(window).width()>751){
			$(".categoryDiv").css({"display" : "block"});
		}
	});

	$("#category").mouseleave(function(){
		$("#categoryLi").css({"color" : "black"});
		$(".categoryDiv").css({"display" : "none"});
		
	});

	$(".categoryDiv").mouseover(function(){
		if($(window).width()>751){
			$("#categoryLi").css({"color" : "#ffb6c1"});
			$(".categoryDiv").css({"display" : "block"});
		}
	});

	$(".categoryDiv").mouseleave(function(){
		$("#categoryLi").css({"color" : "black"});
		$(".categoryDiv").css({"display" : "none"});
	});
});	

$(window).resize(function() {
	if($(window).width()<751 && $(window).width()>576){
			$("#subNav").css({"display" : "none"});
			$("#subNav2").css({"display" : "none"});
	}
});
