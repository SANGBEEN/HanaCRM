<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>영업지원 시스템</title>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>
	<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"></script>
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

	<link id="bootstrap-style" href="css/bootstrap.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="img/favicon.ico">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<style>
		#shareBtn{
			background-color: #008485;
			border-color:#008485;
		}

		#shareBtn:hover{
			background-color: #008485;
			border-color:#008485;
			opacity:0.7;
		}
	</style>
</head>
<body>
	<jsp:include page="/include/header.jsp" />

	<div class="container-fluid-full">
		<div class="row-fluid">
			<jsp:include page="/include/sideMenu.jsp" />

			<div id="content" class="span10" style="padding: 10px">
				<div class="row-fluid">
					<div class="box span8" style="height: 65vh; overflow: auto; border: 1px solid lightgray" onclick="goSchedule()">
						<div class="box-header">
							<span>오늘 일정</span>
						</div>
						<div class="box-content">
							<div class="priority high">
								<span>중요</span>
							</div>
							<div class="priority medium">
								<span>보통</span>
							</div>
							<div class="priority low">
								<span>낮음</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					
					<div style="width: 50px; height: 60vh; display: block; float: left;"></div>
					
					<div class="span3" style="height: 65vh; border: 1px solid lightgray;">
						<div class="box-header">
							<span>내 명함</span>
							<div class="box-icon">
								<a id="share" style="cursor: pointer;">
									<i class="halflings-icon share-alt white"></i>
								</a>
							</div>
						</div>
						<div class="box-content" style="padding:0 !important">
							<iframe src="http://104.198.112.172:3000/${ sessionScope.emp.code }/" frameBorder=0 style="width:100%; height: 60vh; overflow:hidden; margin: 0 auto"></iframe>
						</div>
					</div>
					
				</div>
					 
				<!-- 
				<div class="sparkLineStats span3 widget green" onTablet="span3"
					onDesktop="span3">
					<ul class="unstyled">
						<li><span class="sparkLineStats3"></span> Pageviews: <span
							class="number">781</span></li>
						<li><span class="sparkLineStats4"></span> Pages / Visit: <span
							class="number">2,19</span></li>
						<li><span class="sparkLineStats5"></span> Avg. Visit
							Duration: <span class="number">00:02:58</span></li>
						<li><span class="sparkLineStats6"></span> Bounce Rate: <span
							class="number">59,83%</span></li>
						<li><span class="sparkLineStats7"></span> % New Visits: <span
							class="number">70,79%</span></li>
						<li><span class="sparkLineStats8"></span> % Returning
							Visitor: <span class="number">29,21%</span></li>

					</ul>
					<div class="clearfix"></div>
				</div> -->
				
				<!--예금, 적금 api 요청
 				<div class="span3 statbox purple" onTablet="span6" onDesktop="span3">
					<button id="depositBtn">예금 api 요청</button>
					<button id="savingsBtn">적금 api 요청</button>
				</div> 
				-->
				
				<div class="row-fluid">
					<div class="span3 statbox purple" style="height: 120px;">
						<div class="boxchart">2,2,1,7,2,-4,-2,4,8,,0,3,3,5</div>
						<div class="number" id="number-of-customer-hy"></div>
						<div class="title">customers</div>
						<div class="footer">
							<a>총 고객</a>
						</div>
					</div>
					<div class="span3 statbox green" style="height: 120px;">
						<div class="boxchart">3,5,7,2,5,,-3,1,4,8,,0,3,2,1</div>
						<div class="number" id="number-of-consult-hs"></div>
						<div class="title">consult</div>
						<div class="footer">
							<a>이번 달 상담</a>
						</div>
					</div>
					<div class="span3 statbox yellow" style="height: 120px;" id="refresh-visits-hs">
						<div class="boxchart">7,2,6,2,2,1,0,4,0,,8,3,3,5</div>
						<div class="number" id="number-of-visits-hs"></div>
						<div class="title">visit</div>
						<div class="footer">
							<a>오늘 명함 접속자</a>
						</div>
					</div>
					<div class="span3 statbox blue" style="height: 120px;">
						<div class="boxchart">7,2,2,2,1,-1,-1,4,8,,0,3,3,5</div>
						<div class="number" id="number-of-reservation-hy"></div>
						<div class="title">reservation</div>
						<div class="footer">
							<a>상담 신청 예약</a>
						</div>
					</div>
				</div>
				
				<div class="row-fluid circleStats">
					<div class="box span6">
						<div class="box-header">
							<span>월별 실적</span>
						</div>
						<div class="box-content">
							<div id="salesChart" style="height: 300px"></div>
						</div>
					</div>
					
					<div class="box span6">
						<div class="box-header">
							<span>인기 예금 상품</span>
						</div>
						<div class="box-content">
							<div id="piechart_deposit" style="height:300px"></div>
						</div>
					</div>
				</div>
				
				<div class="row-fluid circleStats">
					<div class="box span6">
						<div class="box-header">
							<span>고객 현황</span>
						</div>
						<div class="box-content">
							<div id="donutchart" style="height: 300px;"></div>
						</div>
					</div>
			
					<div class="box span6">
						<div class="box-header" data-original-title>
							<span>인기 적금 상품</span>
						</div>
						<div class="box-content">
							 <div id="piechart_savings" style="height:300px"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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

	<div class="modal hide fade" id="visits-detail-hs">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>방문자 주소 목록</h3>
		</div>
		<div class="modal-body">
			<div id="visits-IP-list-hs">
			
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">취소</a> 
		</div>
	</div>
	
	<!-- 명함 내보내기 모달 -->
	<div class="modal hide fade" id="shareModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>명함 내보내기</h3>
		</div>
		<div class="modal-body">
			<div id="share-hs">
				연락처: <input class="input-xlarge" id="phone" type="tel" pattern="[0][1][0][0-9]{8}" title="잘못된 형식입니다."/>
				<a href="#" id="search-customer-hs" data-table_flag="off"><i class="glyphicons-icon zoom_in"></i></a>
			</div>
			<div id="search-customer-table-hs">
			
			</div>
		</div>
		<div class="modal-footer">
			<a id="shareBtn" href="#" class="btn" data-dismiss="modal">전송</a>
			<a href="#" class="btn" data-dismiss="modal">취소</a> 
		</div>
	</div>
	
	<div class="clearfix"></div>
	<jsp:include page="/include/footer.jsp" />

	<!-- start: JavaScript  -->

	<script>
		// custom.js chart() 부분에 들어갈 데이터
		var contract = ${contractList};
		var savingsList = ${savingsList};
		var depositList = ${depositList};
		var customerCountList = ${customerCountList};
	
		// 상품 Top3
		var savingsData = [];
		var depositData = [];
		
		// 고객 현황
		var customerData = [];

		 for(var i=0; i<savingsList.length ; i++){
			savingsData.push({
				label: savingsList[i].name,
				data: savingsList[i].count
			});
		}
		
		for(var i=0; i<depositList.length; i++){
			depositData.push({
				label: depositList[i].name,
				data: depositList[i].count
			});
		}
		
		for(var i=0; i<customerCountList.length; i++){
			customerData.push({
				label: customerCountList[i].GRADE+'('+customerCountList[i].COUNT+'명)',
				data: customerCountList[i].COUNT
			});
		}
		
		$().ready(function() {
			$('#depositBtn').click(function() {
				//var url = "http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?callback=?&auth=49bb53dc3ef5b88bbe5eb3b85b8c3077&topFinGrpNo=020000&pageNo=1";
				$.ajax({
					type : 'GET',
					url : '${pageContext.request.contextPath}/product/deposit',
					dataType : 'json',
					success : function(data) {
						console.dir(data);
						console.log('success');
					},
					error : function(xhr, status, error) {
						console.log(error);
					},
				});
			});
			
			$('#savingsBtn').click(function() {
				//var url = "http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?callback=?&auth=49bb53dc3ef5b88bbe5eb3b85b8c3077&topFinGrpNo=020000&pageNo=1";
				$.ajax({
					type : 'GET',
					url : '${pageContext.request.contextPath}/product/savings',
					dataType : 'json',
					success : function(data) {
						console.dir(data);
						console.log('success');
					},
					error : function(xhr, status, error) {
						console.log(error);
					},
				});
			});
			
			//오늘할일
			//일정 그리기
			var schedule = ${scheduleList};
			schedule.forEach(function(v){
				var str = "";
				switch(v.importance){
				case 1:
				case 2:
					var typeString = v.customer.name!=null? '('+v.customer.name+')':'';
					str += '<div class="task high">';
					str += '	<div class="desc">';
					str += 			'<div class="title">'+v.type+' '+typeString+'</div>'; //+v.customer.name!=""?' ('+v.customer.name+')':''+'</div>';
					str += 			'<div>'+v.comments+'</div>';
					str += '	</div>';
					str += 		'<div class="time">';
					str += 			'<div>'+v.startDate+' ~ '+v.endDate+'</div>';
					str += 		'</div>';
					str += '</div>';
					//console.log(1);
					$('.priority.high').append(str);
					break;
				case 3:
					var typeString = v.customer.name!=null? '('+v.customer.name+')':'';
					str += '<div class="task medium">';
					str += '	<div class="desc">';
					str += 			'<div class="title">'+v.type+' '+typeString+'</div>';
					str += 			'<div>'+v.comments+'</div>';
					str += '	</div>';
					str += 		'<div class="time">';
					str += 			'<div>'+v.startDate+' ~ '+v.endDate+'</div>';
					str += 		'</div>';
					str += '</div>';
					$('.priority.medium').append(str);
					break;
				default:
					var typeString = v.customer.name!=null? '('+v.customer.name+')':'';
					str += '<div class="task low">';
					str += '	<div class="desc">';
					str += 			'<div class="title">'+v.type+' '+typeString+'</div>';
					str += 			'<div>'+v.comments+'</div>';
					str += '	</div>';
					str += 		'<div class="time">';
					str += 			'<div>'+v.startDate+' ~ '+v.endDate+'</div>';
					str += 		'</div>';
					str += '</div>';
					$('.priority.low').append(str);
				}
			});
		});
		
		$(document).ready(function() {
			getVisitsList();
		});
		
		$('div[id=refresh-visits-hs]').click(function() {
			getVisitsList();
		});
		
		$('a[id=visits-modal-hs]').click(function() {
			getVisitsList();
			$('#visits-detail-hs').modal();
		})
		
		function getVisitsList() {
			$.ajax({
        		url: "${pageContext.request.contextPath}/visits",
        		type: "get",
        		dataType: "json",
        		success: function(visitsList){
        			//console.log(visitsList);
        			$('div[id=number-of-visits-hs]').text(visitsList.length);
        			$('div[id=visits-IP-list-hs]').html(visitsList);
        	    },
        		error: function(e){
      				console.log(e);
        			alert('error');
        		}
        	});
		}
		
		$('#share').on('click',function(){
			$('#shareModal').modal('show');
			$('#shareBtn').off().on('click', function(){
				alert($('#phone').val() + ' (으)로 명함 전송이 완료되었습니다.');
			});
		});
		
		// 알림 수
		$('div[id=number-of-reservation-hy]').text('${reservationCount}');
		// 고객 수
		$('div[id=number-of-customer-hy]').text('${customerCount}');
		// 이번달 상담 수
		$('div[id=number-of-consult-hs]').text('${consultCount}');
		
		$('a[id=search-customer-hs]').click(function(e) {
			var tableFlag = $(this).data("table_flag");
			if (tableFlag == "on") {				
				$('div[id=search-customer-table-hs]').empty();
				tableFlag = "off";
				console.log(tableFlag);
			} else if (tableFlag == "off") {				
				$.ajax({
	        		url: "${pageContext.request.contextPath}/customer/listForSearch",
	        		type: "get",
	        		dataType: "json",
	        		async: false,
	        		success: function(customerList) 	{
	        			tableFlag = "on";
	        			console.log(tableFlag);
	        			var html = '<table class="table table-striped table-bordered bootstrap-datatable datatable">' 
	        			+ '<thead><tr><th style="text-align: center;">선택</th><th style="text-align: center;">이름</th><th style="text-align: center;">전화번호</th><th style="text-align: center;">등록일</th><th style="text-align: center;">고객 등급</th></tr></thead>' 
	        			+ '<tbody id="table-data" class="customerBody">';
	        			
	        			for (var i = 0; i < customerList.length; i++) {
							customerList[i];
							
							html += '<tr><td style="text-align: center;"><a class="btn btn-primary" href="#" id="customer-select-button-hs" data-customer_select="' + customerList[i].no + '">선택</a></td>' 
							+ '<td style="text-align: center;">' + customerList[i].name + '</td>' 
							+ '<td style="text-align: center;" id="customer-phone-hs">' + customerList[i].phone + '</td>' 
							+ '<td style="text-align: center;">' + customerList[i].regDate + '</td>' 
							+ '<td style="text-align: center;">';
							
							switch (customerList[i].grade) {
							case "잠재":
								html += '<span class="label">';
								break;
							case "신규":
								html += '<span class="label label-success">';
								break;
							case "기존":
								html += '<span class="label label-warning">';
								break;
							case "핵심":
								html += '<span class="label label-important">';
								break;
							}
							
							html += customerList[i].grade + '</span></td>';
							
						}
	        			
	        			html += '</tbody></table>';
	        			
	        			$('div[id=search-customer-table-hs]').html(html);
	        			
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
	        		error: function(e){
	      				console.log(e);
	        			alert('error');
	        		}
	        	});
			}
			
			$(this).data("table_flag", tableFlag);
		});
		
		$(document).on('click', 'a[id=customer-select-button-hs]', function(e) {
			var phone = $(this).parent().next('td').next('td').text();
			console.log(phone);
			$('input[id=phone]').val(phone);
		});
		
		$('div[id=shareModal]').on('hidden.bs.modal', function(e) {
			console.log("모달 사라진다");
			//$(this).find('#phone').val('Default Value');
			$(this).find('#phone').val('');
			$(this).find('a[id=search-customer-hs]').data("table_flag", "off");
			$('div[id=search-customer-table-hs]').empty();
		});	
		
		function goSchedule(){
			location.href = '${pageContext.request.contextPath}/schedule/list';
		}
		
	</script>
</body>
</html>