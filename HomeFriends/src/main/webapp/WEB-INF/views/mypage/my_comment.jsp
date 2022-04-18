<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Bootstrap icon CSS-->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />

	<title>내가 작성한 댓글 - 홈프렌즈</title>

	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/mypage/my_comment.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/header.js"></script>
	<script src="/controller/js/nav.js"></script>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>
	
	<!-- 본문 영역 -->	
	<section>
	<div class="container-fluid align-items-center" >
		<div class="row">
			<div class="col-12 col-lg-3 mydiv1">
				<div id="mypage_profile_box" class="row">
					<div class="col-3 col-lg-12" id="profile_image">
						<img src="/controller/image/${vo.profile_system}">
					</div>
					<div class="col-9 col-lg-12" id="profile_id">
						<div id="profile_name">
							${vo.nick_name}
						</div>
						<div id="profile_follow">
							<p>팔로워 <strong>100</strong> | 
							   팔로잉 <strong>110</strong></p>
						</div>
						<div id="profile_btn">
							<button onclick="location.href='${pageContext.request.contextPath}/mypage/member_modify.do'">설정</button>
						</div>
					</div>
					<hr>
					<div class="col-12 col-lg-12" id="profile_etc">
						<div class="profile_icon">
							<i class="bi bi-bookmark icon-pointer"></i><br>스크랩<br>
							<strong>10</strong>
						</div>
						<div class="profile_icon">
							<i class="bi bi-heart icon-pointer"></i><br>좋아요<br>
							<strong>20</strong>
						</div> 
					</div>
				</div>
			</div>
<!-- ===============================================================프로필영역================================================================ -->
<!-- ==================================================================================================================================== -->
			<div class="col-12 col-lg-9 mydiv2">
				<div class="mydivtitle mydiv2-2">나의 댓글</div>
				<div class="mydivVacant"></div>
				<c:set var="length" value="${fn:length(Commentlist)}" />
				<c:choose>
					<c:when test="${length eq 0}">
					<div id="mycomment">	
						<div class="row">
							<p class="no">아직 등록된 댓글이 없습니다.</p>
						</div>
					</div>
					</c:when>
					
					<c:when test="${length ne 0}">
						<c:forEach items="${Commentlist}" var="vo" varStatus="cnt">
						<div id="mycomment">	
							<div class="row">
							<div class="col-8">
								<p class="p1">
									<i class="bi bi-chat chat"></i> 
									<a href="/controller/community/home_view.do?cbidx=${vo.cbidx}&nowPage=1#reply_area">${vo.content}</a>
								</p>
								<p class="p2">${vo.title}</p> 
								<p class="p3">
									<strong>${vo.writer}</strong>
									${vo.write_date}&nbsp;&#183; 
									댓글&nbsp;${vo.reply_cnt}&nbsp;&#183; 
									조회&nbsp;${vo.hit_cnt}
								</p>	
							</div>
							<div class="col-4 comment2">
								<a href="/controller/community/home_view.do?cbidx=${vo.cbidx}&nowPage=1"><img src="/controller/image/${vo.img_origin}"></a>
							</div>
							<div class="mydivVacant"></div>
							</div>
						</div>	
						</c:forEach>
					</c:when>
				</c:choose>
			</div>
		</div><!-- row -->
		<br><br><br><br>
	</div><!-- container -->
	</section>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	

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