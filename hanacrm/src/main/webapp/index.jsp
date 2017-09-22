<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/loginModal.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style>
html {
	background: url(css/img/main_background.jpg) no-repeat center center
		fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>crm</title>
<script src="js/loginModal.js"></script>
<script>
	var emp = "${sessionScope.emp}";
	if(emp!=""){
		console.log(emp);
		location.href="${pageContext.request.contextPath}/main";
	}else{
		console.log('세션 없음');
	}

	$(document).ready(function(){
/* 		var emp = "${sessionScope.emp}";
		if(emp!=""){
			console.log(emp);
			location.href="${pageContext.request.contextPath}/main";
		}else{
			console.log('세션 없음');
		} */
		setTimeout(function(){
			$('div.modal').modal();
		}, 500);
		
		
	});
	
	
	
</script>

</head>
<body>
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
					<img class="img-rectangle" id="img_logo" src="css/img/logo.jpg"
						width="400" height="150">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
				</div>

				<!-- Begin # DIV Form -->
				<div id="div-forms">

					<!-- Begin # Login Form -->
					<form id="login-form"
						action="${pageContext.request.contextPath}/login" method="POST">
						<div class="modal-body">
							<div id="div-login-msg">
								<div id="icon-login-msg"
									class="glyphicon glyphicon-chevron-right"></div>
								<span id="text-login-msg">Type your id and password.</span>
							</div>
							<input id="login_id" name="uid" class="form-control" type="text"
								placeholder="ID (type ERROR for error effect)" required>
							<input id="login_password" name="password" class="form-control"
								type="password" placeholder="Password" required>
							<div class="checkbox">
								<label> <input type="checkbox"> Remember me
								</label>
							</div>
						</div>
						<div class="modal-footer">
							<div>
								<button type="submit"
									class="btn btn btn-success btn-lg btn-block">Login</button>
							</div>
							<div>
								<button id="login_lost_btn" type="button" class="btn btn-link">Lost
									Password?</button>
								<button id="login_register_btn" type="button"
									class="btn btn-link">Register</button>
							</div>
						</div>
					</form>
					<!-- End # Login Form -->

					<!-- Begin | Register Form -->
					<form id="register-form" style="display: none;" 
					action="${pageContext.request.contextPath}/emp/join" method="POST">
						<div class="modal-body">
							<div id="div-register-msg">
								<div id="icon-register-msg"
									class="glyphicon glyphicon-chevron-right"></div>
								<span id="text-register-msg">Register an account.</span>
							</div>
							<input id="register_id" name="uid" class="form-control"
								type="text" placeholder="아이디" required>
								 
							<input id="register_password" name="password"
								class="form-control" type="password"
								placeholder="비밀번호" required>
								
							<input id="register_name" name="name" class="form-control"
								type="text" placeholder="이름" required> 
								
							<input id="register_email" name="email"
								class="form-control" type="text"
								placeholder="이메일" required>
								
							<input id="register_phone" name="phone" class="form-control"
								type="text" placeholder="핸드폰 번호(-을 제외하고 입력하세요.)"
								required> 
								
							<input id="register_position" name="position"
								class="form-control" type="text" placeholder="직위" required>
								
							<input id="register_sns" class="form-control" name="sns"
								type="text" placeholder="sns" >
								
							<input id="register_fax" class="form-control" name="fax"
								type="text" placeholder="fax (-제외)" >
								
							<input id="register_deptNo" class="form-control" name="deptNo" 
								type="text" placeholder="부서 (선택??)" >
						</div>
						<div class="modal-footer">
							<div>
								<button type="submit" class="btn btn-success btn-lg btn-block">Register</button>
							</div>
							<div>
								<button id="register_login_btn" type="button"
									class="btn btn-link">Log In</button>
								<button id="register_lost_btn" type="button"
									class="btn btn-link">Lost Password?</button>
							</div>
						</div>
					</form>
					<!-- End | Register Form -->

				</div>
				<!-- End # DIV Form -->

			</div>
		</div>
	</div>
</body>
</html>