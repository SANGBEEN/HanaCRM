<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>영업관리시스템</title>
<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script>
	var emp = "${sessionScope.emp}";
	if(emp!=""){
		console.log(emp);
		location.href="${pageContext.request.contextPath}/main";
	}
	
	function login(){
		var formData = $('#login-form').serialize();
		$('#login-form').submit();
	}
</script>
<style>

html, body{
	width: 100% !important;
	height: 100% !important;
	/* font-family: 'Varela Round', sans-serif; */
	font-family: 'Bungee Inline', cursive;
}

.login-background{
	height: 100vh;
    width: 100%;
    /* background: url("${pageContext.request.contextPath}/img/bg2.jpg"); */
    /* background: url("https://i.imgur.com/NDsgOeI.png"); */
    /* background: url("https://i.imgur.com/NDchjAO.png"); */
    /* background: url("https://orig00.deviantart.net/4634/f/2015/054/b/0/flat_vector_reading_wallpaper_6_by_charlie_henson-d8jb2a4.png"); */
}

.login-whole-div{
	height: 100vh;
    width: 100%;
    display: table;
    /* background-color: rgba(0, 132, 133, 0.84); */
    position: absolute;
    top:0;
    left: 0;
}

.login-layout-div{
    position: relative;
    display: block;
    vertical-align: middle;
    height: 500px;
    width: 450px;
    margin: 20vh auto;
}

.login-top-logo{
    height: 200px;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 20px;
	background: inherit;
    border: 7px solid white;
}

.login-top-logo span{
    display: block;
    margin: auto;
    text-align: center;
    font-size: 5rem;
    color: white;
    padding: 3px;
}

.login-form-header{
    height: 50px;
    background: gray;
    font-size: 1.5rem;
    line-height: 50px;
    padding-left: 20px;
    color: white;
    font-family: initial;
}

.login-form-div{
    height: 150px;
    background-color: #f9f9f9 !important;
}

#login-form{
    padding: 20px;
}

#login-form div{
    height: 50px;
    line-height: 50px;
    margin: 5px auto;
}

#login-form div label{
    display: inline-block;
    width: 100px !important;
    text-align: center;
    margin-right: 10px;
    color: #030303;
    font-family: initial;
}

#login-form div input{
    height: 35px;
    width: 260px;
    padding-left: 10px;
    font-size: 1rem;
    font-family: initial;
}

.login-submit-div{
    height: 80px;
    line-height: 50px;
    background-color: white !important;
    text-align: center;
}

.login-submit-div > button{
    width: 350px;
    text-align: center;
    height: 60px;
    border: 4px solid white;
    font-size: 1.4rem;
    background: rgba(254, 64, 64, 0.8);
    color: white;
    font-family: initial;
}
</style>
</head>

<body>
	
	<div class="login-background">
	</div>
	
	<div class="login-whole-div">
		<div class="login-layout-div">
			<div class="login-top-logo">
				<span>Hana</span>
				<span>CRM</span>
			</div>
			<div class="login-form-header">
				Login
			</div>
			<div class="login-form-div">
				<form id="login-form" action="${pageContext.request.contextPath}/login" method="POST">
					<div>
						<label>ID</label>
						<input id="login_id" name="uid" class="form-control" type="text" placeholder="ID" required>
					</div>
					<div>
						<label>PASSWORD</label>
						<input id="login_password" name="password" class="form-control" type="password" placeholder="Password" required>
					</div>
				</form>
			</div>
			<div class="login-submit-div">
				<button onClick="login()">submit</button>
			</div>
		</div>
	</div>
</body>
</html>