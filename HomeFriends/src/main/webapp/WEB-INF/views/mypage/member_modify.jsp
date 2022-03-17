<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 부트스트랩 -->
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<title>회원정보수정</title>
	
		
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/mypage/member_modify.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/nav.js"></script>
	<script src="/controller/js/login/join1.js"></script>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %> 
	
	<!-- 본문 영역 -->	
	<section>
	<div class="container">
			<div class="row">
				<div class="col-12 coll-pull-12 coll-md-12 col-lg-12 col-xl-12 member_modiv">
					<div class="membermodiv_title">
						회원정보수정
					</div>
					<div class="withdrawal">
						<a href="#">탈퇴하기</a>
					</div>
					<div id="memberEdit_wrap">
						<form>
							<div class="edit_dummy">
								<div class="Edit edit_member_info">
									이메일<!--<span class="compulsory">*필수항목</span>-->
								</div>
								<div class="Edit edit_member_form">
									<input type="text" id="idInput" value="test123" name="id"> @
									<select name="email_modify" class="emailInput">
										<option value="naver">naver.com</option>
										<option value="hanmail">hanmail.net</option>
										<option value="daum">daum.net</option>
										<option value="gmail">gmail.com</option>
										<option value="nate">nate.com</option>
										<option value="self">직접입력</option>
							<!--직접입력 선택시 input[text]로 변경되게끔 추후 script 작성 필요-->
									</select>
								</div>
							</div>
							<div class="edit_dummy">
								<div class="Edit edit_member_info">
									별명<!--<span class="compulsory">*필수항목</span>-->
								</div>
								<div class="Edit edit_member_form">
									<input type="text" id="nickInput" value="코코story" name="nick_name">
								</div>
							</div>
							<div class="edit_dummy">
								<div class="Edit edit_member_info">
								성별
								</div>
								<div class="Edit edit_member_form radio-wrap">
									<input type="radio" name="gender" value="woman">&nbsp;&nbsp;여성&nbsp;&nbsp;
									<input type="radio" name="gender" value="man">&nbsp;&nbsp;남성&nbsp;&nbsp;
									<input type="radio" name="gender" value="nothing" checked>&nbsp;선택 안 함
								</div>
							</div>
							<div class="edit_dummy">
								<div class="Edit edit_member_info">
									연락처
								</div>
								<div class="Edit edit_member_form">
									<select name="phone1" id="phone1" class="phoneInput">
										<option value="010">010</option>
										<option value="010">011</option>
										<option value="010">016</option>
									</select>
									<input type="text" class="phoneInput" name="phone2" id="phone2" maxlength="4">
									<input type="text" class="phoneInput" name="phone3" id="phone3" maxlength="4">
								</div>
							</div>
							<div class="edit_dummy">
								<div class="Edit edit_member_info imageDiv">
									프로필 이미지
								</div>
								<div class="Edit edit_member_form imageDiv">
									<img src="/controller/image/picture.PNG" width="180px">
									<!--클릭시 이미지 첨부 가능한 버튼으로 바꿔야함-->
								</div>
							</div>
							<div class="memberEditSubmit">
								<input type="submit" value="회원 정보 수정">
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	
	</section>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/controller/js/login/join2.js"></script>

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