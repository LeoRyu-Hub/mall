<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Portfolio Details - Flattern Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/assets/img/favicon.png" rel="icon">
<link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Muli:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="//assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Flattern
  * Template URL: https://bootstrapmade.com/flattern-multipurpose-bootstrap-template/
  * Updated: Mar 17 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Top Bar ======= -->
	<section id="topbar" class="d-flex align-items-center">
		<div
			class="container d-flex justify-content-center justify-content-md-between">
			<div class="contact-info d-flex align-items-center">
				<i class="bi bi-envelope d-flex align-items-center"><a
					href="mailto:contact@example.com">leo.ryu@0113@gmail.com</a></i> <i
					class="bi bi-phone d-flex align-items-center ms-4"><span>027
						455 8769</span></i>
			</div>
			<div class="social-links d-none d-md-flex align-items-center">
				<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
					href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
					href="#" class="instagram"><i class="bi bi-instagram"></i></a> <a
					href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
			</div>
		</div>
	</section>

	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center">
		<div class="container d-flex justify-content-between">

			<div class="logo">
				<h1 class="text-light">
					<a href="/main">디스커버리</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="/assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="index.html">Men</a></li>
					<li><a href="about.html">Women</a></li>
					<li><a href="services.html">Shoes</a></li>
					<li><a href="testimonials.html">ACC</a></li>
					<li><a href="pricing.html">Kids</a></li>
					<li><a class="active" href="portfolio.html">Portfolio</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a class="active" href="/product/cart">장바구니</a></li>
					<li class="dropdown"><a href="#"><span>Drop Down</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="#">Drop Down 1</a></li>
							<li class="dropdown"><a href="#"><span>Deep Drop
										Down</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Deep Drop Down 1</a></li>
									<li><a href="#">Deep Drop Down 2</a></li>
									<li><a href="#">Deep Drop Down 3</a></li>
									<li><a href="#">Deep Drop Down 4</a></li>
									<li><a href="#">Deep Drop Down 5</a></li>
								</ul></li>
							<li><a href="#">Drop Down 2</a></li>
							<li><a href="#">Drop Down 3</a></li>
							<li><a href="#">Drop Down 4</a></li>
						</ul></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<h2>Product Details</h2>
					<ol>
						<li><a href="index.html">Main</a></li>
						<li>Product Details</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<!-- ======= Portfolio Details Section ======= -->
		<section id="portfolio-details" class="portfolio-details">
			<div class="container">

				<div class="row gy-4">
					<div class="col-lg-8">
						<div class="portfolio-details-slider swiper">
							<div class="swiper-wrapper align-items-center">
								<div class="swiper-slide">
									<img id='thumbnail' alt="">
								</div>
							</div>
							<div class="swiper-pagination"></div>
						</div>
					</div>
					<div class="col-lg-4">
						<form id='addCartForm'>
							<input type='hidden' name="productCode" value="${productCode}">
							<div class="portfolio-info">
								<h3 id="productName"></h3>
								<ul style="list-style-type: none; padding: 0;">
									<li id="price"><strong>가격 :</strong> <span></span></li>
									<li id="regDt"><strong>상품 등록일 :</strong> <span></span></li>
									<li id="productSt"><strong>상품 상태 :</strong> <span></span></li>
								</ul>
								<div style="display: flex; align-items: center; gap: 10px;">
									<label for="quantity"><strong>수량:</strong></label> <select name='buyQta'
										id="quantity" class="form-select" style="width: 100px;">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>

									<div
										style="display: flex; justify-content: flex-end; flex-grow: 1; gap: 5px;">
										<button id="addToCart" type ='button' onclick="addCart()"
											class="btn btn-primary"
											style="padding: 8px 8px; font-size: 0.8em;">장바구니에 추가</button>
										<button id="buyNow" type ='button' class="btn btn-success"
											style="padding: 8px 8px; font-size: 0.8em;">바로 구매</button>
									</div>
								</div>
							</div>
							<div class="portfolio-description">
								<h2>상품 상세 설명</h2>
								<p id='productDetail'></p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- End Portfolio Details Section -->

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
					<!-- All the links in the footer should remain intact. -->
					<!-- You can delete the links only if you purchased the pro version. -->
					<!-- Licensing information: https://bootstrapmade.com/license/ -->
					<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/flattern-multipurpose-bootstrap-template/ -->
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

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="/assets/vendor/aos/aos.js"></script>
	<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="/assets/vendor/waypoints/noframework.waypoints.js"></script>
	<script src="/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/jquery-3.7.1.min.js"></script>

	<script>
		$(document).ready(function() {
			var code = '${productCode}';
			$.ajax({
				data : {
					productCode : code
				},
				type : 'post',
				url : '/product/getInfo',
				dataType : 'json',
				success : function(data) {
					setProductInfo(data);
				},
				error : function(request, status, error) {
					console.log(error);
				}
			});
		});

		function setProductInfo(data) {
			$('#productName').text(data.productName);
			$('#price span').text(data.price +'원');
			$('#regDt span').text(data.regDt);
			$('#productSt span').text(data.productSt);
			$('#productDetail').text(data.productDetail);
			$("#thumbnail").attr("src", data.thumbnail);
		}

		function addCart() {
			if (confirm("장바구니에 추가하시겠습니까?")) { 
				var formData = new FormData($(addCartForm)[0]);
				$.ajax({
					type : 'post',
					data : formData,
					url : '/product/add',
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
				alert("장바구니에 담겼습니다.");
			} else {
				alert("오류가 발생하였습니다.");
			}
		}
	</script>

</body>

</html>