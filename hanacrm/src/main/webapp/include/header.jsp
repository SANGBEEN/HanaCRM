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
				<a class="brand" href="${pageContext.request.contextPath}/main" style="margin-top: 4px;"><span style="font-family: Bungee Inline !important;">HANA SFA</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						
						<!-- start: Message Dropdown -->
						<li id="li_reservationList" class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<!-- <i class="halflings-icon white envelope" style="vertical-align: bottom;"></i> -->
								<i class="fa fa-bell-o" aria-hidden="true"></i>
								<span id="reservationCount" class="badge-important" style="padding-left:6px; padding-right:6px; padding-top:2px; padding-bottom:2px; font-size:0.7rem; border-radius: 10px;"></span>
							</a>
							<ul class="dropdown-menu messages" id="ui_reservationList">
							
							</ul>
						</li>
						<!-- end: Message Dropdown -->
					
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#" style="margin-top: 4px !important;">
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
							title += ' <span class="label-important" style="padding:3px; font-size: 0.5rem;">Important</span>';
							type = 'Important';
							break;
						case 'Meeting':
							title += ' <span class="label-success" style="padding:3px; font-size: 0.5rem;">Meeting</span>';
							type = 'Meeting';
							break;
						case 'Call':
							title += ' <span class="label-warning" style="padding:3px; font-size: 0.5rem;">Call</span>';
							type= 'Call';
							break;
						case 'Task':
							title += ' <span class="label-info" style="padding:3px; font-size: 0.5rem;">Task</span>';
							type = 'Task';
							break;
						case 'Event':
							title += ' <span style="background-color:#646464; color:#fff; padding:3px; font-size: 0.5rem;">Event</span>';
							type = 'Event';
							break;
						case 'Other':
							title += ' <span style="background-color:#333333; color:#fff; padding:3px; font-size: 0.5rem;">Other</span>';
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