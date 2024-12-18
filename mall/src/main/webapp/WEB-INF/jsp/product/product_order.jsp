<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>주문하기 - 디스커버리</title>
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

#orderInfoBody tr {
	margin-bottom: 10px; /* 각 행 사이의 간격 */
}

#orderInfoBody td {
	padding: 8px; /* 셀 내 여백 */
}

table {
	width: 100%; /* 테이블 넓이를 100%로 설정 */
	border-collapse: collapse; /* 테두리 겹치기 방지 */
}
</style>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Cart Section ======= -->
		<section id="cart" class="cart mb-4">
			<div class="container">
				<h2>주문하기</h2>
				<div class="cart-items">
					<table class="table">
						<thead>
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
					</table>
				</div>
			</div>
		</section>
		<!-- End Cart Section -->

		<!-- ======= Order Info Section ======= -->
		<section id="order-info" class="order-info">
			<div class="container">
				<h3>주문자 정보</h3>
				<table>
					<form id='orderForm'>
					<thead>
					</thead>
					<tbody id="orderInfoBody">
						<tr>
							<td>주문자 이름</td>
							<td id="userName"></td>
						</tr>
						<tr>
							<td>전화번호</td>
							<td id="phone"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td id="email"></td>
						</tr>
						<tr>
							<td>주소</td>
							<td id="addr"></td>
						</tr>
					</tbody>
				</table>

				<div style="display: flex; align-items: center;">
					<h3 style="margin-right: 10px;">수취인 정보</h3>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="same"
							onclick="sameOrder(this)"> <label
							class="form-check-label" for="sameAsOrderer">주문자 정보와 동일</label>
					</div>
				</div>
				<div class="mb-3">
					<label for="recipientName" class="form-label">수취인 이름</label> <input
						type="text" class="form-control form-control-sm" id="receiveName"
						name='receiveName' required style="max-width: 300px;">
				</div>
				<div class="mb-3">
					<label for="recievePhone" class="form-label">수취인 전화번호</label> <input
						type="text" class="form-control form-control-sm" id="receivePhone"
						name='receivePhone ' required style="max-width: 300px;">
				</div>
				<div class="mb-3">
					<label for="recipientAddress" class="form-label">수취인 주소</label> <input
						type="text" class="form-control form-control-sm" id="orderAddr"
						name='orderAddr' required style="max-width: 300px;">
				</div>
				<div class="mb-3">
					<label for="recipientAddress" class="form-label">배송요청사항</label> <input
						type="text" class="form-control form-control-sm" id="request"
						name='request' required style="max-width: 300px; height: 100px;">
				</div>

				<div
					style="display: flex; align-items: center; margin-bottom: 20px;">
					<h3 style="margin-right: 10px;">결제 정보</h3>
				</div>
				<div class="row">
					<div class="col-md-3 mb-1">
						<div class="form-check">
							<input type="radio" class="form-check-input" id="creditCard"
								name="paymentMethod" value="신용카드"> <label
								class="form-check-label" for="creditCard">신용카드</label>
						</div>
					</div>
					<div class="col-md-3 mb-1">
						<div class="form-check">
							<input type="radio" class="form-check-input" id="paypal"
								name="paymentMethod" value="Paypal"> <label
								class="form-check-label" for="paypal">Paypal</label>
						</div>
					</div>
					<div class="col-md-3 mb-1">
						<div class="form-check">
							<input type="radio" class="form-check-input" id="bankTransfer"
								name="paymentMethod" value="계좌이체"> <label
								class="form-check-label" for="bankTransfer">계좌이체</label>
						</div>
					</div>
					<div class="col-md-3 mb-1">
						<div class="form-check">
							<input type="radio" class="form-check-input" id="kakaoPay"
								name="paymentMethod" value="카카오페이"> <label
								class="form-check-label" for="kakaoPay">카카오페이</label>
						</div>
					</div>
				</div>


				<div class="cart-total">
					<h3>
						총 합계: <span id="totalPrice" name='paymentAmount'></span> 원
					</h3>
				</div>
				</form>
				<div class="checkout">
					<button id="checkoutButton" onclick="checkout()"
						class="btn btn-success">결제하기</button>
				</div>
			</div>
		</section>
		<!-- End Order Info Section -->

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
				url : '/order/list',
				dataType : 'json',
				success : function(data) {
					setOrderList(data);
				},
				error : function(request, status, error) {
					console.log(error);
				}
			});
		});

		var orderInfo = null;

		function setOrderList(data) {
			orderInfo = data;
			var str = '';
			var totalPrice = 0;
			for (var i = 0; i < data.cartlist.length; i++) {
				var subtotal = data.cartlist[i].price * data.cartlist[i].buyQta;
				totalPrice += subtotal;
				str += '<tr>';
				str += '<td><img src="' + data.cartlist[i].thumbnail + '" class="img-fluid" alt="" style="max-width: 100px; height: auto;"></td>';
				str += '<td>' + data.cartlist[i].productName + '</td>';
				str += '<td>' + data.cartlist[i].buyQta + ' </td>';
				str += '<td>' + data.cartlist[i].price + ' 원</td>';
				str += '<td>' + subtotal + ' 원</td>';
				str += '</tr>';
			}
			$('#cartTableBody').append(str);
			$('#totalPrice').text(totalPrice);
			$('#userName').text(data.userName);
			$('#phone').text(data.phone);
			$('#email').text(data.email);
			$('#addr').text(data.addr);

		}

		function sameOrder(cb) {
			if (cb.checked) {
				$('#receiveName').val(orderInfo.userName);
				$('#receivePhone').val(orderInfo.phone);
				$('#orderAddr').val(orderInfo.addr);
			} else {
				$('#recieveName').val('');
				$('#recievePhone').val('');
				$('#orderAddr').val('');
			}
		}

		function checkout() {
			if (confirm("결제 하시겠습니까?")) {
				var formData = new FormData($(orderForm)[0]);
				var totalPrice = $('#totalPrice').text();
				formData.append('paymentAmount', totalPrice);
				$.ajax({
					type : 'post',
					data : formData,
					url : '/order/checkout',
					cache : false,
					processData : false,
					contentType : false,
					success : function(data) {
						callBackSave(data);
					},
					error : function(request, status, error) {
						console.log(error);
					}
				});
			}
		}

		function callBackSave(data) {
			if (data) {
				alert("결제가 완료되었습니다.");
				window.close();
			} else {
				alert("오류가 발생하였습니다.");
			}
		}
		
	</script>

</body>

</html>
