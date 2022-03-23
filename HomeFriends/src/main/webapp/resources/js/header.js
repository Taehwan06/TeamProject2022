function searchFn(){
	document.searchFrm.method = "get";
	document.searchFrm.action = "/controller/search_result.do";
	document.searchFrm.submit();
}