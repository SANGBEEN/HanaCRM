<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>영업지원 시스템 - 상담 내역</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
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
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="shortcut icon" href="img/favicon.ico">
	
	<style>
		.basicColor{
			background-color: #008485 !important;
			border-color:#008485 !important;
		}

		.basicColor:hover{
			background-color: #008485 !important;
			border-color:#008485 !important;
			opacity:0.7 !important;
		}
		
		th {
			text-align: center;
		}
		
		/* .modal-dialog.modal-fullsize {
			width: 100%;
  			height: 100%;
  			margin: 0;
  			padding: 0;
  		}
  		
  		.modal-content.modal-fullsize {
		  	height: auto;
		  	min-height: 100%;
		  	border-radius: 0; 
		}
		
		.modal {
			width: 80%;
			height: auto;
			min-height: 50%;
			margin: 0;
  			padding: 0;
		} */

	</style>
</head>
<body>
	<jsp:include page="/include/header.jsp"/>
	
		<div class="container-fluid-full">
		<div class="row-fluid">
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
					<a href="${pageContext.request.contextPath}/main">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/sales/consult">영업 관리</a>
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a>상담 내역</a>
				</li>
			</ul>

			<div class="row-fluid">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>
							상담 내역
						</h2>
						<div class="box-icon">
							<a id="consult-insert-hs" style="cursor: pointer;">
								<i class="halflings-icon plus white"></i>
							</a>
						</div>
					</div>
					
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								<th style="width:5%; text-align:center">번호</th>	
								<th style="width:15%; text-align:center">고객 이름</th>
								<th style="width:30%; text-align:center">요약</th>
								<th style="width:15%; text-align:center">상담 날짜</th>
								<th style="width:9%; text-align:center">타입</th>
								<th style="width:10%; text-align:center">상태</th>
								<!-- <th style="width:6%; text-align:center">상세보기</th>
								<th style="width:6%; text-align:center">수정</th> -->
								<th style="width:8%; text-align:center">상세보기</th>
								<th style="width:8%; text-align:center">삭제</th>
							  </tr>
						  </thead>   
						<tbody>
							<c:forEach items="${ consultList }" var="consultVO" varStatus="status">						
							<tr id="tr${ consultVO.no }"> <!-- class="row-minimize-hs"> -->
								<td id="row-no-hs" style="text-align:center">${ status.count }</td>
								<td style="text-align:center">${ consultVO.customerVO.name }</td>
								<td>${ consultVO.title }</td>
								<td style="text-align:center">${ consultVO.regDate }</td>
								<td style="text-align:center">${ consultVO.customerVO.grade }</td>
								<td style="text-align:center">
									<span class="label label-success">Active</span>
								</td>
								<%-- <td style="text-align:center">
									<a class="btn btn-success" id="consult-detail-hs" href="#" data-consult_no="${ consultVO.no }">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
								</td>
								<td style="text-align:center">
									<a class="btn btn-info" id="consult-update-hs" href="#" data-consult_no="${ consultVO.no }">
										<i class="halflings-icon white edit"></i>  
									</a>
								</td> --%>
								<td style="text-align:center">
									<a class="btn btn-success" id="consult-detail-hs" href="#" data-consult_no="${ consultVO.no }">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
								</td>
								<td style="text-align:center">
									<a class="btn btn-danger" id="consult-delete-hs" href="#" data-consult_no="${ consultVO.no }">
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

		
	<!-- 상담 내역 상세 -->
	<%-- <c:forEach items="${ consultList }" var="consultVO">
		<div class="modal hide fade" id="consultDetail${ consultVO.no }">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>상담 내역 상세</h3>
			</div>
			<div class="modal-body">
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
					
					<strong>상담 내용:</strong> <div id="consultVO-content-hs">${ consultVO.content }</div><br>
				</div>			
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">닫기</a>
			</div>
		</div>
	</c:forEach> --%>
	
	<!-- 상세보기 및 수정 -->
	<div class="modal hide fade" id="consultDetail">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3>상담 상세 보기</h3>
				</div>
				<div class="modal-body">
					<div id="consult-detail-table-hs">
					
					</div>			
				</div>
				<div class="modal-footer">
					<!-- <a class="btn btn-success" id="customer-detail-hs">고객 정보</a> -->	
					<a href="#" class="btn basicColor" id="consult-update-complete-hs">수정</a>
					<a href="#" class="btn" id="consult-insert-cancel-hs" data-dismiss="modal">닫기</a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 일정  선택 -->
	<div class="modal hide fade" id="consultScheduleSelect">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3>일정 선택</h3>
				</div>
				<div class="modal-body">
					<div class="control-group">
						<label class="control-label" for="consult-date-hs">상담 날짜</label>
						<div class="controls">
							<input class="input-xlarge focused" id="consult-date-hs" type="date" style="vertical-align: baseline;">
							<!-- <a href="#" class="btn yellow" id="date-select-hs">선택</a> -->					
						</div>
					</div>				
					<div id="schedule-list-hs">
						
					</div>							
				</div>
				<div class="modal-footer">
					<a href="#" class="btn basicColor" id="schedule-select-hs" >다음</a>
					<a href="#" class="btn" id="consult-insert-cancel-hs" data-dismiss="modal">취소</a>					
				</div>
			</div>
		</div>
	</div>		
	
	<!-- 상품  선택 -->
	<div class="modal hide fade" id="consultProductSelect">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3 id="product-count">상품 선택</h3>					
				</div>
				<div class="modal-body">				
					<div class="row-fluid">		
						<div class="box span12">					
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" id="type-select-hs" data-product_type="1" href="#product-list-hs">예금</a></li>
								<li><a data-toggle="tab" id="type-select-hs" data-product_type="2" href="#product-list-hs">적금</a></li>
								<!-- <li><a data-toggle="tab" id="type-select-hs" data-product_type="3" href="#product-list-hs">카드</a></li> -->
							</ul>				
							<!-- <div class="box-header" data-original-title>
								<h2 id="tab-name-hs"></h2>								
							</div> -->
							<div class="box-content" id="product-list-hs">
								
							</div>
						</div><!--/span-->					
					</div><!--/row-->
				</div>
				<div class="modal-footer">
					<a href="#" class="btn basicColor" id="product-select-hs">다음</a>
					<a href="#" class="btn" id="consult-insert-cancel-hs" data-dismiss="modal">취소</a>					
				</div>
			</div>
		</div>
	</div>
	
	<!-- 선택한 상품 출력 -->
	<div class="modal hide fade" id="selectedProduct">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>선택한 상품</h3>
		</div>
		<div class="modal-body">
			<div id="selected-product-list-hs">
			
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">닫기</a>
		</div>
	</div>
	
	<!-- 상담 내용 입력 -->
	<div class="modal hide fade" id="consultContentInsert">
	
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h3>상담 내용 입력</h3>
				</div>
				<div class="modal-body">
					<div id="consult-insert-table-hs">
					
					</div>			
				</div>
				<div class="modal-footer">
					<a href="#" class="btn basicColor" id="consult-insert-complete-hs">확인</a>
					<a href="#" class="btn" id="consult-insert-cancel-hs" data-dismiss="modal">취소</a>
				</div>
			</div>
		</div>							
	</div>	
	
	<!-- 고객정보 상세보기 -->
	<div class="modal hide fade" id="customerDetail">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>고객정보</h3>
		</div>
		<div class="modal-body">
			<div id="customer-detail-table-hs">
			
			</div>			
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">닫기</a>
		</div>
	</div>
	
	<!-- 상품 재선택 -->
	<div class="modal hide fade" id="productReselect">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>상품 선택</h3>
		</div>
		<div class="modal-body">
			<div class="row-fluid">		
				<div class="box span12">					
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" id="type-select-hs" data-product_type="1" href="#product-reselect-list-hs">예금</a></li>
						<li><a data-toggle="tab" id="type-select-hs" data-product_type="2" href="#product-reselect-list-hs">적금</a></li>
						<!-- <li><a data-toggle="tab" id="type-select-hs" data-product_type="3" href="#product-reselect-list-hs">카드</a></li> -->
					</ul>				
					<!-- <div class="box-header" data-original-title>
						<h2 id="tab-name-hs"></h2>								
					</div> -->
					<div class="box-content" id="product-reselect-list-hs">
						
					</div>
				</div><!--/span-->					
			</div><!--/row-->
		</div>
		<div class="modal-footer">
			<a href="#" class="btn basicColor">다음</a>
			<a href="#" class="btn" data-dismiss="modal">취소</a>			
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
			<a href="#" class="btn btn-important" id="consult-delete-complete-hs">삭제</a>
			<a href="#" class="btn" data-dismiss="modal">취소</a>			
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<jsp:include page="/include/footer.jsp"/>
	
		<script>		
			/* 상세 보기 */
			/* $('.row-minimize-hs').click(function(e){
				e.preventDefault();
				$(this).next('.row-detail-hs').slideToggle();
				console.log("상세");
			});	 */
			
			$('#myModal').on('hidden.bs.modal', function() {
				$(this).removeData();
			});			
			
			/* $('a[id=consult-detail-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				//var consultVO = JSON.parse($(this).val());
				
				var consultDetailNo = $(this).data('consult_no');
				//console.log($(this).data('consultVO'));
				
				//var consultVONo = $(this).parent().parent().children('td[id=row-no-hs]').text();
				//console.log(consultVONo);
				
				//console.dir(consultList);
				console.log(consultDetailNo);
				$('#consultDetail'+consultDetailNo).modal();
				console.log("상세");
			}); */
						
			/* 상담 날짜 선택 */
			$('a[id=consult-insert-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();	
				
				document.getElementById('consult-date-hs').valueAsDate = new Date();
				
				selectDate();
				
				$('#consultScheduleSelect').modal();
				console.log("추가");
			});			
			
			/* 일정 선택 */
			$('a[id=date-select-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				/* $(this).parent().next('.row-minimize-hs').empty();
				$(this).parent().next('.row-detail-hs').empty(); */
				
				selectDate();
				
				console.log("일정 선택");
			});
			
			$(document).on('change', 'input[id=consult-date-hs]', function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				selectDate();
				
				console.log("날짜 바뀜");
			});
			
			function selectDate() {
				var inputDate = $('#consult-date-hs').val();
				
				console.log(inputDate);

				$.ajax({
	        		url: "${pageContext.request.contextPath}/schedule/listByTypeForConsult",
	        		type: "get",
	        		/* contentType: "application/json; charset=uft-8", */
	        		dataType: "json",
	        		data: { 
	        				"type"	:	"Meeting", 
	        				"date"	:	inputDate
	        		}, 
	        		success: function(schedule) {
	        	        var html = '<table class="table table-striped table-bordered bootstrap-datatable datatable">';
	        	        html += '<thead><tr><th style="text-align:center;">선택</th><th style="text-align:center;">고객 이름</th><th style="text-align:center;">장소</th><th style="text-align:center;">일정 내용</th><th style="text-align:center;">일시</th></tr></thead><tbody>';
	        	        
	        	        for (var i = 0; i < schedule.length; i++) {
		        	            html += '<tr><td style="text-align: center;"><input type="radio" name="optionsRadios" style="vertical-align: baseline;" data-schedule_no="' + schedule[i].no + '" data-customer_no="' + schedule[i].customer.no + '"></td>' 
		        	            		+ '<td>' + schedule[i].customer.name + '</td>' 
		        	            		+ '<td>' + schedule[i].location + '</td>' 
		        	            		+ '<td>' + schedule[i].comments + '</td>'
		        	            		+ '<td>' + schedule[i].startDate + '</td></tr>';
	        	        }
	        	        
	        	        html += '</tbody></table>';
	        	 
	        	        //document.querySelector('#schedule-list').innerHTML = html;
	        	        //console.log("html: " + html);
	        	        $('div[id=schedule-list-hs]').html(html);
	        	        
	        	        $('.datatable').dataTable({
	        				//"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
	        				"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12 center'p>>",
	        				"sPaginationType": "bootstrap",
	        				"bRetrieve": true,
	        				//"bDestroy": true,
	        				"oLanguage": {
	        				"sLengthMenu": "_MENU_ 개씩 보기"
	        				}
	        			} );
	        	    },
	        		error: function(e) {
	      				console.log(e);
	        			alert('error');
	        		}
	        	});
			}
			
			var consultJson;
			
			/* 선택한 상품들 담는 배열 */
			var selectedProduct = [];
			
			/* 상품 선택 */
			$('a[id=schedule-select-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				var radioChecked = $('input[name="optionsRadios"]:checked').val();
				
				if (radioChecked == "on") {
					/* var selectedSchedule = [
						$('input[name="optionsRadios"]:checked').data('schedule_no'),
						$('input[name="optionsRadios"]:checked').data('customer_no')
					]; */
					
					consultJson = {
							"customerVO": {
								"no": $('input[name="optionsRadios"]:checked').data('customer_no'),
								"name": $('input[name="optionsRadios"]:checked').parent().next('td').text(),
							},
							"customerNo": $('input[name="optionsRadios"]:checked').data('customer_no'),
							"regDate": $('input[name="optionsRadios"]:checked').parent().next('td').next('td').next('td').next('td').text(),
							"content": null,
							"title": null,
							"consultProduct": {}
					};
					
					console.log("스케줄 넘버버버: " + consultJson);
					
					//getList(1);
	////////////////////				
					$('div[id=product-list-hs]').html(getList(1));
	    	        
	    	        $('.datatable').dataTable({
	    				//"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
	    				"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12 center'p>>",
	    				"sPaginationType": "bootstrap",
	    				"bRetrieve": true,
	    				//"bDestroy": true,
	    				"oLanguage": {
	    				"sLengthMenu": "_MENU_ 개씩 보기"
	    				}
	    			} );
					
					$('#consultScheduleSelect').modal("hide");
					$('#consultProductSelect').modal();
					console.log("상품 선택");
				} else {
					alert("일정을 선택하세요.");
				}				
			});
			
			/* 탭에 따른 상품 목록 출력 */
			$(document).on('click.tab.data-api', '[data-toggle="tab"]', function(e) {
			    e.preventDefault();
			    
			    $(this)
			    //getList($(this).data('product_type'));
////////////////////			    
				$('div[id=' + e.target.id + ']').html(getList($(this).data('product_type')));
    	        
    	        $('.datatable').dataTable({
    				//"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
    				"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12 center'p>>",
    				"sPaginationType": "bootstrap",
    				"bRetrieve": true,
    				//"bDestroy": true,
    				"oLanguage": {
    				"sLengthMenu": "_MENU_ 개씩 보기"
    				}
    			} );
			});
			
			/* 상품 목록 출력하는 함수 */
			function getList(type) {
				var productListByType;
				
				$.ajax({
	        		url: "${pageContext.request.contextPath}/sales/product/" + type,
	        		type: "get",
	        		dataType: "json",
	        		async: false,
	        		success: function(product) {	        			
	        			//$('h2[id=tab-name-hs]').html('<i class="halflings-icon book"></i><span class="break"></span>' + $('li[class=active]').find('a[id=type-select-hs]').text());
	        			
	        	        var html = '<table class="table table-striped table-bordered bootstrap-datatable datatable">';
	        	        html += '<thead><tr><th style="text-align:center;">선택</th><th style="text-align:center;">금융상품코드</th><th style="text-align:center;">금융상품명</th></tr></thead><tbody>'; /* <th>적립유형명</th></tr></thead><tbody>'; */
	        	        
	        	        for (var i = 0; i < product.length; i++) {		        	        	
	        	            html += '<tr><td style="text-align: center;"><input type="checkbox" id="product-checkbox" style="vertical-align: baseline;" data-product_type="' + type + '" data-product_json=\'' + JSON.stringify(product[i]) + '\'>' + 
	        	            '</td><td>' + product[i].finPrdtCd + 
	        	            '</td><td>' + product[i].finPrdtNm + 
	        	            '</td></tr>';
	        	            		/* + '<td><span class="input-xlarge uneditable-input">' + product[i].comments + '</span></td></tr>'; */
	       	        	}
	        	        
	        	        html += '</tbody></table>';
	        	        
	        	        //console.log(html);
	        	 
	        	        //document.querySelector('#product-list').innerHTML = html;
	        	        /* $('div[id=product-list-hs]').html(html);
	        	        
	        	        $('.datatable').dataTable({
	        				//"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
	        				"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12 center'p>>",
	        				"sPaginationType": "bootstrap",
	        				"bRetrieve": true,
	        				//"bDestroy": true,
	        				"oLanguage": {
	        				"sLengthMenu": "_MENU_ 개씩 보기"
	        				}
	        			} ); */
	        			
	        	        productListByType = html;
	        	    },
	        		error: function(e) {
	      				console.log(e);
	        			alert('준비중입니다.');
	        		}
	        	});
				
				console.log("탭 선택");
				
				return productListByType;
			}			
			
			/* 선택한 상품 담아두기 */
			$(document).on('change', 'input[id=product-checkbox]', function(e) {
			//$('input:checkbox[id="product-checkbox"]').on('click', function(){
				if ($(this).prop("checked")) {
					$('#product-count').html('상품 선택 <span class="badge-important" id="selected-product-detail-hs" style="padding-left:6px; padding-right:6px; padding-top:2px; padding-bottom:2px; font-size:0.7rem; border-radius: 10px;"> ' + 
							selectedProduct.push({
								type : $('li[class=active]').find('a[id=type-select-hs]').data('product_type'),
								productJson : $(this).data('product_json')
							})					
							+ ' </span>');				
				} else {
					console.dir($(this).data('product_json'));
					
					var selectedLength = selectedProduct.length;
					
					for(var i = 0; i < selectedLength; i++){
						var shiftProduct = selectedProduct.shift();
						var selectedProductJson = $(this).data('product_json');
						console.log(shiftProduct['productJson']['no']);
						if (shiftProduct['productJson']['no'] == selectedProductJson['no'] && shiftProduct['type'] == $('li[class=active]').find('a[id=type-select-hs]').data('product_type')){
							$('#product-count').html(selectedProduct.length == 0 ? '상품 선택 <span class="label label-important" id="selected-product-detail-hs"></span>' : '상품 선택 <span class="label label-important" id="selected-product-detail-hs"> ' + selectedProduct.length + ' </span>');
							console.log("selectedProductJson['no'] : " + selectedProductJson['no']);
							//break;
						} else {
							selectedProduct.push(shiftProduct);
						}
					}					
				}				
				//$('#product-count').html('상품 선택 <span class="label label-important"> ' + selectedProduct.length + ' </span>');								
			});
			
			/* 선택한 상품 조회 */
			$(document).on('click', 'span[id=selected-product-detail-hs]', function() {
				var html = "<<<<<<<<<<선택한 상품들>>>>>>>>>> <br>";
				
				for (var i = 0; i < selectedProduct.length; i++) {
					html += (selectedProduct[i]['productJson']['finPrdtNm'] + "<br>");					
				}
				
				$('div[id=selected-product-list-hs]').html(html);
				
				$('#selectedProduct').modal();
			});
			
			/* 상품 선택 완료 및 내용 입력 */
			$('a[id=product-select-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				var html = '<table class="table table-striped table-bordered">' 
       				+ '<tr><th style="text-align:center;">상담 일시</th><td>' + consultJson['regDate'] + '</td></tr>' 
       				+ '<tr><th style="text-align:center;">고객명</th><td>' + consultJson.customerVO.name + '</td></tr>'
       				//+ '<tr><th>상담 요약</th><td>' + consult.title + '</td></tr>'
       				+ '<tr><th style="text-align:center;">상담 상품</th><td><div><ul class="messagesList">';
       			
       			for (var i = 0; i < selectedProduct.length; i++) {
   					//$('<span class="input-xlarge uneditable-input">' + selectedProduct[i]['productJson']['finPrdtNm'] + '</span>').appendTo('div[id=consult-product-input-hs]');
       				html += '<li><span id="product-span-hs" data-product_type="' + selectedProduct[i].type + '" data-product_no="' + selectedProduct[i]['productJson']['no'] + '">' + selectedProduct[i]['productJson']['finPrdtNm'] + '</span></li>';
   				}
       			
       			html += '</ul></div></td></tr>'
       				+ '<tr><th style="text-align:center;">상담 내용</th><td><textarea id="consult-content-hs"></textarea></td></tr>' 
       				+ '</table>';
       			
       			$('div[id=consult-insert-table-hs]').html(html);
        			
        			
        			
        			
        			
        			
        			
    			/* 	<div class="control-group">
    					<label class="control-label">상담 일시</label>
    					<div class="controls">
    				  		<span class="input-xlarge uneditable-input" id="consult-date-input-hs">내용</span>
    					</div>
    			  	</div>
    			  	<div class="control-group">
    					<label class="control-label">선택된 상품</label>
    					<div class="controls" id="consult-product-input-hs">
    					
    					</div>
    			  	</div>
				
				for (var i = 0; i < selectedProduct.length; i++) {
					$('<span class="input-xlarge uneditable-input">' + selectedProduct[i]['productJson']['finPrdtNm'] + '</span>').appendTo('div[id=consult-product-input-hs]');
				}
				
				selectedProduct = [];
				
				$('span[id=consult-date-input-hs]').text(consultJson['regDate']); */
				
				$('#consultProductSelect').modal('hide');
				$('#consultContentInsert').modal();
			});			
			
			/* 추가 완료 */
			$('a[id=consult-insert-complete-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				var productListJson = [];
				
				for (var i = 0; i < selectedProduct.length; i++) {
					productListJson.push({
							"type": selectedProduct[i]['type'],
							"productNo": selectedProduct[i]['productJson']['no']
					});
				}
				
				var content = $('textarea[id="consult-content-hs"]').val();
				
				consultJson["content"] = content;
				consultJson["title"] = content.length > 20 ? content.substring(0, 20) + "..." : content;
				consultJson["consultProduct"] = productListJson;
				
				console.log(consultJson);
				
				$.ajax({	
	        		url: "${pageContext.request.contextPath}/sales/consult",
	        		type: "post",
	        		contentType: "application/json; charset=utf-8",
	        		data: JSON.stringify(consultJson),
	        		success: function(consultNo) {
	        			console.log(consultNo + "번 추가 완료");
	        			consultJson = null;
	        			selectedProduct = [];	        		
	        			$('#consultContentInsert').modal('hide');
	        			location.href = '${pageContext.request.contextPath}/sales/consult';
					},
	        		error: function(e) {
	        			console.log(e);
	        			alert('error');
					}
				});									
			});
			
			$('#consult-insert-cancel-hs').on('click', function() {
				selectedProduct = [];
				
				$(this).removeData();
			});
		
			/* 상세보기 및 수정 */
			//$('a[id=consult-update-hs]').click(function(e) {
			$('a[id=consult-detail-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				var consultDetailNo = $(this).data('consult_no');
				
				$.ajax({	
	        		url: "${pageContext.request.contextPath}/sales/consult/" + consultDetailNo,
	        		type: "get",
	        		dataType: "json",
	        		success: function(consult) {
	        			console.log(consult);
	        			
	        			var html = '<table class="table table-striped table-bordered">' 
	        			+ '<tr><th style="text-align:center;">상담 일시</th><td>' + consult.regDate + '</td></tr>' 
	        			+ '<tr><th style="text-align:center;">고객명</th><td><a id="customer-detail-hs" href="#">' + consult.customerVO.name + '<i class="halflings-icon user"></i></a></td></tr>'
	        			//+ '<tr><th>상담 요약</th><td>' + consult.title + '</td></tr>'
	        			+ '<tr><th style="text-align:center;">상담 상품 <button id="product-reselect-hs">선택</button></th><td><div><ul class="messagesList">';
	        			
	        			var productMapList = [];
	        			
	        			for (var i = 0; i < consult.consultProduct.length; i++) {
	        				productMapList.push({
	        					"type" : consult.consultProduct[i].type,
	        					"productNo" : consult.consultProduct[i].productNo
	        				});
						}
	        			//console.log(consult.consultProduct);
	        			//console.log(productMapList);
	        			var productList = getProductDetailList(productMapList);
	        			
	        			//var productList = getProductDetailList(consult.consultProduct);
	        			console.log(productList);
	        			
	        			for (var i = 0; i < productList.length; i++) {
							html += '<li><span id="product-span-hs" data-product_type="' + consult.consultProduct[i].type + '" data-product_no="' + consult.consultProduct[i].productNo + '">' + productList[i].finPrdtNm + '</span></li>';
						}
	        			
	        			html += '</ul></div></td></tr>'
	        			+ '<tr><th style="text-align:center;">상담 내용</th><td><textarea id="consult-content-update-hs" rows="3" cols="20">' + consult.content + '</textarea></td></tr>' 
	        			+ '</table>';
	        			
	        			$('div[id=consult-detail-table-hs]').html(html);
	        			
	        			$('a[id=customer-detail-hs]').data("customer_no", consult.customerVO.no);
	        			
	        			$('a[id=consult-update-complete-hs]').data("consult_no", consult.no);
	        			
	        			/* var div = $('div[id=consult-detail-table-hs]');
	        			var table = $('<table class="table table-striped table-bordered">');
	        			var tr = $('<tr>');
	        			var th = $('<th>');
	        			var td = $('<td>');
	        			
	        			table.append(
       							tr.append(th.html('상담 일시'))
       							.append(td.html(consult.regDate))
       							)
       						.append(
       							tr.append(th.html('고객명'))
       							.append(td.html(consult.customerVO.name))
       							)
       						.append(
       							tr.append(th.html('상담 요약'))
       							.append(td.html(consult.title))
       							)
       						.append(
       							tr.append(th.html('상담 상품'))
       							//.append(td.html(consult.regDate))
       							)
       						.append(
       							tr.append(th.html('상담 내용'))
       							.append(td.html(consult.content))
       							);
	        			
	        			div.html(table); */
	        			
	        			/* $.each(consult, function(key, value) {
	        				console.log('key: ' + key + ', value : ' + value);        				
						}) */
	        	 
	        	        //$('table[id=consult-update-table]').append(html);
					},
	        		error: function(e) {
	        			console.log(e);
	        			alert('error');
					}
				});	
				
				//consult-content-update-hs consultVO-content-hs
				
				$('#consultDetail').modal();
				console.log("상세보기");
			});
			
			/* 선택한 상품의 상세정보 가져오기 */
			function getProductDetailList(consultProductList) {
				var returnProductList;
				
				$.ajax({	
	        		url: "${pageContext.request.contextPath}/sales/product",
	        		type: "post",
	        		contentType: "application/json; charset=utf-8",
	        		dataType: "json",
	        		data: JSON.stringify(consultProductList),
	        		async: false,
	        		success: function(productDetailList) {
	        			returnProductList = productDetailList;
	        		},
	        		error: function(e) {
	        			console.log(e);
	        			alert('error');
					}
				});
				
				console.log(typeof returnProductList);
				return returnProductList;
			}
			
			/* 상품 다시 선택 */
			$(document).on('click', 'button[id=product-reselect-hs]', function(e) {				
				$('div[id=product-reselect-table-hs]').html(getList($('span[id=product-span-hs]').data("product_type")));
				//$('div[id=product-list-hs]').html(getList($('span[id=product-span-hs]').data("product_type")));
				
				$('.datatable').dataTable({
    				//"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
    				"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12 center'p>>",
    				"sPaginationType": "bootstrap",
    				"bRetrieve": true,
    				//"bDestroy": true,
    				"oLanguage": {
    				"sLengthMenu": "_MENU_ 개씩 보기"
    				}
    			} );
				
				$('#productReselect').modal();
				//$('#consultProductSelect').modal();
				
				console.log('상품 다시 선택');
			});
			
			/* 고객정보 상세보기 */
			$(document).on('click', 'a[id=customer-detail-hs]', function(e) {
				e.preventDefault();
				e.stopPropagation();
			
				var customerNo = $(this).data('customer_no');
			
				$.ajax({
	        		url: "${pageContext.request.contextPath}/customer/consult/" + customerNo,
	        		type: "get",
	        		dataType: "json",
	        		success: function(customer) {
	        			console.log(customer);
	        			
	        			var html = '<table class="table table-striped table-bordered">' 
	        			+ '<tr><th style="text-align:center;">고객명</th><td>' + customer.name + '</td></tr>' 
	        			+ '<tr><th style="text-align:center;">연락처</th><td>' + customer.phone + '</td></tr>'
	        			+ '<tr><th style="text-align:center;">생년월일</th><td>' + customer.birthDate + '</td></tr>'
	        			+ '<tr><th style="text-align:center;">우편번호</th><td>' + customer.post + '</td></tr>'
	        			+ '<tr><th style="text-align:center;">주소</th><td>' + customer.address + '</td></tr>' 
	        			+ '<tr><th style="text-align:center;">고객등급</th><td>' + customer.grade + '</td></tr>' 
	        			+ '<tr><th style="text-align:center;">고객등록일</th><td>' + customer.regDate + '</td></tr>' 
	        			+ '<tr><th style="text-align:center;">비고</th><td>' + customer.comments + '</td></tr>' 
	        			+ '</table>';
	        			
	        			$('div[id=customer-detail-table-hs]').html(html);        			
					},
	        		error: function(e) {
	        			console.log(e);
	        			alert('error');
					}
				});	
				
				console.log("고객정보 상세보기");
				
				$('#customerDetail').modal();
			});
			
			/* 수정 확인 */
			$('a[id=consult-update-complete-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				console.log("수정 완료");
				
				var content = $('textarea[id="consult-content-update-hs"]').val();
				var title = content.length > 20 ? content.substring(0, 20) + "..." : content;
				var consultUpdateNo = $('a[id=consult-update-complete-hs]').data("consult_no");
				
				$.ajax({	
	        		url: "${pageContext.request.contextPath}/sales/consult",
	        		type: "put",
	        		contentType: "application/json; charset=utf-8",
	        		data: JSON.stringify({ 
        				"no"		:	consultUpdateNo, 
        				"content"	:	content,
        				"title"		:	title
        			}),
	        		success: function(consultNo) {
	        			console.log(consultNo + "번 수정 완료");
	        			$('#consultDetail').modal('hide');
	        			location.href = '${pageContext.request.contextPath}/sales/consult';
					},
	        		error: function(e) {
	        			console.log(e);
	        			alert('error');
					}
				});			
			});
			
			/* 삭제 */
			$('a[id=consult-delete-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				var consultDeleteNo = $(this).data('consult_no');
				
				$('a[id=consult-delete-complete-hs]').data("consult_delete_no", consultDeleteNo);
				
				$('#consultDelete').modal();
				console.log("삭제");
			});
			
			/* 삭제 확인 */
			$('a[id=consult-delete-complete-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				var consultDeleteNo = $('a[id=consult-delete-complete-hs]').data("consult_delete_no");
				
				$.ajax({	
	        		url: "${pageContext.request.contextPath}/sales/consult/" + consultDeleteNo,
	        		type: "delete",
	        		success: function(result) {
	        			//console.log(consultNo + "번 추가 완료");
	        			console.log(result + "번 삭제 완료");
	        			$('#tr' + consultDeleteNo).remove();
	        			consultDeleteNo = null;
	        			$('#consultDelete').modal('hide');
					},
	        		error: function(e) {
	        			console.log(e);
	        			alert('error');
					}
				});	
			});						
			
		</script>
	<!-- end: JavaScript-->
	
</body>
</html>