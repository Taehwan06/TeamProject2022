function searchFn(){
	document.searchFrm.method = "GET";
	document.searchFrm.action = contextPath+"/search.do";
	document.searchFrm.submit();
}

function modalSearchFn(){
	document.modalSearchFrm.method = "GET";
	document.modalSearchFrm.action = contextPath+"/search.do";
	document.modalSearchFrm.submit();
}

function colorFn(obj){
	$(obj).css("color", "white");
	$(".abtn").not(obj).css("color", "black");
	
	$(obj).mouseover(function(){
		$(obj).css("color", "white");
	});

	$(obj).mouseleave(function(){
		$(obj).css("color", "white");
	});
	
	$(".abtn").not(obj).mouseover(function(){
		$(".abtn").not(obj).css("color", "#ffb6c1");
	});

	$(".abtn").not(obj).mouseleave(function(){
		$(".abtn").not(obj).css("color", "black");
	});
}

/*function colorFn2(){
	$("#abtn1").css("color", "black");
	$("#abtn2").css("color", "white");
	
	$("#abtn2").mouseover(function(){
		$("#abtn2").css("color", "white");
	});

	$("#abtn2").mouseleave(function(){
		$("#abtn2").css("color", "white");
	});
	
	$("#abtn1").mouseover(function(){
		$("#abtn1").css("color", "#ffb6c1");
	});

	$("#abtn1").mouseleave(function(){
		$("#abtn1").css("color", "black");
	});
}*/