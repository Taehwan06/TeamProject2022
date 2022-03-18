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
	<!-- <link href="/controller/css/store/store.css" rel="stylesheet"> -->
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/nav.js"></script>
	<script src="/controller/js/home.js"></script>
	<!-- <script src="/controller/js/store/store.js"></script> -->
	<style>
		/* 본문 CSS */
   		/*========================================================================*/
   		/*========================================================================*/
   		/*========================================================================*/
   		
   		/*임시*/
		/* div{
			border: 1px solid black;
		} */
		
		.basket_content *{
			padding:0;
			margin:0;
			font-size: 0.8em;
		}
		
   		.basket_content{
   			min-height: 700px;
   			max-width: 1560px;
   			margin:auto;
   		}
   		
   		.no_list{
			margin:0;
			padding:0;
			list-style: none;
		}
		
   		.basket_content .product_image{
   			width: 70%;
   		}

   		
		.checkbox_all{
			z-index: 30;
			width: 100%;
			height:30px;
		}
		.content_middle{
			margin:auto;
			margin-top: 20%;
		}
		.text_center{
			text-align: center;
		}
		.basket_content li{
			position: relative;
		}
		.absolute_center{
			position: absolute;
			top: 20%;
			left: 9%;
		}
		.margin_tb10{
			margin-top: 10px;
			margin-bottom: 10px;
		}
		.text_middle{
			vertical-align: middle;
		}
		.content_box{
			border:1px solid #ffb6c1; 
			border-radius: 20px; 
			padding: 20px; 
			margin-bottom: 100px;
		}
		.page_title{
			font-size:30px;
			margin-bottom: 30px;
		}
		.border_b{
			border-bottom: 1px solid gray; padding:10px;
		}
		
		
		.sticky_box{
			position:sticky;
			top:150px;
			width: 100%;
			height:270px;
			bottom:200px;
			border: 1px solid #ffb6c1; 
			border-radius: 10px;
			padding:15px;
		}
		.sumPriceBox{
			margin-top : 5px; height: auto;
		}
		.sumPriceBox_tltel{
			border-bottom: 1px solid black; 
			padding-bottom: 10px; 
			font-size: 2em;
		}
		.sumPriceBox_content{
			border-bottom: 1px solid black; 
			padding-top:10px; 
			padding-bottom: 10px;
		}
		.font_size_small{
			font-size: small;
		}
		.sumPriceBox_content_text_right{
			text-align: right; 
		}
		.sumPriceBox_button{
			width: 100%;
			height: 40px;
			border: 2px solid #ffb6c1;
			border-radius: 5px;
			background-color: #ffb6c1;
			color: white;
			margin: auto;
			font-size: 20px;
			font-weight: bold;
		}
		.sumPriceBox_button:hover{
			color: #ffb6c1;
			background-color: white;
		}
		
		
		
		/* 미디어 쿼리  CSS */
		/*========================================================================*/
		@media screen and (min-width: 1400px){
			.absolute_center{
				position: absolute;
				top: 40%;
				left: 9%;
			}
		}
		@media screen and (min-width: 1200px) and (max-width: 1399.99px){
			.absolute_center{
				position: absolute;
				top: 40%;
				left: 9%;
			}
		}
		@media screen and (min-width: 992px) and (max-width: 1199.99px){
			.absolute_center{
				position: absolute;
				top: 30%;
				left: 9%;
			}
		}
		@media screen and (min-width: 768px) and (max-width: 991.99px){
			.absolute_center{
				position: absolute;
				top: 20%;
				left: 9%;
			}
		}
		@media screen and (min-width: 576px) and (max-width: 767.99px){
			.absolute_center{
				position: absolute;
				top: 20%;
				left: 9%;
			}
			.sticky_box{
				padding: 20px 8px;
			}
		}
		@media screen and (max-width: 575.99px){
			.absolute_center{
				position: absolute;
				top: 20%;
				left: 9%;
			}
			.sumPriceBox{
				display: none;
			}
		}
		
		
		
		
		
		
	</style>
