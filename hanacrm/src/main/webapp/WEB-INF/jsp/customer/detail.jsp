<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
input.hidden {
	position: absolute;
	left: -9999px;
}

#profile-image1 {
	cursor: pointer;
	width: 100px;
	height: 100px;
	border: 2px solid #03b1ce;
}

.tital {
	font-size: 16px;
	font-weight: 500;
}

.bot-border {
	border-bottom: 1px #f8f8f8 solid;
	margin: 5px 0 5px 0
}

.myInput{
	background-color: white !important;
	border : 0 !important;
}
.modifyInput{
	border: solid 1px black !important;
	
}
.profile{
	margin-left : 20px;
}

</style>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"></script>
	<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>

	<script
		src='${pageContext.request.contextPath}/js/jquery.dataTables.min.js'></script>

	<script src="${pageContext.request.contextPath}/js/excanvas.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.chosen.min.js"></script>

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

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <link id="ie-style" href="css/ie.css" rel="stylesheet">
        <![endif]-->

<!--[if IE 9]>
        <link id="ie9style" href="css/ie9.css" rel="stylesheet">
        <![endif]-->

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
					<li><i class="icon-home"></i> <a href="${pageContext.request.contextPath}/main">Home</a> 
					<i class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">고객목록</a><i class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">고객정보</a></li>
			</ul>
				<div class="row-fluid">
					<div class="span5">
						<div class="row">
							<div class="col-md-7 profile">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4> User Profile</h4>
									</div>
									<div class="panel-body">
										<div class="box box-info">
											<div class="box-body">
												<div class="col-sm-4">
													<div align="center">
														<img alt="User Pic"
															src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
															id="profile-image1" class="img-circle img-responsive">
														<input id="profile-image-upload" class="hidden"
															type="file">
														<div style="color: #999;">click here to change
															profile image</div>
														<!--Upload Image Js And Css-->
													</div>
													<br>
													<!-- /input-group -->
												</div>
												<div class="col-sm-6">
													<h4 style="color: #00b1b1;">Prasad Shankar Huddedar</h4>
													<span><p>Aspirant</p></span>
												</div>
												<div class="clearfix"></div>
												<hr style="margin: 5px 0 5px 0;">
												
												<form name="modifyForm">
												
												<div class="col-sm-5 col-xs-6 tital "> 
													No:<input type="text" class="myInput" name="no" value="${customer.no }" readonly="readonly"/> 
												</div>
												
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Name:<input type="text" class="myInput" name="name" value="${customer.name }" readonly="readonly"/> 
												</div>
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Phone:<input type="text" class="myInput" name="phone" value="${customer.phone }" readonly="readonly"/> 
												</div>
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Grade:<input type="text" class="myInput" name="grade" value="${customer.grade }" readonly="readonly"/> 
												</div>
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Address:<input type="text" class="myInput" name="address" value="${customer.address }" readonly="readonly"/> 
												</div>
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Birth Date:<input type="text" class="myInput" name="birthDate" value="${customer.birthDate }" readonly="readonly"/> 
												</div>
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Reg Date:<input type="text" class="myInput" name="regDate" value="${customer.regDate }" readonly="readonly"/>
												</div>
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Post:<input type="text" class="myInput" name="post" value="${customer.post }" readonly="readonly"/> 
												</div>
												<div class="clearfix"></div>
												<div class="bot-border"></div>

												<div class="col-sm-5 col-xs-6 tital ">
													Comments:<input type="text" class="myInput" name="comments" value="${customer.comments }" readonly="readonly"/> 
												</div>
												<input type="hidden" name="employeeNo" value="${customer.employeeNo }">
												<!-- <input type="submit" value="수정"/> -->
												</form>
												<button id="modifyBtn">수정</button>
												<!-- /.box-body -->
											</div>
											<!-- /.box -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="span7 noMarginLeft">

						<div class="dark">

							<h1>Timeline</h1>

							<div class="timeline">
								<c:forEach var="consult" items="${consultList }" varStatus="status">
									<c:choose>
										<c:when test="${status.index%2==0}">
											<div class="timeslot">
										</c:when>
										<c:otherwise>
											<div class="timeslot alt">
										</c:otherwise>
									</c:choose>
										<div class="task">
											<span> 
												<span class="type">${consult.title }</span>
												<span class="details"> ${consult.content } </span> 
												<span>  상담상품 
													<c:forEach var="product" items="${consult.consultProduct}">
														<span class="remaining"> ${product.productName} </span>
													</c:forEach>
												</span>
											</span>
											<div class="arrow"></div>
										</div>
										<div class="icon">
											<i class="icon-map-marker"></i>
										</div>
										<div class="time">${consult.regDate }</div>
	
									</div>
								</c:forEach>
				
							</div>
						</div>
					</div>
				</div>
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

	<!-- start: JavaScript-->

	
	<script>
		function modifyForm(){
			//readonly속성가져와서 readonly면 클래스가져와서 속성변경, 아니면 수정한 폼 전송 
			if($('.myInput').attr("readonly")==true){
				$('.myInput').attr("readonly",false);
				console.log("readonly");
			}
			var form = $("form[name=modifyFrom]").serialize();
			console.log(form);
			return;
		};
		
		$().ready(function() {
			$('#profile-image1').on('click', function() {
				$('#profile-image-upload').click();
			});
			
			$('#modifyBtn').click(function(){
				console.log("click");
				console.log($('.myInput')[0].value);
				
				console.log($('input.myInput')[0].readOnly);
				if($('input.myInput')[0].readOnly==true){
					$('.myInput').attr("readonly",false);
					$('.myInput').addClass('modifyInput');
					console.log("readonly");
				}else{
					//var data = JSON.stringify($('form[name="modifyForm"]').serializeArray());
					var data={};
					$('form[name="modifyForm"]').serializeArray().map(function(item){
						if(data[item.name]){
							if(typeof(data[item.name])==="string"){
								data[item.name]=[data[item.name]];
							}
							data[item.name].push(item.value);
						}else{
							data[item.name] = item.value;
						}
					});
					console.dir(JSON.stringify(data));
					
					//json을 문자열로 바꿔서 컨트롤러에서 RequestBody로 받음 
					$.ajax({
							type:'PUT',
							url:'${pageContext.request.contextPath}/customer',
							data:JSON.stringify(data),
							contentType: "application/json; charset=UTF-8",
							dataType:'json',
							error:function(xhr, status, error){
								console.log(error);
							},
							success:function(data){
								console.dir(data);
							},
					});
				}
			});
			
		});
	</script>

</body>
</html>