$(document).ready( function(){
	//카테고리 클릭시 페이지 이동
	$(".category_link").click(function(){
		var id = $(this).attr('id');
		location.href = 'store_list.jsp?searchType='+id;
	});
});