<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/loginModal.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style>
html {
	background: url(css/img/main_background.jpg) no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>crm</title>
<script>
window.onload = function () {
	 $('div.modal').modal();
	}

</script>

</head>
<body>
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" align="center">
					<img class="img-rectangle" id="img_logo"
						src="css/img/logo.jpg" width="400" height="150">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
					</button>
				</div>

				<!-- Begin # DIV Form -->
				<div id="div-forms">

					<!-- Begin # Login Form -->
					<form id="login-form" action="${pageContext.request.contextPath}/login " method="post">
						<div class="modal-body">
							<div id="div-login-msg">
								<div id="icon-login-msg"
									class="glyphicon glyphicon-chevron-right"></div>
								<span id="text-login-msg">Type your id and
									password.</span>
							</div>
							<input id="id" name="id" class="form-control" type="text"
								placeholder="ID (type ERROR for error effect)" required>
							<input id="password" name="password" class="form-control" type="password"
								placeholder="Password" required>
							<div class="checkbox">
								<label> <input type="checkbox"> Remember me
								</label>
							</div>
						</div>
						<div class="modal-footer">
							<div>
								<button type="submit" class="btn btn btn-success btn-lg btn-block">Login</button>
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



				</div>
				<!-- End # DIV Form -->

			</div>
		</div>
	</div>
</body>
</html>