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
	
	<style>
		.Meeting {
			background-color : #00A300 !important;
			color: white
		}
		
		.Task {
			background-color : #2D89EF !important;
			color: white
		}
		
		.Call {
			background-color : #FFC40D !important;
			color: white
		}
		
		.Event {
			background-color : #999 !important;
			color: white
		}
		
		.Other {
			background-color : #333 !important;
			color: white
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
						<div class="external-event badge badge-success">Meeting</div>
						<div class="external-event badge badge-warning">Call</div>
						<div class="external-event badge badge-info">Task</div>
						<div class="external-event badge">Event</div>
						<div class="external-event badge badge-inverse">Other</div>
						<p>
							<label for="drop-remove"><input type="checkbox" id="drop-remove" /> remove after drop</label>
							<button id="addBtn">추가테스트</button>
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

	<%-- <script src='${pageContext.request.contextPath}/js/fullcalendar.js'></script> --%>
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
	<!-- end: JavaScript-->
	
	<script> 
		 console.log('${scheduleList}');
		 
		 
		 jQuery(function($) {
				
			 var modal = $('#addModal');
			 
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
				 	eventList.push({ title : data[i].comments,
									start : new Date(data[i].startDate),
									end: new Date(data[i].endDate),
									className: data[i].type,
									id: data[i].no});
					
				}
				
				
				/************************** initialize the calendar
				-----------------------------------------------------------------*/

				var date = new Date();
				var d = date.getDate();
				var m = date.getMonth();
				var y = date.getFullYear();

				// 기존 캘린더 지움
				$('#calendar').empty();

				var calendar = $('#calendar').fullCalendar({
					//isRTL: true,
					//firstDay: 1,// >> change first day of week 
					
					buttonHtml: {
						prev: '<i class="ace-icon fa fa-chevron-left"></i>',
						next: '<i class="ace-icon fa fa-chevron-right"></i>'
					},
				
					header: {
						left: 'prev,next today',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					events: 
						eventList
						
						/*
							테스트 데이터
						[
						
						 {
								title: '${scheduleList[0].comments}',
								start: new Date('${scheduleList[0].startDate}'),
								className: 'label-important'
							  }
					] */
					,
					
					/**eventResize: function(event, delta, revertFunc) {

						alert(event.title + " end is now " + event.end.format());

						if (!confirm("is this okay?")) {
							revertFunc();
						}

					},*/
					
					editable: true,
					eventDrop: function(event, delta, revertFunc) {
						/***************************
							달력 내에서의 드래그
							날짜 수정 반영하기
						***************************/

				       // alert(event.title + " was dropped on "+event.id);
						
						console.log(event);
						
						var test = {
								no: event.id,
			        			startDate: event.start,
			        			endDate: event.end,
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
						
						console.log(test);

				         if (confirm("Are you sure about this change?")) {
				        	$.ajax({
				        		url: "${pageContext.request.contextPath}/schedule",
				        		type: "put",
				        		contentType: "application/json; charset=uft-8",
				        		dataType: "json",
				        		data: JSON.stringify(test), 
				        		success: function(data){
				        			alert('날짜 수정됨');
						            revertFunc();
				        		},
				        		error: function(e){
				      				console.log(e);
				        			alert('error');
				        		}
				        	});
				        }

				    },
					
					droppable: true, // this allows things to be dropped onto the calendar !!!
					drop: function(date, jsEvent) { // this function is called when something is dropped
						
						/************************** 
							달력에 새로운 이벤트 추가
							모달 띄우기
						***************************/
	
						// 등록 폼 모달 띄움
						modal.modal();
					
						
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
						/* if($extraEventClass) 
							copiedEventObject['className'] = [$extraEventClass]; */
					
						console.log(copiedEventObject);
						
						/************************
							기본 셋팅
							1. type 설정 (어딨지)
							2. 시작 날짜 설정 (date 이용)
						
						**************************/
						var form = document.addScheduleForm;
						console.log('1: '+originalEventObject.title);
						form.scheduleType.value = copiedEventObject.className;
					//	$("#scheduleType").val();
						
						console.log($("#scheduleType").val());
				
						// 등록 함수
						modal.find('form').on('submit', function(ev){
							ev.preventDefault();
							
							// 캘린더에 쓰일 Data
						//	var calEvent = {title:'', start:'', end:'', className:'', id:''};
							copiedEventObject.title = $(this).find("input[id=comments]").val();
							copiedEventObject.className = form.scheduleType.value;
							//calEvent.start = '2017-09-20'; //$(this).find("input[id=start]").val();
							//calEvent.end = '2017-09-20'; //$(this).find("input[id=end]").val();
							
							// 날짜 format							
							var fullDate = date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate();
							
							console.log(copiedEventObject);
							console.log(fullDate);
							
							// 서버에 보낼 Data
							var scheduleData = {
				        			employeeNo: 1, //'${session.emp.no}',
				        			comments: form.comments.value,
				        			customerNo: 1,
				        			type: copiedEventObject.className,
				        			location: form.location.value,
				        			importance: 1,  // important
				        			repetition: form.repetition.value,
				        			startDate: fullDate,
				        			endDate: fullDate
				        		};
							
							console.log(scheduleData);
							
							 $.ajax({
				        		url: "${pageContext.request.contextPath}/schedule",
				        		type: "post",
				        		data: scheduleData, 
				        		success: function(data){
				        			alert('추가');
									modal.modal("hide");
									// render the event on the calendar
									// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
									$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
				        		},
				        		error: function(){
				        			alert('error');
				        		}
				        	});
							
						}); 
							
						$('#modalCancle').click(function(){
							modal.modal("hide");
						});
						
						modal.modal('show').on('hidden', function(){
							modal.remove();
						}); 
						

					}
					,
					selectable: true,
					selectHelper: true,
					select: function(start, end, allDay) {
						
						b/* ootbox.prompt("New Event Title:", function(title) {
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
					}
					,
					eventClick: function(calEvent, jsEvent, view) {
						
						alert(calEvent.title+"\n"+calEvent.start+"\n"+calEvent.end+"\n"+calEvent.className);
						
						modal.modal();
						
						/*
						기본 셋팅
						1. type 설정 (어딨지)
						2. 시작 날짜 설정 (date 이용)
						*/
						
						var form = document.addScheduleForm;
						form.comments.value = calEvent.title;
						form.type.value = calEvent.className;
						form.location.value = 'test';
						form.repetition.value = "매주";

						//   원본 모달
						//display a modal
						/* var modal = 
						'<div class="modal fade">\
						  <div class="modal-dialog">\
						   <div class="modal-content">\
							 <div class="modal-body">\
							   <button type="button" class="close" data-dismiss="modal" style="margin-top:-10px;">&times;</button>\
							   <form class="no-margin">\
								  <label>Change event name &nbsp;</label>\
								  <input class="middle" autocomplete="off" type="text" value="' + calEvent.title + '" />\
								 <button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Save</button>\
							   </form>\
							 </div>\
							 <div class="modal-footer">\
								<button type="button" class="btn btn-sm btn-danger" data-action="delete"><i class="ace-icon fa fa-trash-o"></i> Delete Event</button>\
								<button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
							 </div>\
						  </div>\
						 </div>\
						</div>'; */

					}
				});
		 })
		 
		 $('.addBtn').click(function(){
			 alert('btn\n'+eventList);
		 })
	</script>
	
	<jsp:include page="/include/addScheduleModal.jsp"/>
</body>
</html>