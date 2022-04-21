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
