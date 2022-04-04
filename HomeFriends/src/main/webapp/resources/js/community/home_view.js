$(window).scroll(function(){
	if ($(this).scrollTop() > 700){
		$('.slide_bar').css({"display" : "block"});
		$('.slide_bar_').css({"display" : "block"});
		$('.slide_bar').show();
		$('.slide_bar_').show();
	} else{
		$('.slide_bar').hide();
		$('.slide_bar_').hide();
	}
});

function adjustHeight() {
	var textEle = $('textarea');
	var textSize = $(".reply_input");
	var textForm = $("#replyFrm");
	var textForm2 = $("#reply_Frm");
	textEle[0].style.height = 'auto';
	textSize[0].style.height = 'auto';
	textForm[0].style.height = 'auto';
	var textEleHeight = textEle.prop('scrollHeight');
	textEle.css('height', textEleHeight);
	textEle.css('overflow', 'hidden');
	textSize.css('height', textEleHeight);
	textForm.css('height', textEleHeight);
	textForm2.css('height', textEleHeight);
	
};

var textEle = $('textarea');
textEle.on('keyup', function() {
	adjustHeight();
});
function focusOn(){
	$(".reply_content_input_text").focus();
}

function del(){
	document.delfrm.submit();
}
function replydel(){
	$("#replydelfrm").submit();
}
/*
$(document).ready(function(){
	
	$(".reply_submit").on("click", function(){
		/*
		var formdata = $("form[name='replyFrm']").serialize();
		console.log(formdata)
		
		$.ajax({
			url : "/controller/reply/write",
			type : "post",
			data : formdata,
			success : function(data){
				console.log("success");
				location.reload();
			},
			error : function(data){
				console.log("error");
			}
		});
		
	});
	
});
*/