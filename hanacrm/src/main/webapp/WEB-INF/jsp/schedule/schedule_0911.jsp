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
		.fc-event-skin {
			background-color: red
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
						<!-- <p>
							<label for="drop-remove"><input type="checkbox" id="drop-remove" /> remove after drop</label>
						</p> -->
						</div>

						<div id="calendar" class="span9"></div>
						<div id="calendar1" class="span9"></div>
						
						<button class="ace-icon fa fa-chevron-left" onclick="prevFunc()">aaa</button>

		
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

	<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>
	<%-- <script src='${pageContext.request.contextPath}/js/fullcalendar.min.ace.js'></script> --%>
	<%-- <script src='${pageContext.request.contextPath}/js/fullcalendar.js'></script> --%>

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
	
	 	/*  $('#calendar').fullCalendar({
		    customButtons: {
		        myCustomButton: {
		            text: 'custom!',
		            click: function() {
		                alert('clicked the custom button!');
		            }
		        }
		    },
		    header: {
		        left: 'prev,next today myCustomButton',
		        center: 'title',
		        right: 'month,agendaWeek,agendaDay'
		    },
		    
		    // events: [],  // '/요청.jsp' - json일 경우
		    
		    events: function(start, end, timezone, callback) {
		        $.ajax({
		            url: 'myxmlfeed.php',
		            dataType: 'json',
		            data: {
		                // our hypothetical feed requires UNIX timestamps
		                start: start.unix(),
		                end: end.unix()
		            },
		            success: function(doc) {
		                var events = [];
		                $(doc).find('event').each(function() {
		                    events.push({
		                        title: $(this).attr('title'),
		                        start: $(this).attr('start'), // will be parsed
		                        end: $(this).attr('start'),
		                        backgroundColor: '#fff'
		                    });
		                });
		                callback(events);
		            }
		        });
		    },
		    
		    eventClick: function(calEvent, jsEvent, view) {

		        alert('Event: ' + calEvent.title);
		        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
		        alert('View: ' + view.name);

		        // change the border color just for fun
		        $(this).css('border-color', 'red');

		    }
		}); */
		  
	//	 var FC = $.fullCalendar; // a reference to FullCalendar's root namespace
		 
		 console.log('${scheduleList}');
		 
		 jQuery(function($) {
				
				/* initialize the external events
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
				
				/* get event data
				-----------------------------------------------------------------*/
				
				var eventList = [];
				var data = ${scheduleList};
				for(var i=0; i<data.length; i++){
					eventList.push({ title : data[i].comments,
									start : new Date(data[i].startDate),
									className : data[i].type});
					
				}
				
				
				/* initialize the calendar
				-----------------------------------------------------------------*/

				var date = new Date();
				var d = date.getDate();
				var m = date.getMonth();
				var y = date.getFullYear();

				// 기존 캘린더 지움
			//	$('#calendar').empty();

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
						/* [
						
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
					droppable: true, // this allows things to be dropped onto the calendar !!!
					drop: function(date) { // this function is called when something is dropped
					
						// retrieve the dropped element's stored Event Object
						var originalEventObject = $(this).data('eventObject');
						var $extraEventClass = $(this).attr('data-class');
						
						
						// we need to copy it, so that multiple events don't have a reference to the same object
						var copiedEventObject = $.extend({}, originalEventObject);
						
						// assign it the date that was reported
						copiedEventObject.start = date;
						copiedEventObject.allDay = false;
						if($extraEventClass) copiedEventObject['className'] = [$extraEventClass];
						
						// render the event on the calendar
						// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
						$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
						
						// is the "remove after drop" checkbox checked?
						if ($('#drop-remove').is(':checked')) {
							// if so, remove the element from the "Draggable Events" list
							$(this).remove();
						}
						
					}
					,
					selectable: true,
					selectHelper: true,
					select: function(start, end, allDay) {
						
						bootbox.prompt("New Event Title:", function(title) {
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
						

						calendar.fullCalendar('unselect');
					}
					,
					eventClick: function(calEvent, jsEvent, view) {

						//display a modal
						var modal = 
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
						</div>';
					
					
						var modal = $(modal).appendTo('body');
						modal.find('form').on('submit', function(ev){
							ev.preventDefault();

							calEvent.title = $(this).find("input[type=text]").val();
							calendar.fullCalendar('updateEvent', calEvent);
							modal.modal("hide");
						});
						modal.find('button[data-action=delete]').on('click', function() {
							calendar.fullCalendar('removeEvents' , function(ev){
								return (ev._id == calEvent._id);
							})
							modal.modal("hide");
						});
						
						modal.modal('show').on('hidden', function(){
							modal.remove();
						});


						//console.log(calEvent.id);
						//console.log(jsEvent);
						//console.log(view);

						// change the border color just for fun
						//$(this).css('border-color', 'red');

					}
				});
		 })
		 
		/*  $('#my-prev-button').click(function() {
			 
			//	$('#calendar').empty();
			 
			// var moment = $('#calendar').fullCalendar('getDate').format('YYYYMM');
			 
		//	 console.log(moment);
			 
			 $.ajax({
				 url: "/schedule/schedule/201708",
				 type: "get",
				 dataType: "json",
				 success: function(data){
					 eventList = [];
					 for(var i=0; i<data.length; i++){
					 	eventList.push({
					 		title: data.comments,
					 		start: data.startDate,
					 		className: data.type
					 	});
					 }
					 
				     $('#calendar').fullCalendar('prev');
					 $('#calendar').fullCalendar({
						events: eventList
					 })
				 }
			 })
			 
		});
		 
		 function prevFunc(date){
			 $.ajax({
				 url: "/schedule/schedule/date",
				 type: "get",
				 dataType: "json",
				 success: function(data){
					 eventList = [];
					 for(var i=0; i<data.length; i++){
					 	eventList.push({
					 		title: data.comments,
					 		start: data.startDate,
					 		className: data.type
					 	});
					 }
					 
					 $('#calendar').fullCalendar('renderEvent', eventList, true);
				 }
			 })
		 } */
	
	</script>
	
</body>
</html>