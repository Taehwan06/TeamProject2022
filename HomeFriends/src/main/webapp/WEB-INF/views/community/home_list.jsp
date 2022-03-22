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
	
	<title>홈프렌즈 커뮤니티 목록 페이지 입니다.</title>
	
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/home.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<link href="/controller/css/community/home_list.css" rel="stylesheet">
	<script src="/controller/js/community/home_list.js"></script>
	<script src="/controller/js/footer.js"></script>

</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>
	
	<!-- 본문 영역 -->
	<section id="Community_area">
		<div class="row" id="sectionDiv">
			<div class="col-2 col-sm-2 col-md-2 col-lg-1 col-xl-1 list_"><button class="list_btn" onclick="listFn(this)" id="recent">최신글</button></div>
			<div class="col-2 col-sm-2 col-md-2 col-lg-1 col-xl-1 list_"> <button class="list_btn" onclick="listFn(this)">조회수</button></div>
			<div class="col-2 col-sm-2 col-md-2 col-lg-1 col-xl-1 list_"><button class="list_btn" onclick="listFn(this)">좋아요</button></div>
		</div>
		<div class="row" id="sectionDiv">
			<div class="col-4 col-sm-2 col-md-2 list_all">전체6,138</div>
		</div>
		<div class="row storyList">
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
					<div class="likeyView">
						좋아요56 &middot; 조회3,818 
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story01.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">맥시멀리스트의 싱글라이프</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/karina.png">Karina
					</div>
					<div class="likeyView">
						좋아요129 &middot; 조회3,101
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story03.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">넓은 거실이 있는 30평대 신혼집</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/iu.png">IU
					</div>
					<div class="likeyView">
						좋아요70 &middot; 조회3,196 
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story hiddenStory">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
					<div class="likeyView">
						좋아요56 &middot; 조회3,818 
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story01.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">맥시멀리스트의 싱글라이프</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/karina.png">Karina
					</div>
					<div class="likeyView">
						좋아요129 &middot; 조회3,101
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story03.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">넓은 거실이 있는 30평대 신혼집</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/iu.png">IU
					</div>
					<div class="likeyView">
						좋아요70 &middot; 조회3,196  
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story hiddenStory">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
					<div class="likeyView">
						좋아요56 &middot; 조회3,818 
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story01.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">맥시멀리스트의 싱글라이프</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/karina.png">Karina
					</div>
					<div class="likeyView">
						좋아요129 &middot; 조회3,101
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story03.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">넓은 거실이 있는 30평대 신혼집</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/iu.png">IU
					</div>
					<div class="likeyView">
						좋아요70 &middot; 조회3,196  
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story hiddenStory">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
					<div class="likeyView">
						좋아요56 &middot; 조회3,818 
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story01.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">맥시멀리스트의 싱글라이프</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/karina.png">Karina
					</div>
					<div class="likeyView">
						좋아요129 &middot; 조회3,101
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story03.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">넓은 거실이 있는 30평대 신혼집</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/iu.png">IU
					</div>
					<div class="likeyView">
						좋아요70 &middot; 조회3,196  
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story hiddenStory">
				<img src="/controller/image/story02.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">내추럴 모던 홈 스타일링</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/winter.png">Winter
					</div>
					<div class="likeyView">
						좋아요56 &middot; 조회3,818 
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story01.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">맥시멀리스트의 싱글라이프</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/karina.png">Karina
					</div>
					<div class="likeyView">
						좋아요129 &middot; 조회3,101
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-4 story">
				<img src="/controller/image/story03.webp" class="storyImg" onclick="">
				<div class="storyText" onclick="">
					<div class="storyTitle">넓은 거실이 있는 30평대 신혼집</div>
					<div class="storyWriter">
						<img class="writerImg" src="/controller/image/iu.png">IU
					</div>
					<div class="likeyView">
						좋아요70 &middot; 조회3,196  
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