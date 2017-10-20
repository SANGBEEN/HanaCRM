<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" /> --%>
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery.datetimepicker.css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>
		div {
			position: relative;
		}
	</style>
</head>
<body>


	<!-- ace date-timepicker1 -->
	<!-- <div class="widget-box">
		<div class="widget-header">
			<h4 class="widget-title">날짜 선택</h4>
		</div>

		<div class="widget-body">
			<div class="widget-main"> -->
				<div class="input-group">
					<input id="date-timepicker1" type="text" class="form-control" />
					<span class="input-group-addon">
						<i class="fa fa-clock-o bigger-110"></i>
					</span>
				</div>
			<!-- </div>
		</div>
	</div> -->


	<input id="datetimepicker" type="text" >
	

	<!-- ace scripts -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
	<%-- <script src="${pageContext.request.contextPath}/js/ace-elements.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/ace.min.js"></script> --%>
	<script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
	<%-- <script src="${pageContext.request.contextPath}/js/spinbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-timepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script> --%>
	<!-- <script type="text/javascript" async="" src="http://mc.yandex.ru/metrika/watch.js"></script> -->
	
	<script src="${pageContext.request.contextPath}/js/jquery.datetimepicker.full.js"></script>
	
	
	<!-- ace settings handler -->
	<%-- <script src="${pageContext.request.contextPath}/js/ace-extra.min.js"></script> --%>

	<script>
	
		/* // ACE bootstrap // date-timepicker1
	 	$('#date-timepicker1').datetimepicker({
			 //format: 'MM/DD/YYYY h:mm:ss A',//use this option to display seconds
			 icons: {
				time: 'fa fa-clock-o',
				date: 'fa fa-calendar',
				up: 'fa fa-chevron-up',
				down: 'fa fa-chevron-down',
				previous: 'fa fa-chevron-left',
				next: 'fa fa-chevron-right',
				today: 'fa fa-arrows ',
				clear: 'fa fa-trash',
				close: 'fa fa-times'
			 }
			}).next().on(ace.click_event, function(){
				$(this).prev().focus();
			});
		
	 	$(document).one('ajaxloadstart.page', function(e) {
			autosize.destroy('textarea[class*=autosize]')
			
			$('.limiterBox,.autosizejs').remove();
			$('.daterangepicker.dropdown-menu,.colorpicker.dropdown-menu,.bootstrap-datetimepicker-widget.dropdown-menu').remove();
		}); */
		
	 	
	 	/*  https://xdsoft.net/jqplugins/datetimepicker/ */
	 	$('#datetimepicker').datetimepicker({
	 		defaultDate: new Date(),
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
	 		value: '2017-10-20 13:00',
	 		format:'y-m-d H:i',
 			
	 	});
	 	
	/*  	$('#datetimepicker').datetimepicker({onChangeDateTime:function(dp,$input){
			    alert($input.val()+'change');
		 }});
	 	 */
	</script>
</body>
</html>