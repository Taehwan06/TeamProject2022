function searchFn(){
	document.searchFrm.method = "POST";
	document.searchFrm.action = "/controller/search.do";
	document.searchFrm.submit();
}