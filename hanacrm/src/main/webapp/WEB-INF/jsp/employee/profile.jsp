<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- start: Meta -->
<meta charset="utf-8">
<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid,
        Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/addModal.css"
	rel="stylesheet">
<link id="base-style"
	href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
<link id="base-style-responsive"
	href="${pageContext.request.contextPath}/css/style-responsive.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
<!-- end: CSS -->
<!-- start: JavaScript-->

<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>

<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>

<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"></script>
<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>

<script
	src='${pageContext.request.contextPath}/js/jquery.dataTables.min.js'></script>

<script src="${pageContext.request.contextPath}/js/excanvas.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flot.pie.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flot.stack.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery.chosen.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.uniform.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.cleditor.min.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery.noty.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.elfinder.min.js"></script>

<script src="${pageContext.request.contextPath}/js/jquery.raty.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.iphone.toggle.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.uploadify-3.1.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.gritter.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.imagesloaded.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.masonry.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.knob.modified.js"></script>

<script
	src="${pageContext.request.contextPath}/js/jquery.sparkline.min.js"></script>

<script src="${pageContext.request.contextPath}/js/counter.js"></script>

<script src="${pageContext.request.contextPath}/js/retina.js"></script>

<script src="${pageContext.request.contextPath}/js/custom.js"></script>


<!-- start: Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/img/favicon.ico">
<!-- end: Favicon -->

</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/include/header.jsp" />
	<div class="container-fluid-full">
		<div class="row-fluid">

			<!-- start: Main Menu -->
			<jsp:include page="/include/sideMenu.jsp" />

			<!-- start: Content -->
			<div id="content" class="span10">
				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a
						href="${pageContext.request.contextPath}/main">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">고객목록</a><i
						class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">고객정보</a></li>
				</ul>
				<div class="row-fluid sortable">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<h2>
								<i class="halflings-icon edit"></i> <span class="break"></span>
								Profile
							</h2>
							<div class="box-icon">
								<a href="#" class="btn-setting"><i
									class="halflings-icon wrench"></i></a> <a href="#"
									class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
								<a href="#" class="btn-close"><i
									class="halflings-icon remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							<form class="form-horizontal" action="${pageContext.request.contextPath}/emp/profile" method="POST">
								<fieldset>
									<div class="control-group">
										<label class="control-label">No</label>
										<div class="controls">
											<input type="number" class="input-xlarge uneditable-input"
												value="${empProfile.no }" name="no" readonly="readonly"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="nameInput">이름</label>
										<div class="controls">
											<input class="input-xlarge focused" id="nameInput"
												type="text" value="${empProfile.name }" name="name" required>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">ID</label>
										<div class="controls">
											<input type="text" class="input-xlarge uneditable-input"
												value="${empProfile.id }" name="id" readonly="readonly"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="passwordInput">Password
										</label>
										<div class="controls">
											<input class="input-xlarge focused" id="passwordInput"
												type="password" value="${empProfile.password }"
												name="password" required>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="emailInput">email</label>
										<div class="controls">
											<input class="input-xlarge focused" id="emailInput"
												type="text" value="${empProfile.email }" name="email"
												required>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="phoneInput">Phone</label>
										<div class="controls">
											<input class="input-xlarge focused" id="phoneInput"
												type="text" value="${empProfile.phone }" name="phone"
												required>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">Code</label>
										<div class="controls">
											<input type="text" class="input-xlarge uneditable-input"
												value="${empProfile.code }" name="code" readonly="readonly"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="phoneInput">SNS</label>
										<div class="controls">
											<input class="input-xlarge focused" id="snsInput" type="text"
												name="sns" value="${empProfile.sns }">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="faxInput">FAX</label>
										<div class="controls">
											<input class="input-xlarge focused" id="faxInput" type="text"
												value="${empProfile.fax }" name="fax">
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">부서</label>
										<div class="controls">
											<input type="text" class="input-xlarge uneditable-input"
												value="${empProfile.deptNo }" name="deptNo" readonly="readonly"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">지역</label>
										<div class="controls">
											<input type="text" class="input-xlarge uneditable-input"
												value="${empProfile.regionNo }" name="regionNo" readonly="readonly"/>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">직책</label>
										<div class="controls">
											<input type="text" class="input-xlarge uneditable-input"
												value="${empProfile.position }" name="position" readonly="readonly"/>
										</div>
									</div>
									<div class="form-actions">
										<button type="submit" class="btn btn-primary">Save
											changes</button>
										<button class="btn">Cancel</button>
									</div>
								</fieldset>
							</form>

						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->
			</div>
		</div>
	</div>

	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a> <a href="#"
				class="btn btn-primary">Save changes</a>
		</div>
	</div>

	<div class="clearfix"></div>

	<footer>

		<p>
			<span style="text-align: left; float: left">&copy; 2013 <a
				href="http://jiji262.github.io/Bootstrap_Metro_Dashboard/"
				alt="Bootstrap_Metro_Dashboard">Bootstrap Metro Dashboard</a></span>

		</p>

	</footer>
</body>
</html>