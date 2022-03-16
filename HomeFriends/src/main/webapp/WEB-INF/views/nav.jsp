<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav>
	<div id="mainNav">
		<ul class="row navbar list-unstyled" id="mainNavbar">
			<li class="col-sm-3 col-md-2 mainMenu" id="menuStore">
				<ul class="list-unstyled">
					<li onclick="">스토어</li>
					<li class="navSpaceLi"></li>
				</ul>
			</li>
			<li class="col-sm-3 col-md-2 mainMenu" id="menuComm">
				<ul class="list-unstyled">
					<li onclick="">커뮤니티</li>
					<li class="navSpaceLi"></li>
				</ul>		
			</li>
			<li class="col-md-2 mainMenu" id="menuLogin" onclick="">로그인</li>
			<li class="col-md-2 mainMenu" id="menuJoin" onclick="">회원가입</li>
			<li class="col-sm-6 col-md-4 mainMenu" id="menuSearchlist">실시간 검색어 영역</li>
		</ul>
	</div>
	<div id="subNav">
		<ul class="row navbar list-unstyled" id="subNavbar">
			<li class="col-sm-2 col-md-2" id="category" onclick="">
				<ul class="list-unstyled">
					<li onclick="" id="categoryLi">카테고리</li>
					<li class="navSpaceLi"></li>
					<div class="categoryDiv">
						<ul class="list-unstyled categoryUl" id="">
							<li class="detailTitle" id="furniture" onclick="">가구</li>
							<li class="detail" id="sofa" onclick="">소파</li>
							<li class="detail" id="storage" onclick="">수납장</li>
							<li class="detail" id="chair" onclick="">의자</li>
							<li class="detail" id="bed" onclick="">침대</li>
							<li class="detail" id="table" onclick="">테이블</li>
							<li class="detail" id="dresser" onclick="">화장대</li>
						</ul>
						<ul class="list-unstyled categoryUl" id="">
							<li class="detailTitle" id="light" onclick="">조명</li>
							<li class="detail" id="led" onclick="">LED 조명</li>
							<li class="detail" id="short_stand" onclick="">단스텐드</li>
							<li class="detail" id="long_stand" onclick="">장스텐드</li>
							<li class="detail" id="mood" onclick="">무드등</li>
							<li class="detail" id="ceil" onclick="">천장등</li>
							<li class="detail hidden" id="" onclick="">공란</li>
						</ul>
						<ul class="list-unstyled categoryUl" id="">
							<li class="detailTitle" id="bedding" onclick="">침구</li>
							<li class="detail" id="pillow" onclick="">배개</li>
							<li class="detail" id="bedclothes" onclick="">이불</li>
							<li class="detail" id="cover" onclick="">각종 커버</li>
							<li class="detail" id="curtain" onclick="">커튼</li>
							<li class="detail" id="cushion" onclick="">쿠션 & 방석</li>
							<li class="detail hidden" id="" onclick="">공란</li>
						</ul>
						<ul class="list-unstyled categoryUl" id="">
							<li class="detailTitle" id="appliances" onclick="">가전 제품</li>
							<li class="detail" id="fridge" onclick="">냉장고</li>
							<li class="detail" id="tv" onclick="">TV</li>
							<li class="detail" id="washer" onclick="">세탁기</li>
							<li class="detail" id="airconditioner" onclick="">에어컨</li>
							<li class="detail" id="vacuum" onclick="">청소기</li>
							<li class="detail hidden" id="" onclick="">공란</li>
						</ul>
						<ul class="list-unstyled categoryUl" id="">
							<li class="detailTitle" id="kitchen" onclick="">주방 용품</li>
							<li class="detail" id="plate" onclick="">그릇 & 접시</li>
							<li class="detail" id="pan" onclick="">냄비 & 팬</li>
							<li class="detail" id="container" onclick="">보관 용기</li>
							<li class="detail" id="spoon" onclick="">수저</li>
							<li class="detail" id="dryer" onclick="">식기건조대</li>
							<li class="detail" id="cup" onclick="">컵 & 잔</li>
						</ul>
						<ul class="list-unstyled categoryUl" id="dailyUl">
							<li class="detailTitle" id="daily" onclick="">생활 용품</li>
							<li class="detail" id="bath" onclick="">욕실 용품</li>
							<li class="detail" id="towel" onclick="">수건</li>
							<li class="detail" id="cleaning" onclick="">청소 용품</li>
							<li class="detail" id="laundry" onclick="">세탁 용품</li>
							<li class="detail" id="living" onclick="">생활 잡화</li>
							<li class="detail hidden" id="" onclick="">공란</li>
						</ul>
					</div>
				</ul>
			</li>
			<li class="col-sm-2 col-md-2 subMenu" id="best" onclick="">베스트</li>
			<li class="col-md-2 subMenu" id="hotdil" onclick="">핫딜</li>
			<li class="col-md-2 subMenu" id="recommend" onclick="">추천 상품</li>
			<li class="col-sm-2 col-md-2 subMenu" id="like" onclick="">좋아요</li>
			<li class="col-sm-2 col-md-2 subMenu" id="event" onclick="">이벤트</li>
		</ul>
	</div>
	<div id="subNav2">
		<ul class="row navbar list-unstyled" id="subNavbar2">
			<li class="col-sm-2 col-md-2 subMenu" id="community" onclick="">홈 스토리</li>
			<li class="col-sm-2 col-md-2 subMenu" id="following" onclick="">팔로잉</li>
			<li class="col-md-2 subMenu" id="scrab" onclick="">스크랩</li>
			<li class="col-md-2 subMenu" id="QnA" onclick="">질문 &amp; 답변</li>
			<li class="col-sm-2 col-md-2 subMenu"></li>
			<li class="col-sm-2 col-md-2 subMenu"></li>
		</ul>
	</div>
</nav>