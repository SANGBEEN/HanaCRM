<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>영업지원 시스템 - 상담 예약 관리</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid,
        Retina">
<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- start: JavaScript-->
	<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>
	<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script src='${pageContext.request.contextPath}/js/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>
	<script src='${pageContext.request.contextPath}/js/jquery.dataTables.js'></script>
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
	<!--  end: JavaScript -->
	
<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
</head>

<body>
	<jsp:include page="/include/header.jsp" />
	<div class="container-fluid-full">
		<div class="row-fluid">
			<jsp:include page="/include/sideMenu.jsp" />
			<div id="content" class="span10">
				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="${pageContext.request.contextPath}/main">Home</a>
					<i class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/schedule/list">일정 관리</a>
					<i class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/schedule/reservation">상담 예약 관리</a></li>
				</ul>

				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<h2>
								상담 예약 내역
							</h2>
						</div>
						<div class="box-content">
							<table
								class="table table-striped table-bordered bootstrap-datatable datatable">
								<thead>
									<tr>
										<th style="width:3%; text-align:center">번호</th>
										<th style="width:7%; text-align:center">분류</th>
										<th style="width:5%; text-align:center">이름</th>
										<th style="width:10%; text-align:center">전화번호</th>
										<th style="width:5%; text-align:center">고객등급</th>
										<th style="width:15%; text-align:center">장소</th>
										<th style="width:7%; text-align:center">희망시작일시</th>
										<th style="width:7%; text-align:center">희망종료일시</th>
										<th style="width:20%; text-align:center">메세지</th>
										<th style="width:10%; text-align:center">수락/거절</th>
									</tr>
								</thead>
								
								<tbody id="table-data">
									<c:forEach var="reservation" items="${reservationList}" varStatus="status">
										<tr id="${reservation.no}">
											<td style="text-align:center; vertical-align:middle">${status.count}</td>
											<td style="text-align:center; vertical-align:middle">${reservation.type}</td>
											<td style="text-align:center; vertical-align:middle"> ${reservation.name}</td>
											<td class="center" style="text-align:center; vertical-align:middle">${reservation.phone }</td>
											<td class="center" style="text-align:center; vertical-align:middle">
												<c:choose>
													<c:when test="${reservation.customer.grade=='잠재'}">
														<span class="label">${reservation.customer.grade}</span>
													</c:when>
													<c:when test="${reservation.customer.grade=='신규'}">
														<span class="label label-success">${reservation.customer.grade}</span>
													</c:when>
													<c:when test="${reservation.customer.grade=='기존'}">
														<span class="label label-warning">${reservation.customer.grade}</span>
													</c:when>
													<c:when test="${reservation.customer.grade=='핵심'}">
														<span class="label label-important">${reservation.customer.grade}</span>
													</c:when>
													<c:otherwise>
													</c:otherwise>
												</c:choose>
													
											</td>
											<td style="text-align:center; vertical-align:middle">${reservation.location}</td>
											<td style="text-align:center; vertical-align:middle">${reservation.startDate}</td>
											<td style="text-align:center; vertical-align:middle">${reservation.endDate}</td>
											<td style="text-align:center; vertical-align:middle">${reservation.msg}</td>
											<td style="text-align:center; vertical-align:middle" id="actionColum${reservation.no}">
												 <c:choose>
													<c:when test="${reservation.status=='N'}">
														취소됨
													</c:when>
													<c:otherwise>
														<a class="btn btn-info" id="agree" href="#" data-reservation='${reservation}' <%-- onclick='clickAgree(${reservation})' --%>>
															<!-- <i class="halflings-icon check"></i> -->
															수락
														</a> 
														
													    <a class="btn yellow" id="disagree" href="#" data-reservation='${reservation}' <%-- onclick="clickDisagree('${reservation.no}')" --%>>
												    		<!-- <i class="halflings-icon remove-circle"></i> -->
												    		거절
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
			<h3>전달 메시지 입력</h3>
		</div>
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label" for="focusedInput">전달할 메시지</label>
				<div class="controls">
					<input class="input-xlarge focused" id="comments" type="text" placeholder="연락드리겠습니다."></input>
				</div>
			</div>
		</div>		
		<div class="modal-footer">
			<a href="#" class="btn btn-primary" id="updateBtn">전송</a>
			<a href="#" class="btn" data-dismiss="modal">취소</a>
			<!-- <a href="#" class="btn btn-primary" id="consult-insert-complete-hs" data-dismiss="modal">확인</a> -->			
		</div>
	</div>

	<div class="clearfix"></div>
	
	<jsp:include page="/include/footer.jsp"/>

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
					comments: $('input[id=comments]')[0].placeholder
				};
			
			$('#commentsModal').modal('show');
			
			$('#commentsModal').find('a[id=updateBtn]').click(function(){
				if($('input[id=comments]').val()!=null || $('input[id=comments]').val()!=""){
					reservationData.comments = $('input[id=comments]').val();
					console.log(reservationData.comments);
				}
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
		
			/* if(reservationData.status=='N')
				reservationData.comments = $('input[id=comments]').val(); */
			
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
					},
					error: function(e){
					//	alert('error');
					}
				}); 
						 console.log(reservationData);
			
		};
	</script>
	<!-- end: JavaScript-->
</body>
</html>