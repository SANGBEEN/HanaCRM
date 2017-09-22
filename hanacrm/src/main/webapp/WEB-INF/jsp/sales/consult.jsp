<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
	<link rel="shortcut icon" href="img/favicon.ico">
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
							<a href="#" id="consult-insert-hs"><i class="halflings-icon plus"></i></a>
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
								<th>요약</th>
								<th>상담 날짜</th>
								<th>고객 타입</th>
								<th>상태</th>
								<th>기능</th>
							  </tr>
						  </thead>   
						<tbody>
							<c:forEach items="${ consultList }" var="consultVO">						
												
							<tr class="row-minimize-hs">
								<td id="row-no-hs">${ consultVO.no }</td>
								<td>${ consultVO.customerVO.name }</td>
								<td>${ consultVO.title }</td>
								<td class="center">${ consultVO.regDate }</td>
								<td class="center">${ consultVO.customerVO.grade }</td>
								<td class="center">
									<span class="label label-success">Active</span>
								</td>
								<td class="center">
									<a class="btn btn-success" id="consult-detail-hs" href="#">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
									<a class="btn btn-info consult-update-hs" id="consult-update-hs" href="#">
										<i class="halflings-icon white edit"></i>  
									</a>
									<a class="btn btn-danger" id="consult-delete-hs" href="#">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<!-- 추가 -->
	<div class="modal hide fade" id="consultInsert">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>추가</h3>
		</div>
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label" for="focusedInput">상담 날짜</label>
				<div class="controls" id="mtr-datepicker-hs">
					<input class="input-xlarge focused" id="consultDate" type="text">
					<a href="#" class="btn btn-warning date-select-hs" id="date-select-hs">선택</a>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="focusedInput">상담 일정</label>
				<div class="controls">
				  <input class="input-xlarge focused" id="consultSchedule" type="text" value="${ consultVO.title }">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="focusedInput">상품 선택</label>
				<div class="controls">
				  <input class="input-xlarge focused" id="consultTitle" type="text" value="${ consultVO.title }">
				</div>
			</div>
			<div class="control-group">
			  <label class="control-label" for="date01">상담 요약</label>
			  <div class="controls">
				<input type="text" class="input-xlarge datepicker hasDatepicker" id="date01" value="02/16/12">
			  </div>
			</div>
			<div class="control-group">
			  <label class="control-label" for="date01">상담 내용</label>
			  <div class="controls">
				<input type="text" class="input-xlarge datepicker hasDatepicker" id="date01" value="02/16/12">
			  </div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">취소</a>
			<a href="#" class="btn btn-primary" data-dismiss="modal">확인</a>			
		</div>
	</div>
	
	<!-- 일정  선택 -->
	<div class="modal hide fade" id="consultCustomerSelect" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3>일정 선택</h3>
				</div>
				<div class="modal-body">					
					<div class="schedule-list">
						<%-- <c:forEach items="scheduleList" var="scheduleVO">
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
								<tr>
									<td>
										<div class="controls">											
									  		<input type="radio" name="optionsRadios" value="${ scheduleVO.no }">
									  	</div>
									</td>
									<td>
										<div class="controls">
										  	<span class="input-xlarge uneditable-input">${ scheduleVO }</span>
										</div>
									</td>
									<td>
										<div class="controls">
										  	<span class="input-xlarge uneditable-input">${ scheduleVO }</span>
										</div>
									</td>
								</tr>
							</table>
						</c:forEach> --%>
					</div>							
				</div>
				<div class="modal-footer">
					<a href="#" class="btn" data-dismiss="modal">취소</a>
					<a href="#" class="btn btn-primary schedule-select-hs" id="schedule-select-hs" data-dismiss="modal">확인</a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 상품  선택 -->
	<div class="modal hide fade" id="consultProductSelect" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3>상품 선택</h3>
				</div>
				<div class="modal-body">					
					<div class="product-list">
						<c:forEach items="productList" var="productVO">
							
						</c:forEach>
					</div>			
				</div>
				<div class="modal-footer">
					<a href="#" class="btn" data-dismiss="modal">취소</a>
					<a href="#" class="btn btn-primary product-select-hs" id="product-select-hs" data-dismiss="modal">확인</a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 수정 -->
	<div class="modal hide fade" id="consultUpdate">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>수정</h3>
		</div>
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label" for="focusedInput">상담 요약</label>
				<div class="controls">
				  <input class="input-xlarge focused" id="consultTitle" type="text" value="${ consultVO.title }">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="focusedInput">상담 내용</label>
				<div class="controls">
				  <input class="input-xlarge focused" id="consultContent" type="text" value="${ consultVO.content }">
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">취소</a>
			<a href="#" class="btn btn-primary" data-dismiss="modal">확인</a>
		</div>
	</div>
	
	<!-- 삭제 -->
	<div class="modal hide fade" id="consultDelete">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>삭제</h3>
		</div>
		<div class="modal-body">
			<p>삭제하시겠습니까?</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">취소</a>
			<a href="#" class="btn btn-primary" data-dismiss="modal">확인</a>
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
			/* $('.row-minimize-hs').click(function(e){
				e.preventDefault();
				$(this).next('.row-detail-hs').slideToggle();
				console.log("상세");
			});	 */
			
			$('a[id=consult-detail-hs]').click(function(e){
				e.preventDefault();
				console.log("상세");
			});			
		
			/* 수정 */
			$('a[id=consult-update-hs]').click(function(e){
				e.preventDefault();
				e.stopPropagation();
				/* $(this).parent().next('.row-detail-hs').empty(); */
				//console.log($(this).parent().parent().find('td[id=row-no-hs]'));
				$("#consultUpdate").modal();
				console.log("수정");
			});
			
			/* 삭제 */
			$('a[id=consult-delete-hs]').click(function(e){
				e.preventDefault();
				e.stopPropagation();
				/* $(this).parent().next('.row-minimize-hs').empty();
				$(this).parent().next('.row-detail-hs').empty(); */
				$("#consultDelete").modal();
				console.log("삭제");
			});
			
			/* 추가 */
			$('a[id=consult-insert-hs]').click(function(e){
				e.preventDefault();
				e.stopPropagation();	
				
				var date = new Date();
				var year = date.getFullYear();
				var month = (date.getMonth() + 1).toString();
				month = month.length == 1 ? "0" + month : month;
				var date1 = date.getDate();
				date1 = date1.length == 1 ? "0" + date1 : date1;
				
				$("#consultDate").val(month + "/" + date1 + "/" + year);
				
				$("#consultDate").datepicker();
				
				$("#consultInsert").modal();
				console.log("추가");
			});			
			
			/* 일정 선택 */
			$('a[id=date-select-hs]').click(function(e){
				e.preventDefault();
				e.stopPropagation();
				/* $(this).parent().next('.row-minimize-hs').empty();
				$(this).parent().next('.row-detail-hs').empty(); */
				
				var inputDate = $("#consultDate").val().substr(6, 4) + "-" 
								+ $("#consultDate").val().substr(0, 2) + "-" 
								+ $("#consultDate").val().substr(3, 2);
				
				console.log(inputDate);

				$.ajax({
	        		url: "${pageContext.request.contextPath}/schedule/listForConsult",
	        		type: "get",
	        		contentType: "application/json; charset=uft-8",
	        		dataType: "json",
	        		data: { 
	        				"type"	:	"Meeting", 
	        				"date"	:	inputDate
	        		}, 
	        		success: function(data){
	        			console.dir("data: " + data);
	        			//var jsonData = JSON.parse(data);	        			
	        	        //console.log("jsonData: " + jsonData);
	        	        
	        	        html = '<table class="table table-striped table-bordered bootstrap-datatable datatable">';
	        	        html += '<tr><th>번호</th><th>고객 이름</th><th>장소</th><th>일정</th></tr>';
	        	        
	        	       /*  for (var i = 0; i < jsonData.length; i++) {
	        	           // console.log("124");
	        	            html += '<tr><td><input type="radio" name="optionsRadios" value="' + jsonData[i].no + '"></td>' 
	        	            		+ '<td><span class="input-xlarge uneditable-input">' + jsonData[i].customer.name + '</span></td>' 
	        	            		+ '<td><span class="input-xlarge uneditable-input">' + jsonData[i].comments + '</span></td></tr>';
	        	        } */
	        	        
	        	        for (var i = 0; i < data.length; i++) {
		        	           // console.log("124");
		        	            html += '<tr><td><input type="radio" name="optionsRadios" value="' + data[i].no + '"></td>' 
		        	            		+ '<td><span class="input-xlarge uneditable-input">' + data[i].customer.name + '</span></td>' 
		        	            		+ '<td><span class="input-xlarge uneditable-input">' + data[i].location + '</span></td>' 
		        	            		+ '<td><span class="input-xlarge uneditable-input">' + data[i].comments + '</span></td></tr>';
		        	        }
	        	        
	        	        html += '</table>';
	        	 
	        	        document.querySelector('.schedule-list').innerHTML = html;
	        	        console.log("html: " + html);
	        	    },
	        		error: function(e){
	      				console.log(e);
	        			alert('error');
	        		}
	        	});
				
				$("#consultCustomerSelect").modal();
				console.log("일정 선택");
			});
			
			/* 일정 선택 */
			$('a[id=schedule-select-hs]').click(function(e){
				e.preventDefault();
				e.stopPropagation();
				
				var selectedScheduleNo = $('input[name="optionsRadios"]:checked').val();
				
				$("#consultProductSelect").modal();
				console.log("상품 선택");
			});
			
		</script>
	<!-- end: JavaScript-->
	
</body>
</html>