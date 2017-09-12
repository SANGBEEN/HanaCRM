<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>영업 관리 - 상담 내역</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="${pageContext.request.contextPath}/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="${pageContext.request.contextPath}/css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico">
	<!-- end: Favicon -->
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/include/header.jsp"/>
		
		<div class="container-fluid-full">
		<div class="row-fluid">
		
			<!-- 메뉴 -->
			<jsp:include page="/include/sideMenu.jsp"/>
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="${pageContext.request.contextPath}/main">Dashboard</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a href="#">영업 관리</a>
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a href="#">상담 내역</a>
				</li>
			</ul>

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>상담 내역</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
							  	<th>번호</th>	
								<th>고객 이름</th>
								<th>상담 날짜</th>
								<th>고객 타입</th>
								<th>상태</th>
								<th>기능</th>
							  </tr>
						</thead>   
						<tbody>
							<tr class="row-minimize-hs">
								<td>0</td>
								<td>Dennis Ji</td>								
								
<!-- <a href="#" class="btn-minimize-hs"><i class="halflings-icon chevron-up"></i></a> -->								

<!-- $('.btn-minimize').click(function(e){
		e.preventDefault();
		var $target = $(this).parent().parent().next('.box-content');
		if($target.is(':visible')) $('i',$(this)).removeClass('chevron-up').addClass('chevron-down');
		else 					   $('i',$(this)).removeClass('chevron-down').addClass('chevron-up');
		$target.slideToggle();
	});	 -->
						
<!-- <li>
	<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Dropdown</span></a>
	<ul style="display: block;">
		<li><a class="submenu" href="submenu.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a></li>
		<li><a class="submenu" href="submenu2.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a></li>
		<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a></li>
	</ul>	
</li>

<li><a class="dropmenu" href="#"><i class="icon-tasks"></i><span class="hidden-tablet"> 영업 관리</span></a>
	<ul>
		<li><a class="submenu" href="submenu.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a></li>
		<li><a class="submenu" href="submenu2.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a></li>
		<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a></li>
	</ul>	
</li> -->

