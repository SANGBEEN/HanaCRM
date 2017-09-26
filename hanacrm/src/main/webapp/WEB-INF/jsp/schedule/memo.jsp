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
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
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
						<a href="index.html">Home</a> 
						<i class="icon-angle-right"></i>
					</li>
					<li><a href="#">Messages</a></li>
				</ul>
				
				<div class="row-fluid">
				
				<div class="span7">
					<h1>Inbox</h1>
					
					<a class="btn btn-info consult-update-hs" id="consult-update-hs" href="#">
						<i class="halflings-icon white edit"></i>  
					</a>
					
					<ul class="messagesList">
					
						<c:forEach items="${ memoList }" var="memoVO" varStatus="status">
							<li>
							<span class="from">뭐쓰징</span>
								<span class="title" onclick="clickTitle(${status.index})">${ memoVO.content }</span>
								<span class="date">${ memoVO.regDate }</span>
							</li>
						</c:forEach>
						
						<li>
							<span class="from">
								<span class="glyphicons star"><i></i></span>
								Dennis Ji
								<span class="glyphicons paperclip"><i></i></span>
							</span>
							<span class="title">
								<span class="label label-warning">problem</span>
								Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..
							</span>
							<span class="date">Today, <b>3:47 PM</b></span>
						</li>
						
						<li>
							<span class="from">
								<span class="glyphicons dislikes"><i></i></span>
								Dennis Ji
							</span>
							<span class="title">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..</span>
							<span class="date">Today, <b>3:47 PM</b></span>
						</li>
						
						<li>
							<span class="from"><span class="glyphicons star"><i></i></span> Dennis Ji <span class="glyphicons paperclip"><i></i></span></span><span class="title"><span class="label label-success">task</span> Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..</span><span class="date">Today, <b>3:47 PM</b></span>
						</li>
						<li>
							<span class="from"><span class="glyphicons dislikes"><i></i></span> Dennis Ji</span><span class="title"><span class="label label-info">information</span> Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..</span><span class="date">Today, <b>3:47 PM</b></span>
						</li>
					</ul>
						
					</div>
					<div class="span5 noMarginLeft">
						
						<div class="message dark">
							
							<div class="header">
								<h1>동적으로 뿌리기 제목1</h1>
								<div class="from"><i class="halflings-icon user"></i> <b>Dennis Ji</b> / jiguofei@msn.com</div>
								<div class="date"><i class="halflings-icon time"></i> Today, <b>3:47 PM</b></div>
								
								<div class="menu"></div>
								
							</div>
							
							<div class="content">
								<textarea tabindex="3" class="input-xlarge span12" id="message" name="body" rows="12" placeholder="내용 가져오기"></textarea>
								<!-- <blockquote>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
								</blockquote> -->
							</div>
							
							<div class="attachments">
								<ul>
									<li>
										<span class="label label-important">zip</span> <b>bootstrap.zip</b> <i>(2,5MB)</i>
										<span class="quickMenu">
											<a href="#" class="glyphicons search"><i></i></a>
											<a href="#" class="glyphicons share"><i></i></a>
											<a href="#" class="glyphicons cloud-download"><i></i></a>
										</span>
									</li>
									<li>
										<span class="label label-info">txt</span> <b>readme.txt</b> <i>(7KB)</i>
										<span class="quickMenu">
											<a href="#" class="glyphicons search"><i></i></a>
											<a href="#" class="glyphicons share"><i></i></a>
											<a href="#" class="glyphicons cloud-download"><i></i></a>
										</span>
									</li>
									<li>
										<span class="label label-success">xls</span> <b>spreadsheet.xls</b> <i>(984KB)</i>
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
	
	<!-- start: JavaScript-->

		<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	
		<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	
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
	
		function clickTitle(no){
			
			$('#message').text('${memoList['+no+'].content}');
		}
		
	</script>
</body>
</html>