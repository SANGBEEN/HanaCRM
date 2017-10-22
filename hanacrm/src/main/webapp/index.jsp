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
	<link id="bootstrap-style" href="css/bootstrap.css" rel="stylesheet">
	
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
	font-family: 'Varela Round', sans-serif;
	/* font-family: 'Bungee Inline', cursive; */
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
    background: radial-gradient(circle, #008a8a, rgba(0, 56, 56, 0.77));
    /* background-color: rgba(1, 90, 90, 0.84); */
    position: absolute;
    top: 0;
    left: 0;
}

.login-layout-div{
	position: relative;
    display: block;
    vertical-align: middle;
    height: 450px;
    width: 400px;
    margin: 22vh auto;
    box-shadow: 50px 50px 50px rgba(0,0,0,0.45), 6px 6px 6px rgba(0,0,0,0.35);
}

.login-top-logo{
    height: 100px;
    padding-top: 30px;
    padding-bottom: 30px;
    margin-bottom: 20px;
	background: inherit;
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
    height: 130px;
    background: #777777;
    font-size: 1.5rem;
    line-height: 280px;
    padding-bottom: 40px;
    padding-left: 45px;
    color: white;
    font-family: initial;
}

.login-form-div{
    padding: 30px 20px 20px 20px;
    height: 110px;
    background-color: #f9f9f9 !important;
}


#login-form div{
    height: 50px;
    line-height: 50px;
    margin: 5px auto;
    text-align:center;
}

#login-form div label{
	display: inline-block;
    width: 80px !important;
    text-align: center;
    margin-right: 10px;
    color: #030303;
    font-family: initial;
    font-size: 1rem;
    vertical-align: middle;	
}

#login-form div input{
    height: 35px;
    width: 300px;
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
    width: 330px;
    text-align: center;
    height: 60px;
    border: 4px solid white;
    font-size: 1.4rem;
    background: rgba(175, 10, 51, 0.78);
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
			<div style="height:50px; background-color: rgb(72, 72, 72)"></div>
			<div class="login-form-header">
				HanaSFA 영업지원 시스템
			</div>
			<div class="login-form-div">
				<form id="login-form" action="${pageContext.request.contextPath}/login" method="POST">
					<div>
						<!-- <label>ID</label> -->
						<input id="login_id" name="uid" class="form-control" type="text" placeholder="아이디" required>
					</div>
					<div>
						<!-- <label>PASSWORD</label> -->
						<input id="login_password" name="password" class="form-control" type="password" placeholder="비밀번호" required>
					</div>
				</form>
			</div>
			<div class="login-submit-div">
				<button onClick="login()">login</button>
			</div>
		</div>
		
		<footer class="container" style="font-size: 0.9rem; text-align: center; position: absolute;  bottom: 0;  background: #f9f9f9; width: 100%;">
   			<p style="margin: 10px 0 10px;">
   				<small>Copyright &copy; 2017 <a href="http://www.hanafn.co.kr/">Hana SFA</a></small>
   			</p>
   		</footer>
	</div>
   	
</body>
</html>