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
	
	<title>홈프렌즈 커뮤니티 상세보기 페이지 입니다.</title>
	
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/home.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<link href="/controller/css/community/home_story.css" rel="stylesheet">
	<script src="/controller/js/community/home_story.js"></script>
	
	<style>
		.MainImg img{
			width : 100%;
			height : 60vh;
			object-fit: cover;
		}
		section{
			max-width : 1560px;
			margin : auto;
		}
		.comm_area{
			margin-top : 50px;
			width : 100%;
		}
		.comm_category{
			color : gray;
			font-weight : 500;
		}
		.comm_title{
			margin-top : 10px;
			font-size : 30px;
			font-weight : bold;
		}
		.storyWriter{
			margin-top : 10px;
		}
		.profile{
			position : relative;
			display : inline-block;
			font-size : 12px;
			padding-left : 60px;
			line-height : 21px;
		}
		.profile_img{
			position : absolute;
			display : block;
			left : 0;
			width : 50px;
			height : 50px;
			
		}
		.writerImg{
			width : 100%;
			height : 100%;
		}
		.profile_name{
			font-weight : bold;
		}
		.writedate{
			color : gray;
			font-weight : 500;
		}
		.follow_btn{
			margin-top : auto;
			margin-bottom : auto;
			text-align : right;
			padding : 0;
		}
		.follow_btn button{
			background : #ffb6c1;
			color : white;
			border : none;
			border-radius : 5px;
			font-size : 14px;
			font-weight : bold;
			width : 90px;
			height : 36px;
		}
		.content_area{
			margin-top : 100px;
		}
		.content_img div{
			margin-top : 20px;
			margin-bottom : 10px;
			font-size : 24px;
			font-weight : bold;
		}
		.content_img img{
			margin-top : 10px;
			margin-bottom : 10px;
		}
	</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>
	
	<!-- 본문 영역 -->
	<div class="row MainImg">
		<img src="/controller/image/story06.png">
	</div>
	<section id="story_area">
		<div class="row comm_area">
			<div class="col-sm-1 col-md-2 col-xg-3 col-xl-3 hidden_area"></div>
			<div class="row col-12 col-sm-10 col-md-8 col-xg-6 col-xl-6">
				<div class="comm_category">홈 스토리</div>
				<div class="comm_title">눈길 닿는 곳마다 포토존! 디자이너 부부의 감각적인 집</div>
				<div class="col-xl-5 storyWriter">
					<div class="profile">
						<div class="profile_img">
							<img class="writerImg" src="/controller/image/karina.png">
						</div>
						<div class="profile_name">
							Karina
						</div>
						<div class="writedate">
							2022년 3월 21일
						</div>
					</div>
				</div>
				<div class="col-xl-4 hidden_area">
				</div>
				<div class="col-xl-3 follow_btn">
					<button>+ 팔로우</button>
				</div>
			</div>
			<div class="col-sm-1 col-md-2 col-xg-3 col-xl-3"></div>
		</div>
		<div class="row content_area">
			<div class="col-sm-1 col-md-2 col-xg-3 col-xl-3 hidden_area"></div>
			<div class="row col-12 col-sm-10 col-md-8 col-xg-6 col-xl-6 content_img">
				<div>
					거실
				</div>
				<img src="/controller/image/home_view01.webp">
				<div>
					주방
				</div>
				<img src="/controller/image/home_view02.webp">
				<img src="/controller/image/home_view03.webp">
				<div>
					침실
				</div>
				<img src="/controller/image/home_view04.webp">
				<div id="footer_img_">
					<img src="/controller/image/footer_img.PNG">
				</div>
			</div>
			<div class="col-xl-3 hidden_area">
				
			</div>
		</div>
	</section>
</body>
</html>