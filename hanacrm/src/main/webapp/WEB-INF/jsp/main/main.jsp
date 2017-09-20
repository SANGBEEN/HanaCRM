<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- start: Meta -->
<meta charset="utf-8">
<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link id="base-style" href="css/style.css" rel="stylesheet">
<link id="base-style-responsive" href="css/style-responsive.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
	rel='stylesheet' type='text/css'>
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

<title>Insert title here</title>
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
					<p>
						You need to have <a href="http://en.wikipedia.org/wiki/JavaScript"
							target="_blank">JavaScript</a> enabled to use this site.
					</p>
				</div>
			</noscript>

			<!-- start: Content -->
			<div id="content" class="span10">


				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="#">Dashboard</a></li>
				</ul>
				<div class="row-fluid">

					<div class="span6" style="height: 65vh; overflow: auto;">
						<h1>Tasks</h1>

						<div class="priority high">
							<span>high priority</span>
						</div>

						<div class="task high">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task high">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task high">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task high last">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>

						<div class="priority medium">
							<span>medium priority</span>
						</div>

						<div class="task medium">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task medium last">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>

						<div class="priority low">
							<span>low priority</span>
						</div>

						<div class="task low">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task low">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task low">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task low">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task low">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>
						<div class="task low">
							<div class="desc">
								<div class="title">Lorem Ipsum</div>
								<div>Neque porro quisquam est qui dolorem ipsum quia dolor
									sit amet, consectetur, adipisci velit</div>
							</div>
							<div class="time">
								<div class="date">Jun 1, 2012</div>
								<div>1 day</div>
							</div>
						</div>

						<div class="clearfix"></div>

						<!--/span-->


					</div>
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

					</div>
					<!-- End .sparkStats -->
					<div class="span3" style="height:40vh;">
						<!--명함들어갈자리  -->
					</div>
					
					<div class="span2 statbox green" style="height:20vh;" onTablet="span6" onDesktop="span2">
						<div class="boxchart">1,2,6,4,0,8,2,4,5,3,1,7,5</div>
						<div class="number">
							123<i class="icon-arrow-up"></i>
						</div>
						<div class="title">sales</div>
						<div class="footer">
							<a href="#"> read full report</a>
						</div>
					</div>
					<div class="span2 statbox yellow" style="height:20vh;" onTablet="span6"
						onDesktop="span2">
						<div class="boxchart">7,2,2,2,1,-4,-2,4,8,,0,3,3,5</div>
						<div class="number">
							678<i class="icon-arrow-down"></i>
						</div>
						<div class="title">visits</div>
						<div class="footer">
							<a href="#"> read full report</a>
						</div>
					</div>
					<div class="span2 statbox yellow" style="height:20vh;" onTablet="span6"
						onDesktop="span2">
						<div class="boxchart">7,2,2,2,1,-4,-2,4,8,,0,3,3,5</div>
						<div class="number">
							678<i class="icon-arrow-down"></i>
						</div>
						<div class="title">visits</div>
						<div class="footer">
							<a href="#"> read full report</a>
						</div>
					</div>
					<!--예금, 적금 api 요청
 				<div class="span3 statbox purple" onTablet="span6" onDesktop="span3">
					<button id="depositBtn">예금 api 요청</button>
					<button id="savingsBtn">적금 api 요청</button>
				</div> 
				-->
				</div>
				<div class="row-fluid hideInIE8 circleStats">
					<div class="widget span6" onTablet="span6" onDesktop="span6">
						<h2>
							<span class="glyphicons facebook"><i></i></span>Facebook Fans
						</h2>
						<hr>
						<div class="content">
							<div id="facebookChart" style="height: 300px"></div>
						</div>
					</div>
					<!--/span-->
					<div class="span2 noMargin" onTablet="span4" onDesktop="span2">
						<div class="circleStatsItemBox pink">
							<div class="header">잠재고객</div>
							<div class="circleStat">
								<input type="text" value="83" class="whiteCircle" />
							</div>
						</div>
					</div>

					<div class="span2" onTablet="span4" onDesktop="span2">
						<div class="circleStatsItemBox orange">
							<div class="header">Memory</div>
							<span class="percent">percent</span>
							<div class="circleStat">
								<input type="text" value="100" class="whiteCircle" />
							</div>
							<div class="footer">
								<span class="count"> <span class="number">64</span>
								</span> <span class="sep"> / </span> <span class="value"> <span
									class="number">64</span>
								</span>
							</div>
						</div>
					</div>

					<div class="span2" onTablet="span4" onDesktop="span2">
						<div class="circleStatsItemBox greenLight">
							<div class="header">Memory</div>
							<span class="percent">percent</span>
							<div class="circleStat">
								<input type="text" value="100" class="whiteCircle" />
							</div>
							<div class="footer">
								<span class="count"> <span class="number">64</span> <span
									class="unit">GB</span>
								</span> <span class="sep"> / </span> <span class="value"> <span
									class="number">64</span> <span class="unit">GB</span>
								</span>
							</div>
						</div>
					</div>
				</div>


			</div>
			<!--/.fluid-container-->

			<!-- end: Content -->
		</div>
		<!--/#content.span10-->
	</div>
	<!--/fluid-row-->

	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a> <a href="#"
				class="btn btn-primary">Save changes</a>
		</div>
	</div>

	<div class="clearfix"></div>

	<jsp:include page="/include/footer.jsp" />

	<!-- start: JavaScript-->

	<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>

	<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>

	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"></script>
	<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>

	<script
		src='${pageContext.request.contextPath}/js/jquery.dataTables.min.js'></script>

	<script src="${pageContext.request.contextPath}/js/excanvas.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.flot.resize.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.chosen.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.uniform.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.cleditor.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.noty.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.elfinder.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/jquery.raty.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.iphone.toggle.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.uploadify-3.1.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.gritter.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.imagesloaded.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.masonry.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.knob.modified.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.sparkline.min.js"></script>

	<script src="${pageContext.request.contextPath}/js/counter.js"></script>

	<script src="${pageContext.request.contextPath}/js/retina.js"></script>

	<script src="${pageContext.request.contextPath}/js/custom.js"></script>

	<script>
		$().ready(function() {
			$('#depositBtn').click(function() {
				//var url = "http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?callback=?&auth=49bb53dc3ef5b88bbe5eb3b85b8c3077&topFinGrpNo=020000&pageNo=1";
				$.ajax({
					type : 'GET',
					url : '${pageContext.request.contextPath}/product/deposit',
					//url:url,
					//crossDomain: true,
					dataType : 'json',
					//jsonpCallback: "myCallback",
					/* data:{
						auth : "49bb53dc3ef5b88bbe5eb3b85b8c3077",
						topFinGrpNo : "020000",
						pageNo:"1"
						
					}, */
					success : function(data) {
						//console.log(data.result);
						// var result = $.parseJSON(data);
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
					//url:url,
					//crossDomain: true,
					dataType : 'json',
					//jsonpCallback: "myCallback",
					/* data:{
						auth : "49bb53dc3ef5b88bbe5eb3b85b8c3077",
						topFinGrpNo : "020000",
						pageNo:"1"
						
					}, */
					success : function(data) {
						//console.log(data.result);
						// var result = $.parseJSON(data);
						console.dir(data);
						console.log('success');
					},
					error : function(xhr, status, error) {
						console.log(error);
					},

				});
			});
		});
	</script>
	<!-- end: JavaScript-->

</body>
</html>