function impossible(type){

	var span = document.getElementById("impossibleSpan");
	var span2 = document.getElementById("impossibleSpan2");
	
	if(type == 'email'){
		span.style.color = "red";	
		span.style.visibility = "visible";
			
	}else if(type == 'birth'){
		span2.style.color = "red";	
		span2.style.visibility = "visible";
		
	}

}

function guide(type){
	var guideSpan = document.getElementById("guideSpan");
	var guideSpan2 = document.getElementById("guideSpan2");
	
	var nickInput = document.getElementById("nickInput").value;
	var phone2 = document.getElementById("phone2").value;
	var phone3 = document.getElementById("phone3").value;
	
	if(type == 'nickname'){
		if(nickInput.length < 3){
			guideSpan.innerHTML = "공백,특수문자 제외 3자리 이상 입력하세요";
			guideSpan.style.color = "red";
			guideSpan.style.visibility = "visible";
		}else if(nickInput.length > 20){
			guideSpan.innerHTML = "20자리 이하로 입력하세요";
			guideSpan.style.color = "red";
			guideSpan.style.visibility = "visible";	
		}else{
			guideSpan.style.visibility = "hidden";
		}
		
	}else if(type == 'phone'){
		if((phone2.length <4) || (phone3.length <4)){
			guideSpan2.innerHTML = "4자리만 입력할 수 있습니다";
			guideSpan2.style.color = "red";
			guideSpan2.style.visibility = "visible";
		}else if((phone2.length == 4) && (phone3.length == 4)){
			guideSpan2.style.visibility = "hidden";
		}
		
		
	}
	
	
}

function checkForm() {
	var nickInput = document.getElementById("nickInput").value;
	var phone2 = document.getElementById("phone2").value;
	var phone3 = document.getElementById("phone3").value;
	
	if(nickInput == '' || phone2 == '' ||phone3 == ''){
		alert("값을 입력하세요");
		return false;
	}else{
		alert("회원정보가 수정되었습니다");
		return ture;
	}
	
}
	
/* 이미지 업로드 */



function imageFn(){
	var result = true;

	var value = document.getElementById("imgUpload").value;
	var info = document.getElementById("imgUploadInfo");
	
	if(value == ""){
		result = false;
		info.style.visibility = "visible";
	}else{
		info.style.visibility = "hidden";
	}

	if(result){
		var img_style = $("#imgArea").attr("style");
		img_style= img_style.replace(/\+/g,"%2B");
		
		$.ajax({
			type : "POST",
			url : "store_insert.do",
			data : $("#insertFrm").serialize()+"&img_style="+img_style,
			success : function(res) {
				
				console.log(res);
				if(res>0){
					alert("상품이 등록되었습니다.");
					location.href="store.do";
				}else{
					alert("실행오류");
				}
			}
		});
	}
}


$(function() {
	$("#imgUpload").on("change", function(){
	readURL(this);
	});
});
function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function (e) {
			$("#imgArea").css("background-color", "none");
			$("#imgArea").css("background-image", "url('"+e.target.result+"')");
			$("#imgText").css("display", "none");
			$("#imgButton").css("display", "none");
		}
		reader.readAsDataURL(input.files[0]);
	}
}
























