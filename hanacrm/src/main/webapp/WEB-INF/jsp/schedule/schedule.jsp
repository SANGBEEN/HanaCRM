<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mtr-datepicker.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mtr-datepicker.default-theme.min.css">
	
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
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	
	<!-- start: javascript -->
	<script src='${pageContext.request.contextPath}/js/jquery.min.js'></script> <!-- for calendar -->
	<script src='${pageContext.request.contextPath}/js/moment.min.js'></script> <!-- for calendar -->
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
		
		.mtr-datepicker{
		    width: 200px !important;
		    display: inline-block !important;
		    margin: 10px 20px !important;
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
				<li><a href="#">Calendar</a></li>
			</ul>

			<div class="row-fluid sortable">
				<div class="box span12">
				  <div class="box-header" data-original-title>
					  <h2><i class="halflings-icon calendar"></i><span class="break"></span>Calendar</h2>
				  </div>
				  <div class="box-content">
					<div id="external-events" class="span3 hidden-phone hidden-tablet">
						<!-- 이벤트 분류 -->
						<h4>Draggable Events</h4>
						<div class="external-event badge badge-important">Important</div>
						<br/>
						<div class="external-event badge badge-success">Meeting</div>
						<br/>
						<div class="external-event badge badge-warning">Call</div>
						<br/>
						<div class="external-event badge badge-info">Task</div>
						<br/>
						<div class="external-event badge">Event</div>
						<br/>
						<div class="external-event badge badge-inverse">Other</div>
						<p>
<!-- 							<label for="drop-remove"><input type="checkbox" id="drop-remove" /> remove after drop</label> -->
						</p>
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
	
	
	
	<!-- start: JavaScript-->

	<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>

	<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>

	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>

	<script src='${pageContext.request.contextPath}/js/fullcalendar.js'></script>
	<%-- <script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script> --%>

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

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/mtr-datepicker.min.js"></script>
	<!-- end: JavaScript-->
	
	<script> 
		 console.dir('${scheduleList}');
				 
		 jQuery(function($) {
				
			addModal = $('#addModal');
			detailModal = $('#detailModal');
		//	 modal.remove();
			 
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
				 	eventList.push({ title : '('+data[i].customer.name+')',
									start : moment(data[i].startDate).format('YYYY-MM-DD HH:mm'),
									end:  moment(data[i].endDate).format('YYYY-MM-DD HH:mm'),
									className: data[i].type,
									id: data[i].no});
				 	console.log(new moment(data[i].endDate).format('YYYY-MM-DD HH:mm'));
					
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
					nextDayThreshold:"00:00",
					
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

						// 1. 등록 폼 모달 띄움
						detailModal.remove();
						addModal.modal();
						
						// 2. 고객 정보 받아오기, 모달에 셋팅
						$.ajax({
							url: "${pageContext.request.contextPath}/customer/listForModal",
			        		type: "get",
			        		success: function(data){
			        			html = "";
			        			 JSON.parse(data).forEach(function(element) {
			        			    html += '<tr><td><input type="radio" name="customerNo" value="'+element.no+'"/></td><td id="'+element.no+'">'
			        			    		+ element.name + '</td><td>'
			        			    		+ element.phone + '</td><td>'
			        			    		+ element.regDate + '</td><td>'
			        			    		+ element.grade + '</td></tr>';
			        			});
			        			
			        			console.log(html); 
			        			
			        			var te = $('#table-data').html(html);
			        			console.dir(te);
			        			
			        			//te.querySelector('.customerBody').innerHTML += html;
			        			//console.log(te);
			        		},
			        		error: function(){
			        			alert('error');
			        		} 
						});
						
					
						// 3. 추가할 이벤트 타입, 날짜 저장
						// retrieve the dropped element's stored Event Object
						var originalEventObject = $(this).data('eventObject');
						var $extraEventClass = $(this).attr('data-class');
						
						// we need to copy it, so that multiple events don't have a reference to the same object
						var copiedEventObject = $.extend({}, originalEventObject);
						
						// assign it the date that was reported
						copiedEventObject.start = date;
						copiedEventObject.end = date;
						copiedEventObject.allDay = false;
						copiedEventObject.className = originalEventObject.title;
						copiedEventObject.title = "(고객이름)";
					
						console.log(copiedEventObject);
						
						/* 4. 추가할 이벤트 정보 모달에 셋팅
							1) type 설정 (originalEventObject.title)
							2) 시작 날짜 설정 (date 이용)
						**************************/
						
						console.log('1: '+copiedEventObject.className);
							
		 				// 1) type 설정
					//	form.scheduleType.value = copiedEventObject.className;
						$("#scheduleType").val(originalEventObject.title);
					
						// 2) 날짜 설정
						var start = getDate(date);
						var end = start;
					/* 	$('#startDate').text(start);
						$('#endDate').text(end); */
						
						// 데이트피커					
						var startDatepicker = new MtrDatepicker(setDatepickerConfig('start', start));
						var endDatepicker = new MtrDatepicker(setDatepickerConfig('end', end));
						
						startDatepicker.onChange('date', function(){
							startDatepicket = new MtrDatepicker(setDatepickerConfig('start',startDatepicker.toString()));
						});
						
						console.dir($("#scheduleType"));
						console.log(start +"~"+end);
				
						
						// 5. 등록 처리
						$('#modalSave').click(function(ev){
							// We don't want this to act as a link so cancel the link action
							ev.preventDefault();
							
							// 캘린더에 쓰일 Data (변경사항 저장 - type, end 날짜)						
							 var startData = getDate(moment(startDatepicker.toString())); 
							 var endData = getDate(moment(endDatepicker.toString()));
							 var cNo = $("input[name='customerNo']:checked").val();
							 var name = document.getElementById(cNo).innerText;
							 console.log('datepicker start output : '+startData);
							 console.log('datepicker end output : '+endData);
							
							copiedEventObject.title = name;
							copiedEventObject.start = startData;
							copiedEventObject.end = endData;
	
							console.log(copiedEventObject);
		        			console.log(name);
							
							// 서버에 보낼 Data
							var scheduleData = {
				        			/* employeeNo: 1, //'${session.emp.no}', */
				        			comments: $('#comments').val(),
				        			customerNo: cNo,
				        			type: $('#scheduleType').val(),
				        			location: $('#location').val(),
				        			importance: 1,  // important 설정
				        			repetition: $('#repetition').val(),
				        			startDate: startData,
				        			endDate: endData
				        		};
							
							console.log(scheduleData);
							
							  $.ajax({
				        		url: "${pageContext.request.contextPath}/schedule",
				        		type: "post",
				        		data: scheduleData, 
				        		success: function(scheduleNo){
				        			alert('추가'+scheduleNo);
				        			addModal.modal("hide");
									addModal.remove();
									// 추가할 이벤트에 scheduleNo 저장
									copiedEventObject.id = scheduleNo;
									// render the event on the calendar
									// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
									$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
				        		},
				        		error: function(){
				        			alert('error');
				        		}
				        	}); 
							 
								
								$('#modalCancle').click(function(){
									addModal.remove();
								});
								
								addModal.modal('show').on('hidden', function(){
									addModal.remove();
								});
							
						//	 $(".modal-body").val("");
						}); 
					},
					
					selectable: true,
					selectHelper: true,
					select: function(start, end, allDay) {
						
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
						
						addModal.remove();
						detailModal.modal();
						
						/*
						기본 셋팅
						1. type 설정 (어딨지)
						2. 시작 날짜 설정 (date 이용)
						*/
						
					//	var form = document.addScheduleForm;
						//form.comments.value = calEvent.title;
						//form.type.value = calEvent.className;
						//form.location.value = 'test';
						//form.repetition.value = "매주";
						
						$('#scheduleType').val(calEvent.className);
						var s;
						var start = getDate(calEvent.start);
						var end = getDate(calEvent.end)!=''? getDate(calEvent.end):start;

						console.log(start+'~'+end);
						
						$.ajax({
							url: "${pageContext.request.contextPath}/schedule/"+calEvent.id,
							type: "get",
							success: function(data){
								var schedule = JSON.parse(data);
								s = schedule;
								console.dir(schedule);
								$('#location').val(schedule.location);
								$('#comments').val(schedule.comments);
								$('#repetition').val(schedule.repetition);
								$('#customerName').text(schedule.customer.name);
								
								// 데이트피커
								var detailStartDatepicker = new MtrDatepicker(setDatepickerConfig('detail-start', start));
								var detailEndDatepicker = new MtrDatepicker(setDatepickerConfig('detail-end', end));
								
								 var datepickerOutput = detailStartDatepicker.toString();
								 console.log('datepicker output : '+detailEndDatepicker);
							},
							error: function(){
								alert('error');
							}
						});
						
						
						$('#modalSave').click(function(){
							// 캘린더에 쓰일 Data (변경사항 저장 - type, end 날짜)						
							 var startData = getDate(moment(detailStartDatepicker.toString())); 
							 var endData = getDate(moment(detailEndDatepicker.toString()));
							 console.log('datepicker start output : '+startData);
							 console.log('datepicker end output : '+endData);
	
							console.log(calEvent);
		        			console.log(name);
							
							// 서버에 보낼 Data
							var scheduleData = {
				        			comments: $('#comments').val(),
				        			customerNo: s.customer.no,
				        			type: $('#scheduleType').val(),
				        			location: $('#location').val(),
				        			importance: 1,  // important 설정
				        			repetition: $('#repetition').val(),
				        			startDate: startData,
				        			endDate: endData
				        		};
							
							console.log(scheduleData);
							
							  $.ajax({
				        		url: "${pageContext.request.contextPath}/schedule/"+calEvent.id,
				        		type: "put",
				        		contentType: "application/json; charset=uft-8",
				        		dataType: "json",
				        		data: JSON.stringify(scheduleData), 
				        		success: function(data){
				        			alert('수정'+data);
				        			detailModal.modal("hide");
				        			detailModal.remove();
									
				        			// 달력 객체 정보 수정
				        			calEvent.className = scheduleData.type;
									calEvent.start = startData;
									calEvent.end = endData;
				        		},
				        		error: function(){
				        			alert('error');
				        		}
				        	}); 
							
						});
						
						$('#modalDelete').click(function(){
							
							$.ajax({
								url: '${pageContext.request.contextPath}/schedule/'+calEvent.id,
								type: 'delete',
								success: function(data){
									if(data==1){										
										calendar.fullCalendar('removeEvents' , function(ev){
											return (ev._id == calEvent._id);
										})
										detailModal.modal("hide");
										detailModal.remove();
									}else {
										console.log('디비에러');
									}
								},
								error: function(e){
									console.dir(e);
									alert('error');
								}
							});
						});
						
						$('#modalCancle').click(function(){
							detailModal.modal("hide");
							detailModal.remove();
						});
						
						

					}
				});

				
		 })
		 	 
		 
		 // 날짜 변환 (moment -> moment/string)
		 function getDate(date){
			 
			// console.log('getDate() first date is '+date);
			 
			 if(date!=null){
				// date.stripTime();
				 date.stripZone();
			//	 console.log('getDate() last date is '+date);
				 console.log('getDate() last format date is '+$.fullCalendar.moment(date).format());
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
					if (!confirm("is this okay?")) {
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
			        			alert('error');
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
				
				var start = getDate(event.start);
				var end = getDate(event.end)!=''? getDate(event.end):start;
				
		        alert(event.title + " was dropped on "+start+"-"+end);
		        				
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
				
				console.log(scheduleData);

		         if (confirm("Are you sure about this change?")) {
		        	$.ajax({
		        		url: "${pageContext.request.contextPath}/schedule",
		        		type: "put",
		        		contentType: "application/json; charset=uft-8",
		        		dataType: "json",
		        		data: JSON.stringify(scheduleData), 
		        		success: function(data){
		        			alert('날짜 수정됨');
		        		},
		        		error: function(e){
		      				console.log(e);
		        			alert('error');
				        	revertFunc();	
		        		}
		        	});
		        }else {
		        	revertFunc();	
		        }
	        }
		 		
		 		
		 	function setDatepickerConfig(type, date){
		 	// 데이트피커
				 var config = {
					  target:     type+'-date-mtr-datepicker',         // ID of HTML element
					  timestamp:  date, // moment(calEvent.start).format('YYYY-MM-DD HH:mm'),    // Starting date
					  future:     false,                // Only dates in the future,
					  smartHours: true,                // Make a smart switch from AM to PM
					  animations: true,                 // NOTE: thew version with disabled animations is not stable
					
					  months: {
					    min: 0,
					    max: 11,
					    step: 1
					  },
					  minutes: {
					    min: 0,
					    max: 50,
					    step: 10
					  },
					  years: {
					    min: 2000,
					    max: 2030,
					    step: 1
					  }
				};
				 
				return config;
		 	}
		 
	</script>
	<%@ include file="/include/addScheduleModal.jsp"%>
	<jsp:include page="/include/scheduleDetailModal.jsp"/>
	
</body>
</html>