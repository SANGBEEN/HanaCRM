<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>영업지원 시스템 - 일정 관리</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src='${pageContext.request.contextPath}/js/jquery.min.js'></script> <!-- for calendar -->
	<script src='${pageContext.request.contextPath}/js/moment.min.js'></script> <!-- for calendar -->
	<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>
	<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script src='${pageContext.request.contextPath}/js/fullcalendar.js'></script>
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
	<script src="${pageContext.request.contextPath}/js/jquery.datetimepicker.full.js"></script>
	<script src="${pageContext.request.contextPath}/js/KoAddress.js"></script>
	
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.datetimepicker.css"/>	
	<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="img/favicon.ico">

	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"></script> -->
	<!-- end: javascript -->
	
	<style>
		.Meeting {
			background-color : #00A300 !important;
			border-color : #00A300 !important;
			color: white
		}
		
		.Task {
			background-color : #2D89EF !important;
			border-color : #2D89EF !important;
			color: white
		}
		
		.Call {
			background-color : #FFC40D !important;
			border-color : #FFC40D !important;
			color: white
		}
		
		.Event {
			background-color : #999 !important;
			border-color : #999 !important;
			color: white
		}
		
		.Other {
			background-color : #333 !important;
			border-color : #333 !important;
			color: white
		}
		
		.Important{
			background-color : #EB3C00 !important;
			border-color : #EB3C00 !important;
			color: white
		}
		
		.fc-sat {
			background-color: #e3ecf4;
			color: blue;
		}
		
		.fc-sun {
			background-color: #f9e0df;
			color: red;
		}
		
		.btn-group.btn-corner>.btn {
			margin: 0 2px;
		}
		
		.drag-event-div{
			margin: 2px auto;
		}

		.duration, .dduration{
			background-color: #008485 !important;
			border-color:#008485 !important;
		}
		
		.duration:focus, .dduration:focus {
		  outline: none;
		}
		
		.duration:hover, .dduration:hover {
		  	background-color:  #008485 !important;
			border-color:  #008485 !important;
			opacity:0.7 !important;
		}
		
		.duration.clicked, .dduration.clicked{
			background-color: #f9105b !important;
			border-color: #f9105b !important;
		}
		
		.duration.clicked:hover, .dduration.clicked:hover {
		  	background-color: #f9105b !important;
			border-color: #f9105b !important;
			opacity:0. !important;
		}
		
		.schedule-add-btn, .schedule-edit-btn{
			background-color: #008485 !important;
			border-color: #008485 !important;
		}
		
		.schedule-add-btn:hover, .schedule-edit-btn:hover{
			background-color: #008485 !important;
			border-color: #008485 !important;
			opacity:0.7 !important;
		}
		
		.schedule-cancle-btn{
			background-color: #a7a9aa !important;
		}
		
		.schedule-cancle-btn:hover{
			background-color: #a7a9aa !important;
			opacity:0.7 !important;
		}
		
		.schedule-delete-btn{
			background-color: #b94a48 !important;
			border-color: #b94a48 !important;
		}
		
		.schedule-delete-btn:hover{
			background-color: #b94a48 !important;
			border-color: #b94a48 !important;
			opacity:0.7 !important;
		}
		
	</style>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="/include/header.jsp"/>
	
	<!-- 본문 시작 -->
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
					<a href="${pageContext.request.contextPath}/main">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="${pageContext.request.contextPath}/schedule/list">일정 관리</a></li>
				<li><i class="icon-angle-right"></i>
					<a href="${pageContext.request.contextPath}/schedule/list">일정</a></li>
			</ul>

			<div class="row-fluid">
				<div class="box span12">
				
					<div class="box-header" data-original-title="">
							<h2>
								일정
							</h2>
					</div>
					
					<div class="box-content">
						<div id="external-events" class="span2 hidden-phone hidden-tablet">
							<h4>Events</h4>
							<div class="external-event badge badge-important drag-event-div">Important</div>
							<div class="external-event badge badge-success drag-event-div">Meeting</div>
							<div class="external-event badge badge-warning drag-event-div">Call</div>
							<div class="external-event badge badge-info drag-event-div">Task</div>
							<div class="external-event badge drag-event-div">Event</div>
							<div class="external-event badge badge-inverse drag-event-div">Other</div>
						
						<br/>
						<br/>
						
							<!-- 오늘 일정 간략하게 -->
							<div class="box">
								<div class="box-header">
									<h2 id="todayTitle">일정</h2>
									<div class="box-icon">
										<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
									</div>
								</div>
								<div id="div_todayList" class="box-content" style="overflow: auto; height:540px;">
								<%--	<ul class="dashboard-list">
										
										 <c:forEach var="schedule" items="${scheduleList}">
											<li>
												<strong>일정분류:</strong>
												<c:choose>
													<c:when test="">
														<span class="label-success">Approved</span>                                  
													</c:when>
													<c:when test="">
														<span class="label-warning">Pending</span>                                 
														<span class="label-important">Banned</span>                                  
														<span class="label-info">Updates</span>  
													</c:when>
												</c:choose>
												<strong>고객 이름:</strong> <a href="#">Dennis Ji</a><br>
												<strong>시간:</strong> Jul 25, 2012 11:09<br>
												                                
											</li>
										</c:forEach> 
									</ul>--%>
								</div>
							</div>
						</div>
						<div id="calendar" class="span9"></div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div><!--/row-->
		

			</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
	</div><!--/fluid-row-->

	<div class="clearfix"></div>
	
	<!-- 푸터 -->
	<jsp:include page="/include/footer.jsp"/>
	
	<script> 
		 console.dir('${scheduleList}');
		 
		function getTodayList(date){
			
			console.log(moment(date).format('YYYY-MM-DD'));
			
			if(moment(date).format('YYYY-MM-DD')==moment(new Date()).format('YYYY-MM-DD')){
				$('#todayTitle').text('오늘 일정');
			}else {
				$('#todayTitle').text(moment(date).format('MM월 DD일')+' 일정');
			}
			
			$.ajax({
				url: "${pageContext.request.contextPath}/schedule/listForConsult",
				type: "get",
				dataType: "json",
				data: {
					date: moment(date).format('YYYY-MM-DD')
				},
				success: function(todayList){
					// var todayList = JSON.parse(data);
					var html = '일정이 없습니다.';
					var size = todayList.length; //<5?todayList.length:5;
					
					if(size > 0){
						html = '<ul class="dashboard-list">';
						for(var i=0; i<size; i++){
							html += '<li class="todaySchedule" id="today'+todayList[i].no+'" value="'+todayList[i].no+'"><strong>일정분류: </strong>';
							
							type = 'Meeting';
							switch(todayList[i].type){
								case 'Important':
									html += '<span class="label-important" style="padding:3px">Important</span>';
									type = 'Important';
									break;
								case 'Meeting':
									html += '<span class="label-success" style="padding:3px">Meeting</span>';
									type = 'Meeting';
									break;
								case 'Call':
									html += '<span class="label-warning" style="padding:3px">Call</span>';
									type= 'Call';
									break;
								case 'Task':
									html += '<span class="label-info" style="padding:3px">Task</span>';
									type = 'Task';
									break;
								case 'Event':
									html += '<span style="background-color:#646464; color:#fff; padding:3px">Event</span>';
									type = 'Event';
									break;
								case 'Other':
									html += '<span style="background-color:#333333; color:#fff; padding:3px">Other</span>';
									type = 'Other';
									break;
							}
							
							if(todayList[i].type!='Task'){
								html += '<br/><strong>고객 이름: </strong>'+todayList[i].customer.name;
								html = html + ' ('+todayList[i].customer.grade+')';
							}
							
							if(todayList[i].type!='Event'){
								html += '<br><strong>장소: </strong>'+todayList[i].location;
								html += '<br><strong>시간: </strong>'+todayList[i].startDate;
								html += ' ~ '+todayList[i].endDate;
							}
							
							html += '<br><strong>내용: </strong>'+todayList[i].comments;
							
							html += '</li>';
							
						}  // for문 끝
					}
					
					$('#div_todayList').html(html);
					
				}  // success 끝
			});
			
			
			$(document).on('click', '.todaySchedule', function(e){
				// console.log(e);
				getDetailSchedule($(this).val());
			});
		}
		 
		 jQuery(function($) {
			 
			 var addModal = $('#addModal');
			var detailModal = $('#detailModal');
			
			var datetimepicker = $('#datetimepicker');
			var detail_datetimepicker = $('#detail_datetimepicker');
			 
			addModal.on('hidden.bs.modal', function (e) {
		 	//	console.log('dismiss');
		 		 $(this)
		 	    .find("input,textarea,select")
		 	       .val('')
		 	       .end()
		 	    .find("input[type=checkbox], input[type=radio]")
		 	       .prop("checked", "")
		 	       .end()
		 	    .find("span[class=checked]")
		 	    	.removeClass('checked')
		 	    	.end()
		 	    .find("button.clicked").removeClass('clicked');
		 	});
			
			getTodayList(new Date());
	
			 
				/************************** initialize the external events
				-----------------------------------------------------------------*/

				$('#external-events div.external-event').each(function() {

					// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
					// it doesn't need to have a start or end
					var eventObject = {
						title: $.trim($(this).text()) // use the element's text as the event title
					};

					// store the Event Object in the DOM element so we can get to it later
					$(this).data('eventObject', eventObject);

					// make the event draggable using jQuery UI
					$(this).draggable({
						zIndex: 999,
						revert: true,      // will cause the event to go back to its
						revertDuration: 0  //  original position after the drag
					});
					
				});
				
				/************************** get event data from our server
				-----------------------------------------------------------------*/
				
				var eventList = [];
				var data = ${scheduleList};
				for(var i=0; i<data.length; i++){
					var startDate = data[i].startDate;
					var endDate = data[i].endDate;
					var newEndDate = new Date(endDate);
					
					// 마지막 날짜 계산
					if(new Date(startDate).toDateString() != new Date(endDate).toDateString()){
						console.dir(endDate);
						endDate = new Date(newEndDate.setDate(newEndDate.getDate()+1));
						console.dir(endDate);
					}
					
				 	eventList.push({ title : data[i].customer.name,
									start : moment(startDate).format('YYYY-MM-DD HH:mm'),
									end:  moment(endDate).format('YYYY-MM-DD HH:mm'),
									className: data[i].type,
									id: data[i].no});
				 //	console.log(endDate+"\n"+new Date(endDate)); //new moment(data[i].endDate).format('YYYY-MM-DD HH:mm'));
					
				}
				
				console.dir(eventList);
				
				/************************** initialize the calendar
				-----------------------------------------------------------------*/

				// 기존 캘린더 지움
				$('#calendar').fullCalendar('destroy');

////////////////////////////////////////////////// calendar 시작
				var calendar = $('#calendar').fullCalendar({
					
					 buttonHtml: {
						prev: '<button type="button" class="fc-prev-button fc-button fc-state-default fc-corner-left"><span class="fc-icon fc-icon-left-single-arrow"></span></button>',//'<i class="ace-icon fa fa-chevron-left"></i>',
						next: '<i class="ace-icon fa fa-chevron-right"></i>'
					},
					
					header: {
						left: 'prev,next',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					
					allDayDefault: false,
					
					
					events:
						 eventList
						//테스트 데이터				
					/*	[
						   {
								title: '${scheduleList[0].comments}',
								start: new Date('${scheduleList[0].startDate}'),
								className: 'label-important'
							  }, 
						  {
							  title: 'ddddddddd',
							  start: '2017-09-18 00:00:00',
							  end: '2017-09-20 00:00:00'
						  }
					]*/
					,
					
					editable: true,
					eventResize: function(event, delta, revertFunc){
						resize(event, delta, revertFunc);
					},
					eventDrop: function(event, delta, revertFunc){
						eventDrop(event, delta, revertFunc);
					},
				    
					droppable: true, // this allows things to be dropped onto the calendar !!!
					drop: function(date, jsEvent) { // this function is called when something is dropped
					/************************** 
						달력에 새로운 이벤트 추가
						모달 띄우기
					***************************/
					
					// 0. 추가할 이벤트 타입, 날짜 받아오기
					// retrieve the dropped element's stored Event Object
					var originalEventObject = $(this).data('eventObject');
					var $extraEventClass = $(this).attr('data-class');

					// 1. 등록 폼 모달 띄움 (타입 별 모달 처리)
					addModal.modal('show');	
					
						if(originalEventObject.title=='Task'){
							$('#customerInfo').hide();
						}else {
							$('#customerInfo').show();
							//	detailModal.remove();
							// 1-1. 고객 정보 받아오기, 모달에 셋팅
							/* $.ajax({
								url: "${pageContext.request.contextPath}/customer/listForModal",
				        		type: "get",
				        		success: function(data){
				        			var table_head = '<table class="table table-striped table-bordered bootstrap-datatable datatable">'
				        			+ '<thead><tr> <th>선택</th><th>Name</th><th>Reg_date</th><th>Phone</th><th>Grade</th> </tr></thead>'
				        			var table_body = '<tbody id="table-data" class="customerBody">';
				        			 JSON.parse(data).forEach(function(element) {
				        				 table_body += '<tr><td><input type="radio" name="customerNo" value="'+element.no+'"/></td><td id="'+element.no+'">'
				        			    		+ element.name + '</td><td>'
				        			    		+ element.phone + '</td><td>'
				        			    		+ element.regDate + '</td><td>'
				        			    		+ element.grade + '</td></tr>';
				        			});
				        			 table_body += '</tbody></table>';
				        			
				        			$('#customerTable').html(table_head+table_body);
				        			
				        			//te.querySelector('.customerBody').innerHTML += html;
				        			//console.log(te);
				        		},
				        		error: function(){
				        			alert('error');
				        		} 
							}); */
							
							if(originalEventObject.title=='Event'){
								addModal.find('#div_duration').hide();
							}else {
								addModal.find('#div_duration').show();
							}
							
							// radio button
							$('.tr_radio').on('click', function(ev){
								//ev.preventDefault();
								$('.radio').find('span').removeClass('checked');
								$('#uniform-radio'+$(this).data('no')).find('span').addClass('checked');
								// $('#radio'+$(this).data('no')).prop('checked');
							});
						}
						
						// 2.추가할 이벤트 저장
						// we need to copy it, so that multiple events don't have a reference to the same object
						var copiedEventObject = $.extend({}, originalEventObject);
						
						// assign it the date that was reported
						copiedEventObject.start = date;
						copiedEventObject.end = date;
						copiedEventObject.allDay = false;
						copiedEventObject.className = originalEventObject.title;
						copiedEventObject.title = "Title";
					
				//		console.log(copiedEventObject);
						
						/* 3. 추가할 이벤트 정보 모달에 셋팅
							1) type 설정 (originalEventObject.title)
							2) 시작 날짜 설정 (date 이용)
						**************************/
						
				//		console.log('1: '+copiedEventObject.className);
							
		 				// 1) type 설정
		 				var duration = 1;
						var type = 'hours';
								 				
						addModal.find("#scheduleType").val(originalEventObject.title);
						addModal.find("#scheduleType").change(function(){
							if($(this).val()=='Task'){
								$('#customerInfo').hide();
							}else {
								$('#customerInfo').show();
								if($(this).val()=='Event'){
									addModal.find('#div_duration').hide();
								}else {
									addModal.find('#div_duration').show();
								}
								
								if($(this).val()=='Call'){
									duration = 30;
									type = 'minutes';
								}else {
									duration = 1;
									type = 'hours';
								}
							}
						});
					
						// 2) 날짜 설정
						date.time('10:00');  // 초기 시간 셋팅
					 	
					 	/*  https://xdsoft.net/jqplugins/datetimepicker/ */
				 		datetimepicker.datetimepicker({
					 		defaultDate: getDate(date),
					 		defaultTime: '10:00',
					 		 allowTimes:[
					 			'10:00', '10:30', '11:00', '11:30', '12:00', '12:30', '13:00', '13:30',
					 			'14:00', '14:30', '15:00', '15:30', '16:00', '16:30', '17:00', '17:30',
					 			'18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30', '22:00'
				 			],
				 			yearStart: '2017',
				 			/* minTime: '10:00',
				 			maxTime: '22:00',
				 			step: 30, */
					 		value: getDate(date),
					 		format:'Y-m-d H:i',
					 		onChangeDateTime:function(dp,$input){
					 			// console.log(dp);
					 			addModal.find('#endDate').text(getDate(moment(dp).add(duration,type))); //$input.val());
					 		}
				 		});
						
				 		addModal.find('#endDate').text(getDate(date));						
						addModal.find('.duration').off().on('click', function(ev){
							duration = 1;
							type='hours';
							$('.duration').removeClass('clicked');
							$(this).addClass('clicked');
							
							if(originalEventObject.title=='Call'){
								duration = 30;
								type = 'minutes';
							}
							
							duration = duration * Number($(this).val());
							console.log(duration);
							
							var endDate = moment(datetimepicker.datetimepicker('getValue'));
							endDate.add(duration, type);
							addModal.find('#endDate').text(getDate(endDate));
						});
						
						addModal.find('#importance').val(3);
						
						// 5. 등록 처리
					//	$('#modalSave').unbind("click");
						addModal.find('button[id=modalSave]').off().on('click', function(ev){
							// We don't want this to act as a link so cancel the link action
							ev.preventDefault();
							ev.stopPropagation();  // 이벤트버블링 방지
							var check = addCheck();
							
					//		console.log(duration);
														
							if(check=='ok'){
							
								// 캘린더에 쓰일 Data (변경사항 저장 - type, end 날짜)	
								var selectedDate_s = moment(datetimepicker.datetimepicker('getValue'));
								/* var selectedDate_e = selectedDate_s;
								selectedDate_e.add(duration,type); */
								
								 var startData = getDate(selectedDate_s); 
								 var endData = addModal.find('#endDate').text(); //getDate(selectedDate_e); // getDate(moment(endDatepicker.toString()));
								 var cNo = $('span.checked').parent().parent().parent().data('no')!=null?$('span.checked').parent().parent().parent().data('no'):null;
								 var name = cNo!=null?document.getElementById(cNo).innerText:addModal.find('input[id=location]').val();
						//		 console.log('modalSave start output : '+startData);
						//		 console.log('modalSave end output : '+endData);
								 
								 console.log(startDate==moment().format('YYYY-MM-DD HH:mm'));
								
								copiedEventObject.title = name;
								copiedEventObject.start = startData;
								copiedEventObject.end = endData;
		
					//			console.log(copiedEventObject);
			        //			console.log(name);
			        //			console.log(cNo);
								
								// 서버에 보낼 Data
								var scheduleData = {
										comments: addModal.find('textarea[id=comments]').val(),
					        			customerNo: cNo,
					        			type: addModal.find('select[id=scheduleType]').val(),
					        			location: addModal.find('input[id=location]').val(),
					        			importance: addModal.find('select[id=importance]').val(),
					        			repetition: addModal.find('select[id=repetition]').val(),
					        			startDate: startData,
					        			endDate: endData
					        /* 
					        			comments: $('#comments').val(),
					        			customerNo: cNo,
					        			type: $('#scheduleType').val(),
					        			location: $('#location').val(),
					        			importance: $('#importance').val(),
					        			repetition: $('#repetition').val(),
					        			startDate: startData,
					        			endDate: endData */
					        		};
								
						//		console.log(scheduleData);
								
								  $.ajax({
					        		url: "${pageContext.request.contextPath}/schedule",
					        		type: "post",
					        		data: scheduleData, 
					        		success: function(scheduleNo){
					        		//	alert('추가'+scheduleNo);
					        			alert('일정이 추가되었습니다.');
					        			addModal.modal("hide");
										//addModal.remove();
										// 추가할 이벤트에 scheduleNo 저장
										copiedEventObject.id = scheduleNo;
										// render the event on the calendar
										// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
										$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
									//	if(startDate==moment().format('YYYY-MM-DD HH:mm')){
											getTodayList(new Date());
									//	}
					        		},
					        		error: function(){
					        	//		alert('error');
					        		}
					        	});   // post ajax end 
					        	
							//	 $(".modal-body").val("");							
							
							} else{
								alert(check);
							}  // check else end
						}); // click end
						
					},
					
					selectable: true,
					selectHelper: true,
					select: function(start, end, allDay) {
						
						getTodayList(start);
						
						/* bootbox.prompt("New Event Title:", function(title) {
							if (title !== null) {
								calendar.fullCalendar('renderEvent',
									{
										title: title,
										start: start,
										end: end,
										allDay: allDay,
										className: 'label-info'
									},
									true // make the event "stick"
								);
							}
						});
						
						calendar.fullCalendar('unselect'); */
					},
					
					eventClick: function(calEvent, jsEvent, view) {
					
						/******************
							일정 상세보기
						*******************/
					//	alert(calEvent.title+"\n"+calEvent.start+"\n"+calEvent.end+"\n"+calEvent.className);
						
					//	detailModal.modal('show');
						
						/*
						기본 셋팅
						1. type 설정
						2. 시작 날짜 설정 (date 이용)
						*/
			
						var s;
						var start = getDate(calEvent.start);
						var end = getDate(calEvent.end)!=''? getDate(calEvent.end):start;
						
						var dduration = 1;
						var dtype = 'hours';
						
						$.ajax({
							url: "${pageContext.request.contextPath}/schedule/"+calEvent.id,
							type: "get",
							async: false,
							success: function(data){
								var schedule = JSON.parse(data);
								s = schedule;
								// console.dir(schedule);
								detailModal.find('span[id=scheduleType]').text(schedule.type);
								detailModal.find('input[id=location]').val(schedule.location);
								detailModal.find('textarea[id=comments]').val(schedule.comments);
								detailModal.find('input[id=repetition]').val(schedule.repetition);
								if(schedule.customerNo!=null || schedule.customerNo!=""){
									detailModal.find('span[id=customerName]').text(schedule.customer.name);									
									detailModal.find('div[id=div_customerName]').show();
								}else {
									detailModal.find('div[id=div_customerName]').hide();
								}
								detailModal.find('select[id=importance]').val(schedule.importance);
								
							
								var d = ((moment(schedule.endDate)-moment(schedule.startDate))/60)/60/1000;

								if(schedule.type=='Call'){
									d = d*2;
									dtype = 'minuites';
								}else {
									dtype = 'hours';
								}
								
								detailModal.find('.dduration').removeClass('clicked');
								detailModal.find('#duration'+d).addClass('clicked');
								
								detailModal.modal('show');
								
								// 데이트피커
								/*  https://xdsoft.net/jqplugins/datetimepicker/ */
							 	detail_datetimepicker.datetimepicker({
							 		defaultDate: schedule.startDate,
							 		 allowTimes:[
							 			'10:00', '10:30', '11:00', '11:30', '12:00', '12:30', '13:00', '13:30',
							 			'14:00', '14:30', '15:00', '15:30', '16:00', '16:30', '17:00', '17:30',
							 			'18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30', '22:00'
						 			],
						 			yearStart: '2017',
						 			/* minTime: '10:00',
						 			maxTime: '22:00',
						 			step: 30, */
							 		value: schedule.startDate,
							 		format:'Y-m-d H:i',
							 		onChangeDateTime:function(dp,$input){
							 			detailModal.find('#endDate').text(getDate(moment(dp).add(dduration,dtype)));
							 		}
							 	});
								
								detailModal.find('#endDate').text(end);
								
								if(schedule.type=='Event'){
									detailModal.find('#div_duration').hide();
								}else {
									detailModal.find('#div_duration').show();
								}

							},
							error: function(){
							//	alert('error');
							}
						});
						
						detailModal.find('.dduration').off().on('click', function(ev){

							dduration = 1;
							dtype = 'hours';
							
							$('.dduration').removeClass('clicked');
							$(this).addClass('clicked');
							
							if(calEvent.className=='Call'){
								dduration = 30;
								dtype = 'minutes';
							}
							
							dduration = dduration * Number($(this).val());
					//		console.log(dduration);

							var endDate = moment(detail_datetimepicker.datetimepicker('getValue'));
							endDate.add(dduration, dtype);
							detailModal.find('#endDate').text(getDate(endDate));
							
						});
						
						// 수정 버튼
						detailModal.find('a[id=modalSave]').off().on('click', function(ev){
							
							ev.preventDefault();
							ev.stopPropagation();  // 이벤트버블링 방지
							
							// 캘린더에 쓰일 Data (변경사항 저장 - type, end 날짜)						
							 var selectedDate_s = moment(detail_datetimepicker.datetimepicker('getValue'));
							/* var selectedDate_e = selectedDate_s.add(dduration,dtype); */
	
							 var startData = getDate(selectedDate_s);
							 var endData = detailModal.find('#endDate').text();
							 
				//			console.log(calEvent);
		        //			console.log(name);
		        			
							// 서버에 보낼 Data
							var scheduleData = {
									no: calEvent.id,
				        			comments: detailModal.find('textarea[id=comments]').val(),
				        			customerNo: s.customer.no,
				        			type: detailModal.find('span[id=scheduleType]').text(),
				        			location: detailModal.find('input[id=location]').val(),
				        			importance: detailModal.find('select[id=importance]').val(),
				        			repetition: detailModal.find('select[id=repetition]').val(),
				        			startDate: startData,
				        			endDate: endData
				        		};
							
					//		console.log(scheduleData);
							
							  $.ajax({
				        		url: "${pageContext.request.contextPath}/schedule",
				        		type: "put",
				        		contentType: "application/json; charset=uft-8",
				        		dataType: "json",
				        		data: JSON.stringify(scheduleData), 
				        		success: function(data){
				        			alert('수정되었습니다.');
				        			detailModal.modal("hide");
									
				        			// 달력 객체 정보 수정
				        			calEvent.className = scheduleData.type;
									calEvent.start = startData;
									calEvent.end = endData;
									
									calendar.fullCalendar('updateEvent', calEvent);
									
							//		if(startDate==moment().format('YYYY-MM-DD HH:mm')){
										getTodayList(new Date());
							//		}
				        		},
				        		error: function(){
				        	//		alert('error');
				        		}
				        	}); 
							
						});
						
						// 삭제 버튼
						detailModal.find('a[id=modalDelete]').off().on('click', function(){
							
							if(confirm("일정을 삭제하시겠습니까?")){
								
								$.ajax({
									url: '${pageContext.request.contextPath}/schedule/'+calEvent.id,
									type: 'delete',
									success: function(data){
										if(data==1){										
											calendar.fullCalendar('removeEvents' , function(ev){
												return (ev._id == calEvent._id);
											});
											alert('삭제 완료');
											detailModal.modal("hide");
											
									//		if(startDate==moment().format('YYYY-MM-DD HH:mm')){
												getTodayList(new Date());
									//		}
											
										}else {
									//		console.log('디비에러');
										}
									},
									error: function(e){
										console.dir(e);
								//		alert('error');
									}
								});
							}
						});  // 삭제 버튼 끝
					}
				});

				
		 });
		 
		 // 날짜 변환 (moment -> moment/string)
		 function getDate(date){
			 
			 if(date!=null){
				// date.stripTime();
				if(date.hasZone()){
					 date.stripZone();
				}
				 return $.fullCalendar.moment(date).format('YYYY-MM-DD HH:mm');  // 'YYYY-MM-DD HH:mm'
			 } else { // null일 경우
				 return '';
			 }
		 }
		 
		 // 날짜 줄이기/늘리기
		 function resize(event, delta, revertFunc){
			//(event,dayDelta,minuteDelta,revertFunc) {

					/*  version 1.
						alert(
				            "The end date of " + event.title + " has been moved " +
				            dayDelta + " days and " +
				            minuteDelta + " minutes.\n" + event.id + "\n"+$.fullCalendar.formatDate(event.end,'yyyy-MM-dd')
				        ); */
					
				        
					alert(event.title + " end is now " + getDate(event.end)+ event.id);

				    // 수정할건지 확인
					if (!confirm("날짜를 변경하시겠습니까?")) {
						// 취소 시, 원래대로 되돌아감
						revertFunc();
					}else {
						// 날짜 수정
						var start = getDate(event.start);
						var end = getDate(event.end)!=''? getDate(event.end):start;
						
						////////////////////////////////// version 1. endDate null 처리
					/* 	console.dir(endDate);
						endDate = endDate!="" ? endDate : startDate;
						console.dir(endDate); */
						
						var scheduleData = {
								no: event.id,
			        			startDate: start,
			        			endDate: end,
			        			employeeNo: null,
			        			comments: null,
			        			customerNo: null,
			        			type: null,
			        			location: null,
			        			importance: null,
			        			repetition: null,
			        			date: null,
			        			regDate: null
						}
						
						console.log(start+"~"+end);
						
						$.ajax({
			        		url: "${pageContext.request.contextPath}/schedule",
			        		type: "put",
			        		contentType: "application/json; charset=uft-8",
			        		dataType: "json",
			        		data: JSON.stringify(scheduleData), 
			        		success: function(data){
			        			alert(data+' 날짜 늘어남');
			        		},
			        		error: function(e){
			      				console.log(e);
			        		//	alert('error');
					        	revertFunc();	
			        		}
			        	});							
					}
		 	}
			
			// 날짜 변경
		 	function eventDrop(event, delta, revertFunc){
		 		//(event, dayDelta, minuteDelta, allDay, revertFunc) {
		 	
				/***************************
					달력 내에서의 드래그
					날짜 수정 반영하기
				***************************/

				console.dir(event);
				console.dir(delta);
				
				var startDate = getDate(event.start);
				var endDate = getDate(event.end)!=''? getDate(event.end):startDate;
				
		    //    alert(event.title + " was dropped on "+startDate+"-"+endDate);
		        				
				var scheduleData = {
						no: event.id,
	        			startDate: startDate,
	        			endDate: endDate,
	        			employeeNo: null,
	        			comments: null,
	        			customerNo: null,
	        			type: null,
	        			location: null,
	        			importance: null,
	        			repetition: null,
	        			date: null,
	        			regDate: null
				}
				
			//	console.log(scheduleData);

		         if (confirm("날짜를 변경하시겠습니까?")) {
		        	$.ajax({
		        		url: "${pageContext.request.contextPath}/schedule",
		        		type: "put",
		        		contentType: "application/json; charset=uft-8",
		        		dataType: "json",
		        		data: JSON.stringify(scheduleData), 
		        		success: function(data){
		        			// alert('날짜 수정됨');
		        		//	if(startDate==moment().format('YYYY-MM-DD HH:mm')){
								getTodayList(new Date());
					//		}
		        		},
		        		error: function(e){
		      				console.log(e);
		        		//	alert('error');
				        	revertFunc();	
		        		}
		        	});
		        }else {
		        	revertFunc();	
		        }
	        }
		 	
		 	// 빈 칸 체크
		 	function addCheck(){

		 		var msg = 'ok';
		 		
		 		if($("#scheduleType").val()!='Task' && $('span.checked').length==0){ // $("input[name='customerNo']:checked").val()==null){
		 			return '고객을 선택해주세요.';
		 		}
		 		
		 		if($('#location').val()==''){
		 			return '장소를 입력해주세요.';
		 		}

		 		if($('#comments').val()=='' || $('#comments').val()==null){
		 			return '일정 내용을 입력해주세요.';
		 		}
		 		
		 		if($('#repetition').val()==''){
		 			return '반복 여부를 선택해주세요.';
		 		}
		 		
		 		if($('#importance').val()==''){
		 			return '중요도를 선택해주세요.';
		 		}

    			return msg;
		 	}
		 		
		 	
		 	// 오늘 일정 상세 보기 모달
		 	function getDetailSchedule(no){
		 		var dduration = 1;
				var dtype = 'hours';
				console.log(no);
				
				var todayModal = $('#todayDetailModal');
				var today_datetimepicker = $('#today_detail_datetimepicker');
				
				$.ajax({
					url: "${pageContext.request.contextPath}/schedule/"+no,
					type: "get",
					success: function(data){
						var schedule = JSON.parse(data);
						s = schedule;
						 console.log(schedule);
						todayModal.find('span[id=scheduleType]').text(schedule.type);
						todayModal.find('input[id=location]').val(schedule.location);
						todayModal.find('textarea[id=comments]').val(schedule.comments);
						todayModal.find('#startDate').text(schedule.startDate);
						todayModal.find('#endDate').text(schedule.endDate);

						todayModal.find('span[id=repetition]').text(schedule.repetition);
						if(schedule.customerNo!=null || schedule.customerNo!=""){
							todayModal.find('span[id=customerName]').text(schedule.customer.name);									
							todayModal.find('div[id=div_customerName]').show();
						}else {
							todayModal.find('div[id=div_customerName]').hide();
						}
						
						var importance = '보통';
						switch(schedule.importance){
						case 1:
							importance = '매우 중요';
							break;
						case 2:
							importance = '중요';
							break;
						case 3:
							importance = '보통';
							break;
						case 4:
							importance = '낮음';
							break;
						case 5:
							importance = '매우 낮음';
							break;
						
						}
						todayModal.find('span[id=importance]').text(importance);
						
					
						/* var d = ((moment(schedule.endDate)-moment(schedule.startDate))/60)/60/1000;

						if(schedule.type=='Call'){
							d = d*2;
							dtype = 'minuites';
						}else {
							dtype = 'hours';
						}
						
						todayModal.find('.dduration').removeClass('clicked');
						todayModal.find('#duration'+d).addClass('clicked'); */
						
						todayModal.modal('show');
						
						// 데이트피커
						/*  https://xdsoft.net/jqplugins/datetimepicker/ */
					 	 /* today_datetimepicker.datetimepicker({
					 		defaultDate: schedule.startDate,
					 		 allowTimes:[
					 			'10:00', '10:30', '11:00', '11:30', '12:00', '12:30', '13:00', '13:30',
					 			'14:00', '14:30', '15:00', '15:30', '16:00', '16:30', '17:00', '17:30',
					 			'18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30', '22:00'
				 			],
				 			yearStart: '2017',
					 		value: schedule.startDate,
					 		format:'Y-m-d H:i',
					 		onChangeDateTime:function(dp,$input){
					 			todayModal.find('#endDate').text(getDate(moment(dp).add(dduration,dtype)));
					 		}
					 	}); */
						
						
						/* if(schedule.type=='Event'){
							todayModal.find('#div_duration').hide();
						}else {
							todayModal.find('#div_duration').show();
						} */

					},
					error: function(){
					//	alert('error');
					}
				});
				
				/* todayModal.find('.dduration').off().on('click', function(ev){

					dduration = 1;
					dtype = 'hours';
					
					$('.dduration').removeClass('clicked');
					$(this).addClass('clicked');
					
					if(schedule.type=='Call'){
						dduration = 30;
						dtype = 'minutes';
					}
					
					dduration = dduration * Number($(this).val());
			//		console.log(dduration);

					var endDate = moment(today_datetimepicker.datetimepicker('getValue'));
					endDate.add(dduration, dtype);
					todayModal.find('#endDate').text(getDate(endDate));
					
				}); */
				
				/*
				 // 수정 버튼
				todayModal.find('a[id=modalSave]').off().on('click', function(ev){
					
					ev.preventDefault();
					ev.stopPropagation();  // 이벤트버블링 방지
					
					// 캘린더에 쓰일 Data (변경사항 저장 - type, end 날짜)						
					 var selectedDate_s = moment(today_datetimepicker.datetimepicker('getValue'));
					// var selectedDate_e = selectedDate_s.add(dduration,dtype);

					 var startData = getDate(selectedDate_s);
					 var endData = todayModal.find('#endDate').text();
					 
		//			console.log(calEvent);
        //			console.log(name);
        			
					// 서버에 보낼 Data
					var scheduleData = {
							no: schedule.no,
		        			comments: todayModal.find('textarea[id=comments]').val(),
		        			customerNo: schedule.customer.no,
		        			type: todayModal.find('span[id=scheduleType]').text(),
		        			location: todayModal.find('input[id=location]').val(),
		        			importance: todayModal.find('select[id=importance]').val(),
		        			repetition: todayModal.find('select[id=repetition]').val(),
		        			startDate: startData,
		        			endDate: endData
		        		};
					
			//		console.log(scheduleData);
					
					  $.ajax({
		        		url: "${pageContext.request.contextPath}/schedule",
		        		type: "put",
		        		contentType: "application/json; charset=uft-8",
		        		dataType: "json",
		        		data: JSON.stringify(scheduleData), 
		        		success: function(data){
		        			alert('수정되었습니다.');
		        			todayModal.modal("hide");
							
		        			// 달력 객체 정보 수정
		        			calEvent.className = scheduleData.type;
							calEvent.start = startData;
							calEvent.end = endData;
							
							calendar.fullCalendar('updateEvent', calEvent);
							
					//		if(startDate==moment().format('YYYY-MM-DD HH:mm')){
								getTodayList();
					//		}
		        		},
		        		error: function(){
		        	//		alert('error');
		        		}
		        	}); 
					
				});
				
				// 삭제 버튼
				todayModal.find('a[id=modalDelete]').off().on('click', function(){
					
					if(confirm("일정을 삭제하시겠습니까?")){
						
						$.ajax({
							url: '${pageContext.request.contextPath}/schedule/'+no,
							type: 'delete',
							success: function(data){
								if(data==1){										
									calendar.fullCalendar('removeEvents' , function(ev){
										return (ev._id == calEvent._id);
									});
									alert('삭제 완료');
									todayModal.modal("hide");
									
							//		if(startDate==moment().format('YYYY-MM-DD HH:mm')){
										getTodayList();
							//		}
									
								}else {
							//		console.log('디비에러');
								}
							},
							error: function(e){
								console.dir(e);
						//		alert('error');
							}
						});
					}
				});  // 삭제 버튼 끝 */
			}
		 
		 
	</script>
	<%@ include file="/include/addScheduleModal.jsp"%>
	<jsp:include page="/include/scheduleDetailModal.jsp"/>
	<jsp:include page="/include/todayScheduleDetailModal.jsp"/>
	
</body>
</html>