<!-- $('.dropmenu').click(function(e){

		e.preventDefault();

		$(this).parent().find('ul').slideToggle();
	
	}); -->
								
								<td class="center">2012/01/01</td>
								<td class="center">Member</td>
								<td class="center">
									<span class="label label-success">Active</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
									<a class="btn btn-info" href="#">
										<i class="halflings-icon white edit"></i>  
									</a>
									<a class="btn btn-danger" href="#">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
							
							<tr class="row-detail-hs" style="display: none">
								<td colspan="6">
									<div>
										<a href="#">
											<img class="avatar" alt="Dennis Ji" src="${pageContext.request.contextPath}/img/avatar.jpg">
										</a>
									</div>
									<div>
										<strong>Name:</strong> <a href="#">Dennis Ji</a><br>
										<strong>Since:</strong> Jul 25, 2012 11:09<br>
										<strong>Status:</strong> <span class="label label-success">Approved</span>
									</div>																	
								</td>                                
							</tr>
							
							<!-- <tr class="row-detail-hs" style="display: none">
								<td colspan="8">
									<div class="table-detail">
										<div class="row">
											<div class="col-xs-12 col-sm-2">
												<div class="text-center">
													<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg">
													<br>
													<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
														<div class="inline position-relative">
															<a class="user-title-label" href="#">
																<i class="ace-icon fa fa-circle light-green"></i>
																&nbsp;
																<span class="white">Alex M. Doe</span>
															</a>
														</div>
													</div>
												</div>
											</div>

											<div class="col-xs-12 col-sm-7">
												<div class="space visible-xs"></div>

												<div class="profile-user-info profile-user-info-striped">
													<div class="profile-info-row">
														<div class="profile-info-name"> Username </div>

														<div class="profile-info-value">
															<span>alexdoe</span>
														</div>
													</div>

													<div class="profile-info-row">
														<div class="profile-info-name"> Location </div>

														<div class="profile-info-value">
															<i class="fa fa-map-marker light-orange bigger-110"></i>
															<span>Netherlands, Amsterdam</span>
														</div>
													</div>

													<div class="profile-info-row">
														<div class="profile-info-name"> Age </div>

														<div class="profile-info-value">
															<span>38</span>
														</div>
													</div>

													<div class="profile-info-row">
														<div class="profile-info-name"> Joined </div>

														<div class="profile-info-value">
															<span>2010/06/20</span>
														</div>
													</div>

													<div class="profile-info-row">
														<div class="profile-info-name"> Last Online </div>

														<div class="profile-info-value">
															<span>3 hours ago</span>
														</div>
													</div>

													<div class="profile-info-row">
														<div class="profile-info-name"> About Me </div>

														<div class="profile-info-value">
															<span>Bio</span>
														</div>
													</div>
												</div>
											</div>

											<div class="col-xs-12 col-sm-3">
												<div class="space visible-xs"></div>
												<h4 class="header blue lighter less-margin">Send a message to Alex</h4>

												<div class="space-6"></div>

												<form>
													<fieldset>
														<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
													</fieldset>

													<div class="hr hr-dotted"></div>

													<div class="clearfix">
														<label class="pull-left">
															<input type="checkbox" class="ace">
															<span class="lbl"> Email me a copy</span>
														</label>

														<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
															Submit
															<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
														</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</td>
							</tr> -->
							
						<c:forEach items="${ consultList }" var="consultVO">						
												
							<tr class="row-minimize-hs">
								<td>${ consultVO.no }</td>
								<td>${ consultVO.customerVO.name }</td>
								<td class="center">${ consultVO.regDate }</td>
								<td class="center">${ consultVO.customerVO.grade }</td>
								<td class="center">
									<span class="label label-success">Active</span>
								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
									<a class="btn btn-info" href="#">
										<i class="halflings-icon white edit"></i>  
									</a>
									<a class="btn btn-danger" href="#">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
							
							<tr class="row-detail-hs" style="display: none">
								<td colspan="6">
									<%-- <div>
										<a href="#">
											<img class="avatar" alt="${ consultVO.customerVO.name }" src="${pageContext.request.contextPath}/img/avatar.jpg">
										</a>
									</div> --%>
									<div>
										<strong>이름:</strong> <a href="#">${ consultVO.customerVO.name }</a><br>
										<strong>생년월일:</strong> ${ consultVO.customerVO.birthDate }<br>
										<strong>연락처:</strong> ${ consultVO.customerVO.phone }<br>
										<strong>우편번호:</strong> ${ consultVO.customerVO.post }<br>
										<strong>주소:</strong> ${ consultVO.customerVO.address }<br>
										<strong>분류:</strong> ${ consultVO.customerVO.grade }<br>
										<strong>비고:</strong> ${ consultVO.customerVO.comments }<br>
										
											<c:forEach items="${ consultVO.consultProduct }" var="consultProductVO">
												<strong>상품 종류 임시:</strong> ${ consultProductVO.type }<br>
												<strong>상품 번호 임시:</strong> ${ consultProductVO.productNo }<br>
											</c:forEach>
										
										<strong>상담 내용:</strong> ${ consultVO.content }<br>
									</div>																	
								</td>                                
							</tr>	
						
						</c:forEach>
						
						<%-- <c:forEach items="${ approve }" var="approveVO">
							<tr>
								<td>${ approveVO.userNo }</td>
								<td>${ approveVO.approveState }</td>
								<td>${ approveVO.approveKey }</td>
								<td><c:if test="${ approveVO.approveState == '신청' }">
									<button name="approveState" onclick="doApprove(${approveVO.no},'A', ${ approveVO.userNo })">승인</button>
									<button name="approveState" onclick="doApprove(${approveVO.no},'D', ${ approveVO.userNo })">거부</button>
								</c:if></td>
							</tr>
						</c:forEach> --%>
							
						</tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<!-- start: JavaScript-->

		<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	
		<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>
	
		<script src='${pageContext.request.contextPath}/js/jquery.dataTables.min.js'></script>

		<script src="${pageContext.request.contextPath}/js/excanvas.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.pie.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.stack.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.chosen.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.uniform.min.js"></script>
		
		<script src="${pageContext.request.contextPath}/js/jquery.cleditor.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.noty.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.elfinder.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.raty.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.iphone.toggle.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.gritter.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.imagesloaded.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.masonry.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.knob.modified.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.sparkline.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/counter.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/retina.js"></script>

		<script src="${pageContext.request.contextPath}/js/custom.js"></script>
		
		<script>
		
			/* 상세 보기 */
			$('.row-minimize-hs').click(function(e){
				e.preventDefault();
				$(this).next('.row-detail-hs').slideToggle();
			});
			
			/* 수정 */
			$('.btn btn-info').click(function(e){
				e.preventDefault();
				$(this).parent().next('.row-detail-hs').empty();
			});
			
			/* 삭제 */
			$('.btn btn-danger').click(function(e){
				e.preventDefault();
				$(this).parent().next('.row-minimize-hs').empty();
				$(this).parent().next('.row-detail-hs').empty();
			});
			
		</script>
	<!-- end: JavaScript-->
	
</body>
</html>