</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>
	<section class="basket_content">
		<h1 class="page_title">장바구니</h1>
		<!-- content -->
		<form action="">
		<div class="row content_box">
		
			<!-- 전체선택 체크박스 -->
			<div class="checkbox_all">
				<div style="margin-left: 10px;">
					<label><input type="checkbox" name="all" value="all"> 전체선택</label>
				</div>
			</div>
			<!-- 상품표기 -->
			<div class="col-12 col-sm-8 col-md-8">
				<div>
					<!-- 개별 상품목록 -->
					<ul class="row no_list container border_b">
						<li class="col-3">
							<ul class="row no_list">
								<li class="col-3">
									<input class="Selection" type="checkbox" name="Selection" value="상품번호3">
								</li>
								<li class="col-9">
									<img class="product_image" src="/controller/image/bedding.png">
								</li>
							</ul>
						</li>
						<li class="col-9">
							<ul class="row no_list">
								<li class="col-6" style="margin-top:10px;">
									<div class="">
										포근한 이불
									</div>
								</li>
								<li class="col-3 text_center">
									<div class="absolute_center">
										<button type="button" class="btn decreaseQuantity">&#60;</button>
										<input type="text" class="numberUpDown" class="numberOnly" maxlength="3" size="1" value="1">
									    <button type="button" class="btn increaseQuantity">&#62;</button>
								    </div>
								</li>
								<li class="col-3 text_center price_val_box">
									<div class="hidden">10000</div>
									<div class="absolute_center price_val"><span>10000</span>원</div>
								</li>
							</ul>
						</li>
					</ul>
					<!--  -->
					<!-- 개별 상품목록 -->
					<ul class="row no_list container border_b">
						<li class="col-3">
							<ul class="row no_list">
								<li class="col-3">
									<input class="Selection" type="checkbox" name="Selection" value="상품번호3">
								</li>
								<li class="col-9">
									<img class="product_image" src="/controller/image/bedding.png">
								</li>
							</ul>
						</li>
						<li class="col-9">
							<ul class="row no_list">
								<li class="col-6" style="margin-top:10px;">
									<div class="">
										포근한 이불
									</div>
								</li>
								<li class="col-3 text_center">
									<div class="absolute_center">
										<button type="button" class="btn decreaseQuantity">&#60;</button>
										<input type="text" class="numberUpDown" class="numberOnly" maxlength="3" size="1" value="1">
									    <button type="button" class="btn increaseQuantity">&#62;</button>
								    </div>
								</li>
								<li class="col-3 text_center price_val_box">
									<div class="hidden">10000</div>
									<div class="absolute_center price_val"><span>10000</span>원</div>
								</li>
							</ul>
						</li>
					</ul>
					<!--  -->
					<div class="row text_middle" style="text-align: center;">
						<div class="col-4">
							상품금액
							<br>
							<span>0</span>원
						</div>
						<div class="col-1">+</div>
						<div class="col-2">
							배송비
							<br>
							<span>0</span>원
						</div>
						<div class="col-1">=</div>
						<div class="col-4">
							상품금액
							<br>
							<span>0</span>원
						</div>
					</div>
					
					
					
				</div>
			</div>
			<!-- 합계금액표시 sticky box -->
			<div class="col-4 sumPriceBox">
				<div class="sticky_box">
					<div class="sumPriceBox_tltel">
						결제정보
					</div>
					<div class="sumPriceBox_content">
						<ul class="no_list">
							<li class="row text_middle margin_tb10">
								<span class="col-4">상품수</span>
								<span class="col-8 sumPriceBox_content_text_right">
									<strong class="font_size_small">0</strong><span class="font_size_small">개</span>
								</span>
							</li>
							<li class="row text_middle margin_tb10">
								<span class="col-4">금액</span>
								<span class="col-8 sumPriceBox_content_text_right">
									<strong class="font_size_small">0</strong><span class="font_size_small">원</span>
								</span>
							</li>
							<li class="row text_middle margin_tb10">
								<span class="col-4">배송비</span>
								<span class="col-8 sumPriceBox_content_text_right">
									<strong class="font_size_small">0</strong><span class="font_size_small">원</span>
								</span>
							</li>
						</ul>
					</div>
					<div class="row" style="margin-top:10px;">
						<span class="col-5" style=" overflow: visible;">총 결제금액</span>
						<span class="col-7 sumPriceBox_content_text_right">
							<strong class="font_size_small">9,000,000</strong><span class="font_size_small">원</span>
						</span>
					</div>
					<div style="margin-top:10px;">
						<button type="button" class="sumPriceBox_button">총금액</button>
					</div>
				</div>
			</div>
		</div>
		</form>

	</section>
	
	<script>
		$(function(){
			//전체선택 클릭시 모든상품 선택되도록
			$('input[name=all]').click(function(){
				if($(this).is(':checked')){
					$('.Selection').prop('checked',true);
				}else{
					$('.Selection').prop('checked',false);
				}
			});
			//개별상품 체크해제할시 전체선택 취소
			$('.Selection').click(function(){
				if(!$(this).is(':checked')){
					$('input[name=all]').prop('checked',false);
				}
			});
			//
			
			
			//수량선택시 1미만 100초과시 선택못하도록 설정
			$('.decreaseQuantity').click(function(e){
				e.preventDefault();
				var stat = $(this).next().val();
				var num = parseInt(stat,10);
				num--;
				if(num<=0){
					alert('더이상 줄일수 없습니다.');
					num =1;
				}
				$(this).next().val(num);
				var price = $(this).parent().parent().next('.price_val_box').children('.hidden').text();
				$(this).parent().parent().next('.price_val_box').children('.price_val').children('span').text(price*num);
			});
			$('.increaseQuantity').click(function(e){
				e.preventDefault();
				var stat = $(this).prev().val();
				var num = parseInt(stat,10);
				num++;

				if(num>100){
					alert('더이상 늘릴수 없습니다.');
					num=100;
				}
				$(this).prev().val(num);
				var price = $(this).parent().parent().next('.price_val_box').children('.hidden').text();
				$(this).parent().parent().next('.price_val_box').children('.price_val').children('span').text(price*num);
			});
			
			
			$('.numberUpDown').change(function(){
				var count = $(this).val();
				var price = $(this).parent().parent().next('.price_val_box').children('.hidden').text();
				$(this).parent().parent().next('.price_val_box').children('.price_val').children('span').text(price*count);
			});
			
		});
	</script>
	<%@ include file="../footer.jsp" %>
</body>
</html>