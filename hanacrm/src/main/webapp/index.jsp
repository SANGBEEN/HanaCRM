<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/loginModal.css">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>crm</title>
<script>
	$(document).ready(function() {
		$("#myBtn").click(function() {
			alert("?");
			$("#myModal").modal();
		});
	});
</script>

</head>
<body>

	<a href="${pageContext.request.contextPath}/emp/hello.do">asdf</a>
	
	<form action="${pageContext.request.contextPath}/emp/login.do" method="post">
		<div>
			<label for="id">ID:</label> <input type="text" id="id" name="id"/>
		</div>
		<div>
			<label for="password">Password:</label> <input type="password" id="password" name="password" />
		</div>
		<input type="submit" value="login"/>
	</form>
<!-- 	<button id="myBtn" type="button">Open Modal</button>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<p>asdfadfsafsdfasd</p>
	</div> -->

</body>
</html>