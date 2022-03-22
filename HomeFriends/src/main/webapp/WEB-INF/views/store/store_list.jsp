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
	<link href="/controller/css/store/store_list.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/nav.js"></script>
	<script src="/controller/js/home.js"></script>
	<script src="/controller/js/store/store_list.js"></script>
	<script src="/controller/js/footer.js"></script>
	
	<title>store_list</title>
	
</head>
<body>

	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>
	<!-- 본문내용 -->
	<section>
		<div class="row">

			<!-- 좌측 카테고리바 -->
			<div class="store_list_side-bar col-12 col-md-2">
				<div class="accordion accordion-flush" id="accordionFlushExample">
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingOne">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
				        <span class="category_link" id="furniture">가구</span>
				      </button>
				    </h2>
				    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="category_ul">
							<li class="category_link2" id="sofa">소파</li>
							<li class="category_link2" id="storage">수납장</li>
							<li class="category_link2" id="chair">의자</li>
							<li class="category_link2" id="bed">침대</li>
							<li class="category_link2" id="table">테이블</li>
							<li class="category_link2" id="dresser">화장대</li>
						</ul>
				      </div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingTwo">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
				        <span class="category_link" id="light">조명</span>
				      </button>
				    </h2>
				    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="category_ul">
							<li class="category_link2" id="led">LED</li>
							<li class="category_link2" id="short_stand">단스텐드</li>
							<li class="category_link2" id="long_stand">장스텐드</li>
							<li class="category_link2" id="mood">무드등</li>
							<li class="category_link2" id="ceil">천장등</li>
						</ul>
				      </div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingThree">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
				        <span class="category_link" id="bedding">침구</span>
				      </button>
				    </h2>
				    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="category_ul">
							<li class="category_link2" id="pillow">베게</li>
							<li class="category_link2" id="bedclothes">이불</li>
							<li class="category_link2" id="cover">커버</li>
							<li class="category_link2" id="curtain">커튼</li>
							<li class="category_link2" id="cushion">쿠션 & 방석</li>
						</ul>
				      </div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingFour">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
				        <span class="category_link" id="appliances">가전제품</span>
				      </button>
				    </h2>
				    <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="category_ul">
							<li class="category_link2" id="fridge">냉장고</li>
							<li class="category_link2" id="TV">TV</li>
							<li class="category_link2" id="washer">세탁기</li>
							<li class="category_link2" id="airconditioner">에어컨</li>
							<li class="category_link2" id="vacuum">청소기</li>
						</ul>
					</div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingFive">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
				        <span class="category_link" id="kitchen">주방용품</span>
				      </button>
				    </h2>
				    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="category_ul">
							<li class="category_link2" id="plate">그릇 & 접시</li>
							<li class="category_link2" id="pan">냄비 & 프라이팬</li>
							<li class="category_link2" id="container">보관 용기</li>
							<li class="category_link2" id="spoon">수저</li>
							<li class="category_link2" id="dryer">식기건조대</li>
							<li class="category_link2" id="cup">컵</li>
						</ul>
				      </div>
				    </div>
				  </div>
				  <div class="accordion-item">
				    <h2 class="accordion-header" id="flush-headingSix">
				      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
				        <span class="category_link" id="daily">생활용품</span>
				      </button>
				    </h2>
				    <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
				      <div class="accordion-body">
				      	<ul class="category_ul">
							<li class="category_link2" id="bath">욕실</li>
							<li class="category_link2" id="towel">수건</li>
							<li class="category_link2" id="cleaning">청소</li>
							<li class="category_link2" id="laundry">세탁</li>
							<li class="category_link2" id="living">생활잡화</li>
						</ul>
				      </div>
				    </div>
				  </div>
				</div>
			</div>

			<!-- 컨텐츠영역 -->
			<div class="store_list_content col-12 col-md-10">
				<!-- 해당 카테고리 -->
				<div class="shopListTitle">가구</div>
				<!-- 정렬방식 -->
				<!-- home_list에서 가져옴 -->
				<div class="row" id="sectionDiv">
					<ul class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 list_">
						<li>
							<button class="list_btn" onclick="listFn(this)">구매순</button>
						</li>
					</ul>
					<ul class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 list_">
						<li>
							<button class="list_btn" onclick="listFn(this)">별점순</button>
						</li>
					</ul>
					<ul class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 list_">
						<li>
							<button class="list_btn" onclick="listFn(this)">무료배송</button>
						</li>
					</ul>
					<ul class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 list_">
						<li>
							<button class="price_btn">가격지정</button>
						</li>
					</ul>
					<div class="crice_box2" style="width: ">
						
					</div>
					
				</div>
				
				<div id="pricePopup" class="popout popout--prepared popout--axis-1 popout--dir-0 popout--cross-dir-0"
					 data-popout="true">
					<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
						<div class="drop-down-panel" data-panel-title="가격" data-panel-parents="">
							<section class="property-filter-panel-range-control">
								<div class="property-filter-panel-range-control__input-row">
									<span class="property-filter-panel-range-control__input-row__cell">
										<span class="property-filter-panel-range-control__input-row__input-wrap">
											<input id="priceStart" type="text" width="5" placeholder="0" class="numberOnly property-filter-panel-range-control__input-row__input" value="">
										</span>
										<span class="property-filter-panel-range-control__input-row__footer">원</span>
									</span>
									<span class="property-filter-panel-range-control__input-row__separator">~</span>
									<span class="property-filter-panel-range-control__input-row__cell">
										<span class="property-filter-panel-range-control__input-row__input-wrap">
											<input id="priceEnd"  type="text" width="5" placeholder="69,930,000" class="numberOnly property-filter-panel-range-control__input-row__input" value="">
										</span>
										<span class="property-filter-panel-range-control__input-row__footer">원</span>
									</span>
									<button id="priceSelected"  class="property-filter-panel-range-control__input-row__button" type="button">적용</button>
								</div>

							</section>
						</div>
					</div>
				</div>
				
				<!-- 컨텐츠 선택카테고리 물품 -->
				<div id="deal">
					<div class="row shopList">
						<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
							<img src="/controller/image/shop01.webp" class="shopImg" onclick="">
							<div class="shopText" onclick="">
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
							<img src="/controller/image/shop02.webp" class="shopImg" onclick="">
							<div class="shopText" onclick="">
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
							<img src="/controller/image/shop03.webp" class="shopImg" onclick="">
							<div class="shopText" onclick="">
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

						<div class="col-12 col-sm-6 col-md-4 col-lg-4 col-xl-3 shop">
							<img src="/controller/image/shop04.webp" class="shopImg" onclick="">
							<div class="shopText" onclick="">
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