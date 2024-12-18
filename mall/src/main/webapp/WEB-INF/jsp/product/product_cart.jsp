<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>장바구니 - 디스커버리</title>
<link href="/assets/css/style.css" rel="stylesheet">
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center">
		<div class="container d-flex justify-content-between">
			<div class="logo">
				<h1 class="text-light">
					<a href="/main">디스커버리</a>
				</h1>
			</div>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="index.html">Men</a></li>
					<li><a href="about.html">Women</a></li>
					<li><a href="services.html">Shoes</a></li>
					<li><a class="active" href="/product/cart">장바구니</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
		</div>
	</header>

	<style>
.cart-items img {
	max-width: 100px; /* 원하는 최대 너비 */
	height: auto; /* 비율 유지 */
}
</style>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Cart Section ======= -->
		<section id="cart" class="cart">
			<div class="container">
				<h2>장바구니</h2>
				<div class="cart-items">
					<table class="table">
						<thead> <form id='cartForm'>
							<tr>
								<th>이미지</th>
								<th>상품명</th>
								<th>수량</th>
								<th>가격</th>
								<th>합계</th>
								
							</tr>
						</thead>
						<tbody id="cartTableBody">
							<!-- 장바구니 아이템이 동적으로 추가될 자리 -->
						</tbody>
						</form>
					</table>
				</div>
				<div class="cart-total">
					<h3>
						총 합계: <span id="totalPrice">0</span> 원
					</h3>
				</div>
				<div class="checkout">
					<button id="checkoutButton" onclick ="checkout()" class="btn btn-success">주문하기</button>
				</div>
			</div>
		</section>
		<!-- End Cart Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>디스커버리</h3>
						<p>
							경기도 의정부시 <br> 이젠컴퓨터 학원<br> 대한민국 <br> <br> <strong>Phone:</strong>
							027 455 8769<br> <strong>Email:</strong>
							leo.ryu0113@gmail.com<br>
						</p>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>우리와 함께하세요</h4>
						<p>이메일을 적어주세요</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>
					</div>

				</div>
			</div>
		</div>

		<div class="container d-md-flex py-4">

			<div class="me-md-auto text-center text-md-start">
				<div class="copyright">
					&copy; Copyright <strong><span>Flattern</span></strong>. All Rights
					Reserved
				</div>
				<div class="credits">
					Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
				</div>
			</div>
			<div class="social-links text-center text-md-right pt-3 pt-md-0">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<!-- Vendor JS Files -->
	<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/js/jquery-3.7.1.min.js"></script>

	<script>
		$(document).ready(function() {
			$.ajax({
				type : 'post',
				url : '/cart/list',
				dataType : 'json',
				success : function(list) {
					setCartList(list);
				},
				error : function(request, status, error) {
					console.log(error);
				}
			});
		});

		function setCartList(list) {

			var str = '';
			var totalPrice = 0;

			for (var i = 0; i < list.length; i++) {
				var subtotal = list[i].price * list[i].buyQta;
				totalPrice += subtotal;
				str += '<tr>';
				str += '<td><img src="' + list[i].thumbnail + '" class="img-fluid" alt="" style="max-width: 100px; height: auto;"></td>';
				str += '<td>' + list[i].productName + '</td>';
				str += '<td><input type="number" id="buyQta'+i+'" value="' + list[i].buyQta + '" style="width: 80px;" class="form-control" min="1"></td>'; 
				str += '<td>' + list[i].price + ' 원</td>';
				str += '<td>' + subtotal + ' 원</td>';
				str += '<td><button class="btn btn-danger" onclick="removeCart(\'' + list[i].productCode + '\')">삭제</button><button class="btn btn-success" onclick="cartUpdate(\'' + list[i].productCode + '\', '+i+')">수량변경</button></td>';
				str += '</tr>';
			}

			$('#cartTableBody').append(str);
			$('#totalPrice').text(totalPrice);
		}
		
		
		 function cartUpdate(cd, idx){ //수량의 밸류값을 어떻게 받아오는지 
				var code = cd
		 		var qta = $('#buyQta'+idx).val();
				$.ajax({ 
					type : 'post',
					data : {productCode:code, buyQta:qta},
					url : '/cart/update',
					dataType:'json',
					success : function(data){
						callBackSave1(data);
					},
					error : function(request, status, error){
						console.log(error)
					}
				});
			}

		 
			function callBackSave1(data){
				if(data){
					alert("상품 수량이 변경되었습니다.");
					location.reload();
				}else{
					alert("오류가 발생하였습니다.");
				}
			}
			
			
		function removeCart(cd){
			var code = cd
			$.ajax({ 
				type : 'post',
				data : {productCode:code},
				url : '/cart/remove',
				dataType : 'json',
				success : function(data){
					callBackSave(data);
				},
				error : function(request, status, error){
					console.log(error)
				}
			});
		}
		
		function callBackSave(data){
			if(data){
				alert("상품이 삭제되었습니다");
				location.reload();
			}else{
				alert("오류가 발생하였습니다.");
			}
		}
		
		
		function checkout(){
			window.open("/product/order");
		}
	</script>

</body>

</html>
