<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
	<!-- start: Mobile Specific -->
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
	<script src='${pageContext.request.contextPath}/js/moment.min.js'></script> <!-- for calendar -->
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
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>	

	<style>
		.memo-insert {
			background-color: rgba(175, 10, 51, 0.78);
			border-color: rgba(175, 10, 51, 0.78);
		}
		
		.memo-insert:hover{
			background-color: rgba(175, 10, 51, 0.78);
			border-color: rgba(175, 10, 51, 0.78);
			opacity: 0.7
		}
	</style>
	

</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="/include/header.jsp" />

	<div class="container-fluid-full">
		<div class="row-fluid">
			<!-- 메뉴 -->
			<jsp:include page="/include/sideMenu.jsp" />
			
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
						<a href="${pageContext.request.contextPath}/sales/memo">영업 관리</a> 
						<i class="icon-angle-right"></i>
					</li>
					<li><a href="${pageContext.request.contextPath}/sales/memo">메모</a></li>
				</ul>
				
				<div class="row-fluid">
				
				<h1>메모</h1>
				<div class="span6" style="padding-right:20px">					
				<!-- 	<div align="right" style="margin-bottom:10px">
						<a class="btn btn-info memo-insert" id="memo-insert" href="#" style="align:right; padding:12px">
							<i class="halflings-icon white edit"></i>  
						</a>
					</div> -->
					
					<div style="border:solid 2px #eee;">
						<div style="background-color:#aaa; color:white; padding:10px;">
							<span class="from" style="display: inline-block; width:25%; padding-left:10px;"><b>등록 날짜</b></span><span class="title" style="display: inline-block; width:55%;"><b>내용</b></span>
								<a id="memo-insert" class="pull-right" style="cursor: pointer;">
									<i class="halflings-icon plus white"></i>
								</a>
						</div>
						<div style="overflow:auto; height:680px">
							<ul class="messagesList">
								<c:forEach items="${ memoList }" var="memoVO" varStatus="status">
									<li id="li${memoVO.no}">
										<span class="from">${memoVO.regDate}</span><span id="memo${memoVO.no}" class="title"  onclick="clickTitle('${memoVO.no}','${memoVO.regDate}')">${memoVO.content}</span><span class="pull-right"><a id="memo-delete" href="#" style="margin-left:10px" onclick="clickDelete('${memoVO.no}')"><i class="halflings-icon remove-sign"></i></a></span>
										<%-- <span id="memo${memoVO.no}" class="title">${memoVO.content}</span><span class="from">${memoVO.regDate}</span><span class="date"><a class="btn memo-delete" id="memo-delete" href="#" style="align:right"><i class="halflings-icon remove-sign"></i></a></span> --%>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
						
				</div>
					
					<!-- visibility:hidden; -->
					<div id="thisMemo" class="span6 noMarginLeft" style="padding-right:10px" >
						<div class="message dark" style="top:0px; right:5px; margin-right:20px">

							<div class="header" style="margin-bottom:20px">
								<h1 id="thisTitle" class="title" style="background-color:#3c4379"> </h1>
								<div class="from"><i class="halflings-icon user"></i><!--  <b>Dennis Ji</b> / jiguofei@msn.com --></div>
								<span class="date"><i class="halflings-icon time"></i><span id="thisDate" ></span><!--  Today, <b>3:47 PM</b> --></span>
								
								<div class="menu"></div>
								
							</div>
							
							<div class="content">
								<textarea tabindex="3" class="input-xlarge span12" id="thisMessage" name="body" rows="20" placeholder="메모를 입력하세요."></textarea>
								<!-- <blockquote>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
								</blockquote> -->
							</div>
							
							<div class="attachments">
								<ul>
									<li>
										<span class="label-important" style="padding:3px">zip</span> <b>bootstrap.zip</b> <i>(2,5MB)</i>
										<span class="quickMenu">
											<a href="#" class="glyphicons search"><i></i></a>
											<a href="#" class="glyphicons share"><i></i></a>
											<a href="#" class="glyphicons cloud-download"><i></i></a>
										</span>
									</li>
									<li>
										<span class="label-info" style="padding:3px">txt</span> <b>readme.txt</b> <i>(7KB)</i>
										<span class="quickMenu">
											<a href="#" class="glyphicons search"><i></i></a>
											<a href="#" class="glyphicons share"><i></i></a>
											<a href="#" class="glyphicons cloud-download"><i></i></a>
										</span>
									</li>
									<li>
										<span class="label-success" style="padding:3px">xls</span> <b>spreadsheet.xls</b> <i>(984KB)</i>
										<span class="quickMenu">
											<a href="#" class="glyphicons search"><i></i></a>
											<a href="#" class="glyphicons share"><i></i></a>
											<a href="#" class="glyphicons cloud-download"><i></i></a>
										</span>
									</li>
								</ul>		
							</div>
							
							<!-- <form class="replyForm"method="post" action="">
								<fieldset>
									<textarea tabindex="3" class="input-xlarge span12" id="message" name="body" rows="12" placeholder="Click here to reply"></textarea>
									<div class="actions">
										
										<button tabindex="3" type="submit" class="btn btn-success">Send message</button>
										
									</div>
								</fieldset>
							</form>	 -->
						</div>	
					</div>
				</div>
				
			</div><!--/#content.span10-->
		</div><!--/fluid-row-->				
	</div> <!-- end: Content -->

	<jsp:include page="/include/footer.jsp" />
	
	<script>
	
		var firstCheck = false;
		var keyupCheck = true;
		var memoList = ${memoList};
		var memoNo = memoList[0].no;
		
		console.dir(memoList[0].no);
		
		// 시작 시 첫번째 메모 보여주기
		$('document').ready(function(){
			$('#thisMemo').css('visibility','visible');
			$('#thisMessage').val($('#memo'+memoList[0].no).text());
			$('#thisDate').text(memoList[0].regDate);
			$('#thisTitle').text(subString($('#memo'+memoList[0].no).text()));
		});
		
		// 기본 셋팅 - 클릭 이벤트
		 function clickTitle(no, date){
			$('#thisMemo').css('visibility','visible');
			$('#thisMessage').val($('#memo'+no).text());
			$('#thisDate').text(date);
			$('#thisTitle').text(subString($('#memo'+no).text()));
			memoNo = no;
		}
		
		// 메모 삭제
		function clickDelete(no){
			if(confirm("메모를 삭제하시겠습니까?")){
				$.ajax({
					url: '${pageContext.request.contextPath}/sales/memo/'+no,
					type: 'delete',
					success: function(data){
						alert('삭제되었습니다.');
						$('#li'+no).remove();
						$('#thisMessage').val('');
						$('#thisDate').text('');
						$('#thisTitle').text('');
					}
				});
			}
		}
		
		$('#memo-insert').on('click', function(){
			
			firstCheck = true;
			keyupCheck = true;
			
			var d = new Date();
			var today = d.getFullYear()+"-"+(d.getMonth()<9?'0'+(d.getMonth()+1):(d.getMonth()+1))+"-"+d.getDate();

			$('#thisMemo').css('visibility','visible');
			$('#thisTitle').text(' ');
			$('#thisMessage').val('');
			$('#thisDate').text(today);
	
				/*  $.ajax({
					url: '${pageContext.request.contextPath}/sales/memoSeq',
					type: 'get',
					success: function(no){
						console.log(no);
						memoNo = no;
					//	console.log(memoNo);
					//	console.log(firstCheck);
					},
					error: function(){
						alert('error');
					}
				});  */
				
		});
		
		$('#thisMessage').on('keyup', function(e){
			
		//	console.dir(e);
		//	console.log(memoNo);
			if(firstCheck) console.log(firstCheck);
			
		/*	if(!firstCheck){
				// 첫 작성이 아니면 수정 요청
				/*   $.ajax({
					url: '${pageContext.request.contextPath}/sales/memo',
					type: 'put',
					contentType: "application/json; charset=uft-8",
					data: JSON.stringify({
						employeeNo: 0,
						no: memoNo,
						content: $('#thisMessage').val(),
						regDate: null
					}),
					success: function(data){
						console.log('put: '+data);
						$('#memo'+memoNo).text($('#thisMessage').val());
						$('#thisTitle').text(subString($('#memo'+memoNo).text()));
					},
					error: function(){
						alert('put error');
					}
				}); 
				
				$('#memo'+memoNo).text($('#thisMessage').val());
				$('#thisTitle').text(subString($('#memo'+memoNo).text()));
				
			} else {
				// 첫 작성일 경우
				var d = new Date();
				var today = d.getFullYear()+"-"+(d.getMonth()<9?'0'+(d.getMonth()+1):d.getMonth())+"-"+d.getDate();
				var memoData = {
						no: memoNo,
						content: $('#thisMessage').val(),
					}
				  $.ajax({
					url: '${pageContext.request.contextPath}/sales/memo',
					type: 'post',
					data: memoData,
					success: function(data){
						console.log('post: '+data);
						firstCheck = false;
						
						// 메모리스트에 동적 추가
						// 1. append 추가하기 테스트
						addHtml = '<li><span class="from">뉴메모</span><span id="memo'
									+ memoData.no + '" class="title">'
									+ memoData.content + '</span><span class="date">'+today+'</span></li>';
						$('.messagesList').prepend(addHtml);

					//	var element = document.getElementById(""+memoData.no);
						document.getElementById("memo"+memoData.no).addEventListener('click', function(){
							console.log(this.innerText);
							$('#thisMessage').val(this.innerText);
							$('#thisTitle').text(subString(this.innerText));
							$('#thisDate').text(today);
							memoNo = memoData.no;
						});
						
					 },
					error: function(e){
						alert('post error');
						console.dir(e);
					}
				}); */
				
				if(firstCheck && keyupCheck){
					 $.ajax({
							url: '${pageContext.request.contextPath}/sales/memoSeq',
							type: 'get',
							success: function(no){
							//	console.log(no);
								memoNo = no;
								$('#memo'+memoNo).text($('#thisMessage').val());
								console.log("first! " +memoNo);
								keyupCheck = false;
							//	console.log(firstCheck);
							},
							error: function(){
								alert('error');
							}
						}); 
				}else {
					keyupCheck = false;
					console.log("memoNo is "+memoNo);
					$('#memo'+memoNo).text($('#thisMessage').val());
				}
				
				$('#thisTitle').text(subString($('#thisMessage').val()));
								
			//}
		});
		
		$('#thisMessage').blur(function(){
			if(!firstCheck){
				// 첫 작성이 아니면 수정 요청
				   $.ajax({
					url: '${pageContext.request.contextPath}/sales/memo',
					type: 'put',
					contentType: "application/json; charset=uft-8",
					data: JSON.stringify({
						employeeNo: 0,
						no: memoNo,
						content: $('#thisMessage').val(),
						regDate: null
					}),
					success: function(data){
						console.log('put: '+data);
						$('#memo'+memoNo).text($('#thisMessage').val());
						$('#thisTitle').text(subString($('#memo'+memoNo).text()));
					},
					error: function(){
						alert('put error');
					}
				}); 
				
				console.log('수정요청');
				
			} else {
				// 첫 작성일 경우
				var d = new Date();
				var today = d.getFullYear()+"-"+(d.getMonth()<9?'0'+(d.getMonth()+1):(d.getMonth()+1))+"-"+d.getDate();
				var memoData = {
						no: memoNo,
						content: $('#thisMessage').val(),
					}
				  $.ajax({
					url: '${pageContext.request.contextPath}/sales/memo',
					type: 'post',
					data: memoData,
					success: function(data){
						// console.log('post: '+data);
						firstCheck = false;
						keyupCheck = true;
						
						// 메모리스트에 동적 추가
						// 1. append 추가하기 테스트
						addHtml = '<li id="li'+memoData.no+'"><span class="from">'+today+'</span><span id="memo'
									+ memoData.no + '" class="title">'
									+ memoData.content + '</span><span class="pull-right"><a id="memo-delete" href="#" style="margin-left:10px" onclick="clickDelete(\''+memoData.no+'\')"><i class="halflings-icon remove-sign"></i></a></span></li>';
						$('.messagesList').prepend(addHtml);

					//	var element = document.getElementById(""+memoData.no);
						document.getElementById("memo"+memoData.no).addEventListener('click', function(){
							console.log(this.innerText);
							$('#thisMessage').val(this.innerText);
							$('#thisTitle').text(subString(this.innerText));
							$('#thisDate').text(today);
							memoNo = memoData.no;
						});
						
					 },
					error: function(e){
					//	alert('post error');
						console.dir(e);
					}
				});

				console.log('등록요청');
			}
		});
		
		function subString(text){
			
			if(text.length>15){
				text = text.substring(0,15)+"...";
			}
			
			return text;
		}
		
	</script>
</body>
</html>