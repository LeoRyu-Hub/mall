<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>회원가입 - 디스커버리</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/assets/img/favicon.png" rel="icon">
<link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/assets/css/style.css" rel="stylesheet">

<style>
body {
	background-color: #f8f9fa;
	font-family: 'Open Sans', sans-serif;
}

.form-control {
	height: 38px;
	width: 100%;
}

.col-form-label {
	font-size: 14px;
}

.row.mb-3 {
	margin-bottom: 15px;
}

.custom-button {
	margin-left: 10px;
}

.email-container {
	display: flex;
	align-items: center;
	gap: 5px;
}

.email-container input {
	flex: 1;
}

.btn {
	min-width: 120px;
}

.button-group {
	display: flex;
	gap: 10px;
}

.password-warning {
	color: red;
	font-size: 12px;
}
</style>
</head>

<body>
	<form id="registrationForm">
		<div class="container">
			<h2 class="mt-4">회원가입</h2>
			<div class="row mb-3">
				<label for="inputName" class="col-sm-2 col-form-label">이름</label>
				<div class="col-sm-10">
					<input type="text" name='userName' class="form-control name-input"
						required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputId" class="col-sm-2 col-form-label">아이디</label>
				<div class="col-sm-10 d-flex align-items-center">
					<input type="text" name='userId' class="form-control" required>
					<button type="button" onclick="idCheck()"
						class="btn btn-primary btn-sm custom-button">중복확인</button>
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
				<div class="col-sm-10">
					<input type="password" name='userPassword' class="form-control"
						required> <small class="password-warning">비밀번호는
						문자, 숫자, 특수문자의 조합 10~16자리로 입력이 가능합니다.</small>
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputPasswordConfirm" class="col-sm-2 col-form-label">비밀번호
					확인</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputEmail" class="col-sm-2 col-form-label">이메일
					</label>
				<div class="col-sm-10">
					<input type="text" name= 'email' class="form-control" required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputAddress" class="col-sm-2 col-form-label">주소</label>
				<div class="col-sm-10">
					<input type="text" name='addr' class="form-control" required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputPhone" class="col-sm-2 col-form-label">핸드폰</label>
				<div class="col-sm-10">
					<input type="tel" name='phone' class="form-control" required>
				</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-sm-10 offset-sm-2 button-group">
				<button type="button" onclick="cancelJoin()" class="btn btn-secondary">가입 취소</button>
				<button type="button" onclick="join()" class="btn btn-primary">회원가입</button>
			</div>
		</div>
		</div>
	</form>

	<script src="/assets/js/main.js"></script>
	<script src="/assets/js/jquery-3.7.1.min.js"></script>
	<script>
		function join() {
			var formData = new FormData($(registrationForm)[0]);
			$.ajax({
				type : 'post',
				data : formData,
				url : '/user/reg',
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
				alert("회원가입이 완료되었습니다.");
				window.close();
			} else {
				alert("오류가 발생하였습니다.");
			}
		}
		
		function cancelJoin(){
			window.close();
		}
	</script>
</body>

</html>
