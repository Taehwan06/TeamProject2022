$(document).ready( function(){
	$("#priceSelected").on('click', function() {
		var start = $("#priceStart").val()*1;
		var end = $("#priceEnd").val()*1;
		if (start < 0) {start = 0};
		if (end <= 0) end = 10**9;	// 대충 있을것같지 않은 최대치 가격
		alert(start+" ~ "+end);
	});
	
	$(".category_link").click(function(){
		var id = $(this).attr('id');
		location.href = 'store_list.jsp?searchType='+id;
	});
	//searchType이름 변경할것 DB컬럼으로
	$(".category_link2").click(function(){
		var id = $(this).attr('id');
		location.href = 'store_list.jsp?searchType2='+id;
	});

	
	//가격범위
	textchange = false;
	console.log($(".price_btn"));
	$(".price_btn").click(function(){
	  	if(textchange){
	      textchange = false;
	      $("#pricePopup").hide();
	      $(this).css({"background" : "none", "color" : "black"});
	    }else{
	      textchange = true;
	      $(this).css({"background" : "#ffb6c1", "color" : "white"});
			$("#pricePopup").show();
	    }
	})
	
	//가격 인풋에 숫자만 입력가능
	$(".numberOnly").on("keyup", function() {
    	$(this).val($(this).val().replace(/[^0-9]/g,""));
    });
	
});
//home_list에서 가져옴 
//정렬방식 클릭시 색상변경
function listFn(e){
	$(".list_btn").css({"background" : "none", "color" : "black"});
	$(e).css({"background" : "#ffb6c1", "color" : "white"});
}