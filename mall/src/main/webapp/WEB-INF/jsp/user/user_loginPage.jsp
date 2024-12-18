<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>로그인 - 디스커버리</title>
<link href="/assets/css/style.css" rel="stylesheet">
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/assets/vendor/aos/aos.css" rel="stylesheet">
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
					<li><a class="active" href="index.html">홈</a></li>
					<li><a href="about.html">소개</a></li>
					<li><a href="contact.html">연락처</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- End Header -->
	<main id="main" class="container mt-5">
		<section class="login-section">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<h2 class="text-center">로그인</h2>
					<form id='loginForm' action="/login" method="post">
						<div class="mb-3">
							<label for="id" class="form-label">아이디</label> <input type="text"
								class="form-control" id="userId" name="userId" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">비밀번호</label> <input
								type="password" class="form-control" id="password"
								name="userPassword" required>
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input" id="rememberMe">
							<label class="form-check-label" for="rememberMe">아이디 기억하기</label>
						</div>
						<button type="button" onclick="login()" class="btn btn-primary">로그인</button>
						<div class="mt-3">
							<a href="javascript:void(0);" onclick="openJoin()">회원가입하기</a>
						</div>
					</form>
				</div>
			</div>
		</section>
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

	<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/assets/js/jquery-3.7.1.min.js"></script>
	<script src="/assets/js/cookie.js"></script>

	<script>
		function openJoin() {
			window.open('/user/join', '회원가입', 'width=600,height=800');
		}

		function login() {
			
			if($('#rememberMe').is(':checked')){
				var userId = $('#userId').val();
				setCookie("userId",userId,30);
			}
			
			var formData = new FormData($(loginForm)[0]);
			$.ajax({
				type : 'post',
				data : formData,
				url : '/user/login',
				cache : false,
				processData : false,
				contentType : false,
				success : function(data) {
					callBackSave(data);
				},
				error : function(request, status, error) {
					console.log(error)
				}
			});
		}

		function callBackSave(data) {
			if (data) {
				alert("로그인 성공~!");
				window.location.href = '/main';
			} else {
				alert("오류가 발생하였습니다.");
			}
		}
		
		$(document).ready(function(){
			
			var userId = getCookie("userId");
			$('#userId').val(userId);
			
		});
	</script>
</body>

</html>
