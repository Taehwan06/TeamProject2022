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
    
	<title>스토어</title>
	
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/home.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<link href="/controller/css/store/store.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/nav.js"></script>
	<script src="/controller/js/home.js"></script>
	<script src="/controller/js/store/store.js"></script>
	<script src="/controller/js/footer.js"></script>
	
	
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>
	<!-- 본문내용 -->
	<button class="write_btn">
		상품등록
	</button>
	<section>
		<div class="content_right">
			<button class="write_btn_">
				상품등록
			</button>
		</div>
		<!-- 이벤트 베너 -->
		<div class="row">
			<img class="col-12" src="/controller/image/store_vn_image.png">
		</div>

		<!-- 상품 카테고리 -->
		<div class="row category">
			<div id="furniture" class="category_link col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2">
				<div class="img_box">
					<img class="category_img" src="/controller/image/furniture.png"><br>
				</div>
					가구
				
			</div>
			<div id="bedding" class="category_link col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2">
				<div class="img_box">
					<img class="category_img" src="/controller/image/bedding.png"><br>
				</div>
				침구
			</div>
			<div id="appliances" class="category_link col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2">
				<div class="img_box">
					<img id="big_img" class="category_img" src="/controller/image/appliances.png"><br>
				</div>
				가전
			</div>
			<div id="light" class="category_link col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2">
				<div class="img_box">
					<img class="category_img" src="/controller/image/light.png"><br>
				</div>
				조명
			</div>
			<div id="kitchen" class="category_link col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2">
				<div class="img_box">
					<img class="category_img" src="/controller/image/kitchen.png"><br>
				</div>
				주방
			</div>
			<div id="daily" class="category_link col-4 col-sm-2 col-md-2 col-lg-2 col-xl-2">
				<div class="img_box">
					<img class="category_img" src="/controller/image/daily.png"><br>
				</div>
				생활
			</div>

		</div>

		<!-- 컨텐츠 오늘의 딜 -->
		<div id="deal">
			<div class="row shopList">
				<div class="storyListTitle">
		        오늘의 딜
			        <span class="moreview" onclick="location.href=''">더보기</span>
			        <div class="clear"></div>
		        </div>
				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop01.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">코코도르</div>
							(1+1) 코코도르 인기 디퓨저 14종
						</div>
						<div class="shopPrice">
							<span class="red">72%</span> 10,900
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.7</b> <span class="gray">리뷰 7,391</span>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop02.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">픽켄드</div>
							[10%쿠폰/단독컬러] 정말정말 부드러운 두부이불 차렵이불 세트(SS/Q)
						</div>
						<div class="shopPrice">
							<span class="red">47%</span> 46,700
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.7</b> <span class="gray">리뷰 2,732</span>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop03.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">미닉스</div>
							[2만쿠폰] 미닉스 미니건조기
						</div>
						<div class="shopPrice">
							<span class="red">31%</span> 319,000
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.8</b> <span class="gray">리뷰 4,432</span>
					</div>
				</div>

				<div id="mdlg_display_none" class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop04.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">노와</div>
							독일IH 쿡웨어 7P세트 외 주방용품 베스트 모음전
						</div>
						<div class="shopPrice">
							<span class="red">76%</span> 68,900 외
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.6</b> <span class="gray">리뷰 6,568</span>
					</div>
				</div>
			</div>
		</div>

		<!-- 컨텐츠 베스트 상품 -->
		<div id="deal">
			<div class="row shopList">
				<div class="storyListTitle">
		        Bast
			        <span class="moreview" onclick="location.href=''">더보기</span>
			        <div class="clear"></div>
		        </div>
				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop01.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">코코도르</div>
							(1+1) 코코도르 인기 디퓨저 14종
						</div>
						<div class="shopPrice">
							<span class="red"></span> 10,900
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.7</b> <span class="gray">리뷰 7,391</span>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop02.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">픽켄드</div>
							[10%쿠폰/단독컬러] 정말정말 부드러운 두부이불 차렵이불 세트(SS/Q)
						</div>
						<div class="shopPrice">
							<span class="red"></span> 46,700
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.7</b> <span class="gray">리뷰 2,732</span>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop03.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">미닉스</div>
							[2만쿠폰] 미닉스 미니건조기
						</div>
						<div class="shopPrice">
							<span class="red"></span> 319,000
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.8</b> <span class="gray">리뷰 4,432</span>
					</div>
				</div>

				<div id="mdlg_display_none" class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop04.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">노와</div>
							독일IH 쿡웨어 7P세트 외 주방용품 베스트 모음전
						</div>
						<div class="shopPrice">
							<span class="red"></span> 68,900 외
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.6</b> <span class="gray">리뷰 6,568</span>
					</div>
				</div>
			</div>
		</div>

		<!-- 컨텐츠 추천 상품 -->
		<div id="deal">
			<div class="row shopList">
				<div class="storyListTitle">
		        추천상품
			        <span class="moreview" onclick="location.href=''">더보기</span>
			        <div class="clear"></div>
		        </div>
				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop01.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">코코도르</div>
							(1+1) 코코도르 인기 디퓨저 14종
						</div>
						<div class="shopPrice">
							<span class="red"></span> 10,900
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.7</b> <span class="gray">리뷰 7,391</span>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop02.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">픽켄드</div>
							[10%쿠폰/단독컬러] 정말정말 부드러운 두부이불 차렵이불 세트(SS/Q)
						</div>
						<div class="shopPrice">
							<span class="red"></span> 46,700
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.7</b> <span class="gray">리뷰 2,732</span>
					</div>
				</div>

				<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop03.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">미닉스</div>
							[2만쿠폰] 미닉스 미니건조기
						</div>
						<div class="shopPrice">
							<span class="red"></span> 319,000
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.8</b> <span class="gray">리뷰 4,432</span>
					</div>
				</div>

				<div id="mdlg_display_none" class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
					<img src="/controller/image/shop04.webp" class="shopImg" onClick="">
					<div class="shopText" onClick="">
						<div class="shopTitle">
							<div class="brand">노와</div>
							독일IH 쿡웨어 7P세트 외 주방용품 베스트 모음전
						</div>
						<div class="shopPrice">
							<span class="red"></span> 68,900 외
						</div>
						<span class="sky">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
								<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
						</span>
						<b>4.6</b> <span class="gray">리뷰 6,568</span>
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