<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- 부트스트랩 -->
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<title>에디터 테스트</title>
	
	
	<!-- 부트스트랩 -->
	<!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	-->
	
	
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/home.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/nav.js"></script>
	<script src="/controller/js/footer.js"></script>
	
	
	<!-- 썸머노트 -->
	<script src="/controller/js/summernote/summernote-lite.js"></script>
	<script src="/controller/js/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="/controller/css/summernote/summernote-lite.css">
	
	<style>
		.dropdown-toggle::after {
			display:none;
		}
		.center{
			text-align: center;
			margin-top: 50px;
		}
		#imgArea{
			height: 500px;
			width: 500px;
			margin-right: auto;
			margin-left: auto;
			background-color: #eeeeee;
			cursor: pointer;
			text-align: center;
			background-size: cover;
		}
		#imgText{
			display: inline-block;
			padding-top: 250px;
			font-size: 20px;
			font-weight: bold;
			color: #747474;
			margin-bottom: 30px;
			cursor: pointer;
		}
		#imgButton{
			display: inline-block;
			width: 200px;
			height: 50px;
			padding: 13px;
			border: none;
			background-color: #747474;
			border-radius: 5px;
			color: white;
			font-weight: bold;
			cursor: pointer;
		}
		#imgUpload{
			visibility: hidden;
		}
		#imgUploadInfo{
			width: 500px;
			margin-right: auto;
			margin-left: auto;
		}
		#titleArea{
					
		}
		#title{
			width: 100%;
			height: 65px;
			border: none;
			padding: 10px 20px;
			border-radius: 10px;
			font-size: 25px;
		}
		#title:focus{
			outline: 2px solid #ffb6c1;
		}
		#title::placeholder{
			font-weight: bold;
			font-size: 25px;
			color: lightgray;
		}
		#titleInfo, #contentInfo, #imgUploadInfo{
			border-top: 2px solid red;
			padding: 10px 20px;
			margin-bottom: 20px;
			color: red;
			font-weight: bold;
			visibility: visible;
		}
		#summernote::placeholder{
			font-weight: bold;
			font-size: 20px;
			color: lightgray;
		}
		#butttonArea{
			text-align: right;
			margin-bottom: 50px;
		}
		#submitButton, #calcelButton{
			border: 2px solid #ffb6c1;
			border-radius: 5px;
			width: 150px;
			height: 50px;
			margin: 10px;
			background-color: white;
			font-size: 20px;
			font-weight: bold;
			color: #ffb6c1;
		}
		#submitButton:hover, #calcelButton:hover{
			background-color: #ffb6c1;
			color: white;
		}
		
		
	</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>

	<!-- 본문 영역 -->
	<section>
		
		<form id="insertFrm" name="insertFrm" method="post">
			<iuput type="hidden" name="midx" value="">
			
			<div class="center">
				<label for="imgUpload" id="imgLabel">
					<div id="imgArea">
						<label for="imgUpload" id="imgLabel">
							<span id="imgText">커버 사진을 추가해주세요.<br>(1:1 비율 권장)</span>
						</label><br>
						<label for="imgUpload" id="imgLabel">
							<span id="imgButton">커버 사진 등록</span>
						</label>
					</div>
				</label>
			</div>
			
			<div id="imgUploadInfo">필수 입력 항목입니다.</div>
			<div id="imgUploadArea">
				<input type="file" id="imgUpload" name="imgUpload">
			</div>
			
			<div id="titleArea">
				<input type="text" id="title" name="title" placeholder="제목을 입력해주세요.">
				<div id="titleInfo">필수 입력 항목입니다.</div>
			</div>
			
			<textarea id="summernote" name="content"></textarea>
			<div id="contentInfo">필수 입력 항목입니다.</div>
			
			<div id="butttonArea">
				<input type="button" id="submitButton" value="저장" onclick="">
				<input type="button" id="calcelButton" value="취소" onclick="">
			</div>
		</form>
		
	</section>
	
	<script>
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
	</script>

	<script>
		$(document).ready(function() {
			//여기 아래 부분
			$('#summernote').summernote({
				height: 300,                 // 에디터 높이
				minHeight: null,             // 최소 높이
				maxHeight: null,             // 최대 높이
				focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
				lang: "ko-KR",					// 한글 설정
				placeholder: '내용을 입력해주세요.',	//placeholder 설정
				
				 toolbar: [
					    // [groupName, [list of button]]
					    ['fontname', ['fontname']],
					    ['fontsize', ['fontsize']],
					    ['style', ['bold', 'italic', 'underline','strikethrough']],
					    ['color', ['forecolor','color']],
					    ['para', ['paragraph']],
					    ['height', ['height']],
					    ['insert',['picture']]
					  ],
					fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
					fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
				
				
			});
			  
		});
	</script>
	
	<%@ include file="../footer.jsp" %>
	
</body>
</html>
