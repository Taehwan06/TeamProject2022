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
	
	<title>홈프렌즈 커뮤니티 메인 페이지 입니다. </title>
		
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/home.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<link href="/controller/css/community/home_story.css" rel="stylesheet">
	<script src="/controller/js/community/home_story.js"></script>
		
	</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>
	
	<!-- 본문 영역 -->
	<section id="story_area">
		<div class="row" id="storyimg">
			<div class="col-sm-9 col-md-9 col-xg-9 col-xl-9" id="storyimg_area">
				<div id="absolute_">
					<div id="story_title">보편적인 K-아파트</div>
					<div id="profile">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
				</div>
				<div id="btn_absolute">
					<button>보러가기</button>
				</div>
			</div>
			<div class="col-sm-3 col-md-3 col-xg-3 col-xl-3" id="slide_area">
			
				<!-- 캐러셀 영역 -->
				<!-- ====================================================================================== -->
				<div id="carouselExampleIndicators" class="carousel slide mainCarousel carousel-fade" data-bs-ride="carousel">
					<div class="carousel-indicators">
							
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active pt10" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" class="pt10" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" class="pt10" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" class="pt10" aria-label="Slide 4"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" class="pt10" aria-label="Slide 5"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" class="pt10" aria-label="Slide 6"></button>
						
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/controller/image/slide01.webp" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/controller/image/slide02.webp" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/controller/image/slide03.webp" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/controller/image/slide04.webp" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/controller/image/slide05.webp" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/controller/image/slide06.webp" class="d-block w-100" alt="...">
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 오늘의 스토리 영역 -->
		<!-- ====================================================================================== -->
		<!-- ====================================================================================== -->
		<div class="row storyList">
			<div class="storyListTitle" onclick="location.href='home_list.do'">오늘의 스토리</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story">
				<img src="/controller/image/story01.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">맥시멀리스트의 싱글라이프</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/karina.png">Karina
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story">
				<img src="/controller/image/story03.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">넓은 거실이 있는 30평대 신혼집</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/iu.png">IU
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story hiddenStory">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
				</div>
			</div>
		</div>
		
		<div class="row storyList">
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story">
				<img src="/controller/image/story01.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">맥시멀리스트의 싱글라이프</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/karina.png">Karina
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story">
				<img src="/controller/image/story03.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">넓은 거실이 있는 30평대 신혼집</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/iu.png">IU
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 story hiddenStory">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="../footer.jsp" %>
	<!-- 부트스트랩 -->	

	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	-->
</body>
</html>