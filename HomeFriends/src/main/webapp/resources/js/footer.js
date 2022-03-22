$(window).scroll(function(){
	if ($(this).scrollTop() > 300){
		$('.Top_btn').css({"visibility" : "visible"});
		$('.Top_btn').show();
	} else{
		$('.Top_btn').hide();
	}
});

function locationFn(type){
	if(type == 'Top'){
		$("html, body").animate({scrollTop: 0},400);
	}
}