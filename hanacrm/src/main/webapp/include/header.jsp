<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
  <!--  <script src='${pageContext.request.contextPath}/js/jquery.min.js'></script>
   <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script> -->
	<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="${pageContext.request.contextPath}/main"><span style="font-family: Bungee Inline !important;">HANA CRM</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white warning-sign"></i>
							</a>
							<ul class="dropdown-menu notifications">
								<li class="dropdown-menu-title">
										<span>You have 11 notifications</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>	
	                           	<li>
	                                   <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">1 min</span> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">7 min</span> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">8 min</span> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">16 min</span> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">36 min</span> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="icon yellow"><i class="icon-shopping-cart"></i></span>
										<span class="message">2 items sold</span>
										<span class="time">1 hour</span> 
	                                   </a>
	                               </li>
								<li class="warning">
	                                   <a href="#">
										<span class="icon red"><i class="icon-user"></i></span>
										<span class="message">User deleted account</span>
										<span class="time">2 hour</span> 
	                                   </a>
	                               </li>
								<li class="warning">
	                                   <a href="#">
										<span class="icon red"><i class="icon-shopping-cart"></i></span>
										<span class="message">New comment</span>
										<span class="time">6 hour</span> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="icon green"><i class="icon-comment-alt"></i></span>
										<span class="message">New comment</span>
										<span class="time">yesterday</span> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="icon blue"><i class="icon-user"></i></span>
										<span class="message">New user registration</span>
										<span class="time">yesterday</span> 
	                                   </a>
	                               </li>
	                               <li class="dropdown-menu-sub-footer">
	                           		<a>View all notifications</a>
								</li>	
							</ul>
						</li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white tasks"></i>
							</a>
							<ul class="dropdown-menu tasks">
								<li class="dropdown-menu-title">
										<span>You have 17 tasks in progress</span>
									<a href="#refresh"><i class="icon-repeat"></i></a>
								</li>
								<li>
	                                   <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
	                                       <div class="taskProgress progressSlim red">80</div> 
	                                   </a>
	                               </li>
	                               <li>
	                                   <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
	                                       <div class="taskProgress progressSlim green">47</div> 
	                                   </a>
	                               </li>
	                               <li>
	                                   <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
	                                       <div class="taskProgress progressSlim yellow">32</div> 
	                                   </a>
	                               </li>
								<li>
	                                   <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
	                                       <div class="taskProgress progressSlim greenLight">63</div> 
	                                   </a>
	                               </li>
	                               <li>
	                                   <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
	                                       <div class="taskProgress progressSlim orange">80</div> 
	                                   </a>
	                               </li>
								<li>
	                           		<a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>	
							</ul>
						</li>
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<li id="li_reservationList" class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white envelope"></i>
								<span id="reservationCount" class="badge-important" style="padding:4px; font-size:0.7rem"></span>
							</a>
							<ul class="dropdown-menu messages" id="ui_reservationList">
							
							</ul>
						</li>
						<!-- end: Message Dropdown -->
						<li>
							<a class="btn" href="#">
								<i class="halflings-icon white wrench"></i>
							</a>
						</li>
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i>${emp.name }
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
										<span>Account Settings</span>
								</li>
								<li><a href="${pageContext.request.contextPath}/emp/profile"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="${pageContext.request.contextPath}/logout"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->

<script>

	/* $('#refresh').on('click',function(){
		refresh();
	}); */
	
	function refresh(){

		 $.ajax({
			url: "${pageContext.request.contextPath}/schedule/reservation/listForAlarm",
			type: "get",
			dataType: "json",
			success: function(reservationList){
				
				var html = '<li class="dropdown-menu-title"><span>'+reservationList.length+'개의 신청 내역</span>'+
							'<a href="#" onclick="refresh()"><i class="icon-repeat"></i></a></li>';
			//	var rList = reservationList; //JSON.parse(reservationList);
				var size = reservationList.length>5 ? 5 : reservationList.length;
				
				for(var i=0; i<size; i++){
					
					var msg = reservationList[i].msg!=null? reservationList[i].msg: '메시지 없음';
					var title = reservationList[i].customer.name;
					
					switch(reservationList[i].type){
						case 'Important':
							title += ' <span class="label-important" style="padding:3px">Important</span>';
							type = 'Important';
							break;
						case 'Meeting':
							title += ' <span class="label-success" style="padding:3px">Meeting</span>';
							type = 'Meeting';
							break;
						case 'Call':
							title += ' <span class="label-warning" style="padding:3px">Call</span>';
							type= 'Call';
							break;
						case 'Task':
							title += ' <span class="label-info" style="padding:3px">Task</span>';
							type = 'Task';
							break;
						case 'Event':
							title += ' <span style="background-color:#646464; color:#fff; padding:3px">Event</span>';
							type = 'Event';
							break;
						case 'Other':
							title += ' <span style="background-color:#333333; color:#fff; padding:3px">Other</span>';
							type = 'Other';
							break;
					}
					
					html += '<li><a href="${pageContext.request.contextPath}/schedule/reservation"><span class="from" style="margin-bottom:1px"><b>' + title +
	                   '</b></span><span class="header">' + reservationList[i].location +
	                   '<span class="time">' + reservationList[i].regDate +
	                   '</span></span><span class="message">' + msg +
	                   '</span></a></li>';
	                   /* <dir align="center"><span class="btn" id="agree" style="background-color:#5bc0de; height:34px; width:54px; padding:3px" data-reservation=\'' + JSON.stringify(reservationList[i]) + '\'>수락</span>' +
	                   '<span class="btn yellow" id="disagree" style="height:34px; width:54px; padding:3px" data-dismiss="modal">거절</span></div> */
				}
	                   
	              html += '<li><a class="dropdown-menu-sub-footer" href="${pageContext.request.contextPath}/schedule/reservation">모든 메시지 보기</a></li>';
				
				$('#reservationCount').text(reservationList.length);
	            $('#ui_reservationList').html(html);
	            
			}
		});
		 
		//  $('#li_reservationList').addClass('open');
	}
	
	 $('document').ready(function(){
		
		refresh();
		
	/*	$('.agree').on('click', function(){
			var reservation = $(this).data('reservation');
			
			console.log('agree');
			
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
		});
	
		$('a[id=disagree]').click(function(){
			
			console.log('disagree');
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
		});
	});
	
	function updateReservation(reservationData){
		
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
						}
						refresh();
					}
				},
				error: function(e){
				//	alert('error');
				}
			}); 
	}; */
	
	});
	
</script>

<!-- comments 입력 -->
	<!-- <div class="modal hide fade" id="commentsModal">
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
		</div>
	</div> -->