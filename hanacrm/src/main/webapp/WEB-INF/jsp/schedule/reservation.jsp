<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

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
<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
<!-- end: CSS -->


<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <link id="ie-style" href="css/ie.css" rel="stylesheet">
        <![endif]-->

<!--[if IE 9]>
        <link id="ie9style" href="css/ie9.css" rel="stylesheet">
        <![endif]-->

<!-- start: Favicon -->
<!-- <link rel="shortcut icon" href="img/favicon.ico"> -->
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
					<li><i class="icon-home"></i> <a href="${pageContext.request.contextPath}/main">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">신청 목록</a></li>
				</ul>

				<div class="row-fluid sortable">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<h2>
								<i class="halflings-icon user"></i><span class="break"></span>신청 내역
							</h2>
							<div class="box-icon">
								<a id="addModal">
									<i class="halflings-icon plus"></i>
								</a> 
								<a href="#"
									class="btn-minimize">
									<i class="halflings-icon chevron-up"></i>
								</a>
								<a href="#" class="btn-close">
									<i class="halflings-icon remove"></i>
								</a>
							</div>
						</div>
						<div class="box-content">
							<table
								class="table table-striped table-bordered bootstrap-datatable datatable">
								<thead>
									<tr>
										<th>Name</th>
										<th>Phone</th>
										<th>Grade</th>
										<th>Location</th>
										<th>Start_date</th>
										<th>End_date</th>
										<th>Message</th>
										<th>Reg_date</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody id="table-data">
									<c:forEach var="reservation" items="${reservationList}">
										<tr id="${reservation.no}">
											<td>${reservation.name}</td>
											<td class="center">${reservation.phone }</td>
											<td class="center">
												<c:choose>
													<c:when test="${reservation.customer.grade=='잠재'}">
														<span class="label"><%-- ${reservation.customer.grade}</span> --%>
													</c:when>
													<c:when test="${reservation.customer.grade=='신규'}">
														<span class="label label-success"><%-- ${reservation.customer.grade}</span> --%>
													</c:when>
													<c:when test="${reservation.customer.grade=='기존'}">
														<span class="label label-warning"><%-- ${reservation.customer.grade}</span> --%>
													</c:when>
													<c:when test="${reservation.customer.grade=='핵심'}">
														<span class="label label-important"><%-- ${reservation.customer.grade}</span> --%>
													</c:when>
													<c:otherwise>
													</c:otherwise>
												</c:choose>
													${reservation.customer.grade}</span>
											</td>
											<td class="center">${reservation.location}</td>
											<td class="center">${reservation.startDate}</td>
											<td class="center">${reservation.endDate}</td>
											<td class="center">${reservation.msg}</td>
											<td class="center">${reservation.regDate}</td>
											<td class="center" id="actionColum${reservation.no}">
												 <c:choose>
													<c:when test="${reservation.status=='N'}">
														취소됨
													</c:when>
													<c:otherwise>
															<a class="btn btn-info" id="agree" href="#" data-reservation='${reservation}' <%-- onclick='clickAgree(${reservation})' --%>>
																	<i class="halflings-icon check"></i>
															</a> 
															
														    <a class="btn yellow" id="disagree" href="#" data-reservation='${reservation}' <%-- onclick="clickDisagree('${reservation.no}')" --%>>
														    		<i class="halflings-icon remove-circle"></i>
												    		</a>
													</c:otherwise>
												</c:choose>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->			

			</div>
			<!--/.fluid-container-->
			<!-- end: Content -->
		</div>
		<!--/#content.span10-->
	</div>
	<!--/fluid-row-->
	
	<!-- comments 입력 -->
	<div class="modal hide fade" id="commentsModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>예약 확인</h3>
		</div>
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label" for="focusedInput">전달할 메시지</label>
				<div class="controls">
					<input class="input-xlarge focused" id="comments" type="text"></input>
				</div>
			</div>
		</div>		
		<div class="modal-footer">
			<a href="#" class="btn btn-primary" id="updateBtn">입력</a>
			<a href="#" class="btn" data-dismiss="modal">취소</a>
			<!-- <a href="#" class="btn btn-primary" id="consult-insert-complete-hs" data-dismiss="modal">확인</a> -->			
		</div>
	</div>

	<div class="clearfix"></div>
	
	<jsp:include page="/include/footer.jsp"/>

	<!-- start: JavaScript-->
	<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>

	<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>

	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>

	<script src='${pageContext.request.contextPath}/js/moment.min.js'></script>
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
		
		function sleep(num){	//[1/1000초]
			 var now = new Date();
			   var stop = now.getTime() + num;
			   while(true){
				 now = new Date();
				 if(now.getTime() > stop)return;
			   }
		}
		
		function myCheck(){
			if(window.confirm('삭제하시겠습니까?')==true)
				return true;
			return false;
		}
		
		function clickAgree(reservation){
			console.log(reservation);
		}
		
		$('a[id=agree]').click(function(){
			//$('#commentsModal').modal('show');
			var reservation = $(this).data('reservation');
			console.log(reservation.location);
			
		//	$('#commentsModal').find('a[id=updateBtn]').click(function(){
				
				var reservationData = {
						no: reservation.no,
						status: 'Y',
						comments: "예약되었습니다.",
						location: reservation.location,
						phone: reservation.phone,
						customerNo: reservation.customerNo,
						startDate: reservation.startDate,
						endDate: reservation.endDate,
						regDate: reservation.regDate,
						type: reservation.type,
						employeeNo: reservation.employeeNo,
						msg: reservation.msg
					};
				
				if(window.confirm('등록하시겠습니까?')==true){
					updateReservation(reservationData);
				}
				
				/* $.ajax({
					url: '${pageContext.request.contextPath}/schedule/reservation',
					type: 'put',
					contentType: "application/json; charset=uft-8",
					data: JSON.stringify(reservationData),
					success: function(data){
						if(data==1) $('#'+reservationNo).remove();
					}
				}); */
		//	});
		});
		
		$('a[id=disagree]').click(function(){
			var reservation = $(this).data('reservation');
			var reservationData = {
					no: reservation.no,
					status: 'N',
					comments: $('input[id=comments]').val()
				};
			
			
			$('#commentsModal').modal('show');
			
			$('#commentsModal').find('a[id=updateBtn]').click(function(){
				updateReservation(reservationData);
			});
			
			/* $('#commentsModal').modal('show');
			var reservationNo = $(this).data('reservation');
			
			$('#commentsModal').find('a[id=updateBtn]').click(function(){
				$.ajax({
					url: '${pageContext.request.contextPath}/schedule/reservation',
					type: 'put',
					contentType: "application/json; charset=uft-8",
					data: JSON.stringify({
						no: reservationNo,
						status: 'N',
						comments: $('input[id=comments]').val()
					}),
					success: function(data){
						if(data==1) $('#'+reservationNo).remove();
					}
				});							
			}); */
		});
		
		function updateReservation(reservationData){
		
			if(reservationData.status=='N')
				reservationData.comments = $('input[id=comments]').val();
			
			console.log(reservationData);
	
			  $.ajax({
					url: "${pageContext.request.contextPath}/schedule/reservation",
					type: "put",
					contentType: "application/json; charset=uft-8",
					data: JSON.stringify(reservationData),
					success: function(data){
						if(data==1){
							if(reservationData.status=='N'){
								$('#commentsModal').modal('hide');
								$('#actionColum'+reservationData.no).empty();
								$('#actionColum'+reservationData.no).text('취소됨');
							}else {
								$('#'+reservationData.no).remove();						
							}
						}
						console.log(reservationData);
					},
					error: function(e){
						alert('error');
					}
				});
			
		};
	
	</script>
	<!-- end: JavaScript-->
</body>
</html>