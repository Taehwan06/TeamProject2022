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
	
	<title>상품 등록 - Home Friends</title>
	
	
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
	<link href="/controller/css/community/home_insert.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/nav.js"></script>
	<script src="/controller/js/footer.js"></script>
	<script src="/controller/js/community/home_insert.js"></script>
	
	
	<!-- 썸머노트 -->
	<script src="/controller/js/summernote/summernote-lite.js"></script>
	<script src="/controller/js/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="/controller/css/summernote/summernote-lite.css">
	

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
			
			<div id="productNameArea">
				<input type="text" id="productName" name="productName" placeholder="상품명을 입력해주세요.">
				<div id="productNameInfo">필수 입력 항목입니다.</div>
			</div>
			
			<div id="originPriceArea">
				<input type="text" id="originPrice" name="originPrice" placeholder="할인 전 가격을 입력해주세요.">
				<div id="originPriceInfo">필수 입력 항목입니다.</div>
			</div>
			
			<div id="salePriceArea">
				<input type="text" id="salePrice" name="salePrice" placeholder="할인 후 판매 가격을 입력해주세요.">
				<div id="salePriceInfo">필수 입력 항목입니다.</div>
			</div>
			
			<div id="discountArea">
				<input type="text" id="discount" name="discount" placeholder="할인율을 입력해주세요.">	
			</div>
			
			<div id="brandArea">
				<input type="text" id="brand" name="brand" placeholder="브랜드를 입력해주세요.">
			</div>
			
			<div id="deliveryChargeArea">
				<input type="text" id="deliveryCharge" name="deliveryCharge" placeholder="배송비를 입력해주세요.">
				<div id="deliveryChargeInfo">필수 입력 항목입니다.</div>
			</div>
			
			<div id="freeDeliveryArea">
				<input type="radio" id="freeDelivery" name="freeDelivery" class="freeDelivery">무료배송
				<input type="radio" id="freeDelivery" name="freeDelivery" class="freeDelivery">유료배송
				<div id="freeDeliveryInfo">필수 입력 항목입니다.</div>
			</div>
			
			<div id="freeDeliveryArea">
				<input type="radio" id="freeDelivery" name="freeDelivery" class="freeDelivery">무료배송
				<input type="radio" id="freeDelivery" name="freeDelivery" class="freeDelivery">유료배송
				<div id="freeDeliveryInfo">필수 입력 항목입니다.</div>
			</div>
			
			<div id="deliveryChargeArea">
				<input type="text" id="deliveryCharge" name="deliveryCharge" placeholder="배송비를 입력해주세요.">
				<div id="deliveryChargeInfo">필수 입력 항목입니다.</div>
			</div>
			
			
			
			
			
			
			<textarea id="summernote" name="content"></textarea>
			<div id="contentInfo">필수 입력 항목입니다.</div>
			
			<div id="butttonArea">
				<input type="button" id="submitButton" value="저장" onclick="submitFn()">
				<input type="button" id="calcelButton" value="취소" onclick="">
			</div>
		</form>
		
	</section>
	
	<%@ include file="../footer.jsp" %>
	
</body>
</html>
