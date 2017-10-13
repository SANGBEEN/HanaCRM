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
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="shortcut icon" href="img/favicon.ico">
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

			<div class="row-fluid">		
				<div class="box span12">
					<div class="box-header" style="background-color:white; padding:0; height:40px;">
						<div id="consult-insert-hs" style="	float: right; height: 40px;line-height: 40px; text-align: center; width: 50px; background: gray;">
							<i class="fa fa-plus" aria-hidden="true" style="color: white"></i></div>
						<div style="float: right; font-size: 1rem; line-height: 40px; padding-right: 20px;"></div>
					</div>
					
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								<th style="width:5%; text-align:center">번호</th>	
								<th style="width:15%; text-align:center">고객 이름</th>
								<th style="width:30%; text-align:center">요약</th>
								<th style="width:15%; text-align:center">상담 날짜</th>
								<th style="width:10%; text-align:center">타입</th>
								<th style="width:10%; text-align:center">상태</th>
								<th style="width:15%; text-align:center">기능</th>
							  </tr>
						  </thead>   
						<tbody>
							<c:forEach items="${ consultList }" var="consultVO">						
							<tr id="tr${ consultVO.no }"> <!-- class="row-minimize-hs"> -->
								<td id="row-no-hs" style="text-align:center">${ consultVO.no }</td>
								<td style="text-align:center">${ consultVO.customerVO.name }</td>
								<td>${ consultVO.title }</td>
								<td style="text-align:center">${ consultVO.regDate }</td>
								<td style="text-align:center">${ consultVO.customerVO.grade }</td>
								<td style="text-align:center">
									<span class="label label-success">Active</span>
								</td>
								<td style="text-align:center">
									<a class="btn btn-success" id="consult-detail-hs" href="#" data-consult_no="${ consultVO.no }">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
									<a class="btn btn-info" id="consult-update-hs" href="#" data-consult_no="${ consultVO.no }">
										<i class="halflings-icon white edit"></i>  
									</a>
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
		
	<!-- 상담 내역 상세 -->
	<c:forEach items="${ consultList }" var="consultVO">
		<div class="modal hide fade" id="consult-detail-${ consultVO.no }">
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
					
					<strong>상담 내용:</strong> ${ consultVO.content }<br>
				</div>			
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">닫기</a>
			</div>
		</div>
	</c:forEach>	
	
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
						<label class="control-label" for="focusedInput">상담 날짜</label>
						<div class="controls">
							<input class="input-xlarge focused" id="consult-date-hs" type="date">
							<a href="#" class="btn yellow" id="date-select-hs">선택</a>					
						</div>
					</div>				
					<div class="schedule-list">
						
					</div>							
				</div>
				<div class="modal-footer">
					<a href="#" class="btn btn-primary" id="schedule-select-hs">확인</a>
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
					<div class="row-fluid sortable">		
						<div class="box span12">					
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" id="type-select-hs" data-product_type="1" href="#product-list">예금</a></li>
								<li><a data-toggle="tab" id="type-select-hs" data-product_type="2" href="#product-list">적금</a></li>
								<li><a data-toggle="tab" id="type-select-hs" data-product_type="3" href="#product-list">카드</a></li>
							</ul>				
							<div class="box-header" data-original-title>
								<h2 id="tab-name-hs"></h2>								
							</div>
							<div class="box-content" id="product-list">
								
							</div>
						</div><!--/span-->					
					</div><!--/row-->
				</div>
				<div class="modal-footer">
					<a href="#" class="btn btn-primary" id="product-select-hs" data-dismiss="modal">확인</a>
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
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>상담 내용 입력</h3>
		</div>
		<div class="modal-body">
			<div class="control-group">
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
			<div class="control-group hidden-phone">
			  	<label class="control-label" for="consult-content-hs">상담 내용</label>
			  	<div class="controls">
					<textarea id="consult-content-hs"></textarea>
			 	</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn btn-primary" id="consult-insert-complete-hs">확인</a>
			<a href="#" class="btn" id="consult-insert-cancel-hs" data-dismiss="modal">취소</a>			
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
			<a href="#" class="btn btn-primary" id="consult-update-complete-hs" data-dismiss="modal">확인</a>
			<a href="#" class="btn" id="consult-insert-cancel-hs" data-dismiss="modal">취소</a>
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
			<a href="#" class="btn btn-primary" id="consult-delete-complete-hs">확인</a>
			<a href="#" class="btn" data-dismiss="modal">취소</a>			
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
			/* 상세 보기 */
			/* $('.row-minimize-hs').click(function(e){
				e.preventDefault();
				$(this).next('.row-detail-hs').slideToggle();
				console.log("상세");
			});	 */
			
			$('#myModal').on('hidden.bs.modal', function() {
				$(this).removeData();
			});
			
			$('a[id=consult-detail-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				//var consultVO = JSON.parse($(this).val());
				
				var consultDetailNo = $(this).data('consult_no');
				//console.log($(this).data('consultVO'));
				
				//var consultVONo = $(this).parent().parent().children('td[id=row-no-hs]').text();
				//console.log(consultVONo);
				
				//console.dir(consultList);
				console.log(consultDetailNo);
				$('#consult-detail-'+consultDetailNo).modal();
				console.log("상세");
			});
						
			/* 상담 날짜 선택 */

			$('div[id=consult-insert-hs]').click(function(e){
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
			
			function selectDate() {
				var inputDate = $('#consult-date-hs').val();
				
				console.log(inputDate);

				$.ajax({
	        		url: "${pageContext.request.contextPath}/schedule/listForConsult",
	        		type: "get",
	        		/* contentType: "application/json; charset=uft-8", */
	        		dataType: "json",
	        		data: { 
	        				"type"	:	"Meeting", 
	        				"date"	:	inputDate
	        		}, 
	        		success: function(schedule) {
	        	        html = '<table class="table table-striped table-bordered bootstrap-datatable datatable">';
	        	        html += '<thead><tr><th>선택</th><th>고객 이름</th><th>장소</th><th>일정 내용</th><th>일시</th></tr></thead><tbody>';
	        	        
	        	        for (var i = 0; i < schedule.length; i++) {
		        	            html += '<tr><td><input type="radio" name="optionsRadios" data-schedule_no="' + schedule[i].no + '" data-customer_no="' + schedule[i].customer.no + '" data-reg_date="' + schedule[i].startDate + '"></td>' 
		        	            		+ '<td>' + schedule[i].customer.name + '</td>' 
		        	            		+ '<td>' + schedule[i].location + '</td>' 
		        	            		+ '<td>' + schedule[i].comments + '</td>'
		        	            		+ '<td>' + schedule[i].startDate + '</td></tr>';
	        	        }
	        	        
	        	        html += '</tbody></table>';
	        	 
	        	        document.querySelector('.schedule-list').innerHTML = html;
	        	        //console.log("html: " + html);
	        	        
	        	        $('.datatable').dataTable({
	        				"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
	        				"sPaginationType": "bootstrap",
	        				"bRetrieve": true,
	        				//"bDestroy": true,
	        				"oLanguage": {
	        				"sLengthMenu": "_MENU_ records per page"
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
			
			/* 상품 선택 */
			$('a[id=schedule-select-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				/* var selectedSchedule = [
					$('input[name="optionsRadios"]:checked').data('schedule_no'),
					$('input[name="optionsRadios"]:checked').data('customer_no')
				]; */
				
				consultJson = {
						"customerNo": $('input[name="optionsRadios"]:checked').data('customer_no'),
						"regDate": "2017-10-12 13:30",//$('input[name="optionsRadios"]:checked').data('reg_date'),
						"content": null,
						"title": null,
						"consultProduct": {}
				};
				
				console.log("스케줄 넘버버버: " + consultJson);
				
				getList(1);
				
				$('#consultScheduleSelect').modal("hide");
				$('#consultProductSelect').modal();
				console.log("상품 선택");
			});
			
			/* 탭에 따른 상품 목록 출력 */
			$(document).on('click.tab.data-api', '[data-toggle="tab"]', function(e) {
			    e.preventDefault();				   
			    
			    getList($(this).data('product_type'));
			});
			
			/* 상품 목록 출력하는 함수 */
			function getList(type) {
				$.ajax({
	        		url: "${pageContext.request.contextPath}/sales/product/" + type,
	        		type: "get",
	        		dataType: "json",
	        		success: function(product) {	        			
	        			$('h2[id=tab-name-hs]').html('<i class="halflings-icon book"></i><span class="break"></span>' + $('li[class=active]').find('a[id=type-select-hs]').text());
	        			
	        	        html = '<table class="table table-striped table-bordered bootstrap-datatable datatable">';
	        	        html += '<thead><tr><th>선택</th><th>금융상품코드</th><th>금융상품명</th></tr></thead><tbody>'; /* <th>적립유형명</th></tr></thead><tbody>'; */
	        	        
	        	        for (var i = 0; i < product.length; i++) {		        	        	
	        	            html += '<tr><td><input type="checkbox" id="product-checkbox" data-product_type="' + type + '" data-product_json=\'' + JSON.stringify(product[i]) + '\'>' + 
	        	            '</td><td>' + product[i].finPrdtCd + 
	        	            '</td><td>' + product[i].finPrdtNm + 
	        	            '</td></tr>';
	        	            		/* + '<td><span class="input-xlarge uneditable-input">' + product[i].comments + '</span></td></tr>'; */
	       	        	}
	        	        
	        	        html += '</tbody></table>';
	        	        
	        	        //console.log(html);
	        	 
	        	        document.querySelector('#product-list').innerHTML = html;
	        	        
	        	        $('.datatable').dataTable({
	        				"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
	        				"sPaginationType": "bootstrap",
	        				"bRetrieve": true,
	        				//"bDestroy": true,
	        				"oLanguage": {
	        				"sLengthMenu": "_MENU_ records per page"
	        				}
	        			} );
	        	    },
	        		error: function(e) {
	      				console.log(e);
	        			alert('error');
	        		}
	        	});
				
				console.log("탭 선택");
			}
			
			/* 선택한 상품들 담는 배열 */
			var selectedProduct = [];
			
			/* 선택한 상품 담아두기 */
			$(document).on('change', 'input[id=product-checkbox]', function() {
			//$('input:checkbox[id="product-checkbox"]').on('click', function(){
				if ($(this).prop("checked")) {
					$('#product-count').html('상품 선택 <span class="label label-important" id="selected-product-detail-hs"> ' + 
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
				
				for (var i = 0; i < selectedProduct.length; i++) {
					$('<span class="input-xlarge uneditable-input">' + selectedProduct[i]['productJson']['finPrdtNm'] + '</span>').appendTo('div[id=consult-product-input-hs]');
				}
				
				$('span[id=consult-date-input-hs]').text(consultJson['regDate']);
				
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
				consultJson["title"] = content.length > 15 ? content.substring(0, 15) + "..." : content;
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
			
			var consultUpdateNo = null;
		
			/* 수정 */
			$('a[id=consult-update-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				consultUpdateNo = $(this).data('consult_no');
				
				$('#consultUpdate').modal();
				console.log("수정");
			});
			
			/* 수정 확인 */
			$('a[id=consult-update-complete-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				console.log("수정 완료");
				
				$.ajax({	
	        		url: "${pageContext.request.contextPath}/sales/consult",
	        		type: "put",
	        		contentType: "application/json; charset=utf-8",
	        		//data: JSON.stringify(consultJson),
	        		success: function(consultNo) {
	        			console.log(consultNo + "번 추가 완료");
	        			consultUpdateNo = null;
	        			$('#consultContentInsert').modal('hide');
					},
	        		error: function(e) {
	        			console.log(e);
	        			alert('error');
					}
				});			
			});
			
			var consultDeleteNo = null;
			
			/* 삭제 */
			$('a[id=consult-delete-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
				consultDeleteNo = $(this).data('consult_no');
				
				$('#consultDelete').modal();
				console.log("삭제");
			});
			
			/* 삭제 확인 */
			$('a[id=consult-delete-complete-hs]').click(function(e) {
				e.preventDefault();
				e.stopPropagation();
				
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