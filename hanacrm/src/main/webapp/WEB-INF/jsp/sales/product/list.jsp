<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>영업지원 시스템 - 상품 정보</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
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
	<script src='${pageContext.request.contextPath}/js/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>		
	<script src='${pageContext.request.contextPath}/js/jquery.dataTables.js'></script>
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
	<!--  end: JavaScript -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="${pageContext.request.contextPath}/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="${pageContext.request.contextPath}/css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->	
</head>
<body>
<!-- 헤더 -->
	<jsp:include page="/include/header.jsp"/>
	
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
				<li>
					<a href="${pageContext.request.contextPath}/sales/product">영업 관리</a>
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/sales/product">상품 정보</a>
				</li>
			</ul>
			
			<div class="row-fluid">		
				<div class="box span12">
					<!-- <div class="tabbable">
					<ul id="inbox-tabs" class="inbox-tabs nav nav-tabs padding-16 tab-size-bigger tab-space-1">
						<li class="active">
							<a data-toggle="tab" href="#inbox" data-target="inbox" id="type-select-hs" data-product_type="1" data-product_name="english">
								<i class="blue ace-icon fa fa-inbox bigger-130"></i>
								<span class="bigger-110">예금</span>
							</a>
						</li>

						<li>
							<a data-toggle="tab" href="#sent" data-target="sent" id="type-select-hs" data-product_type="2" data-product_name="적금">
								<i class="orange ace-icon fa fa-location-arrow bigger-130"></i>
								<span class="bigger-110">적금</span>
							</a>
						</li>

						<li>
							<a data-toggle="tab" href="#draft" data-target="draft" id="type-select-hs" data-product_type="3" data-product_name="카드">
								<i class="green ace-icon fa fa-pencil bigger-130"></i>
								<span class="bigger-110">카드</span>
							</a>
						</li>						
					</ul> -->
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" id="type-select-hs" data-product_type="1" href="#product-list" style="font-size: 20px;">예금</a></li>
						<li><a data-toggle="tab" id="type-select-hs" data-product_type="2" href="#product-list" style="font-size: 20px;">적금</a></li>
						<li><a data-toggle="tab" id="type-select-hs" data-product_type="3" href="#product-list" style="font-size: 20px;">보험</a></li>
						<li><a data-toggle="tab" id="type-select-hs" data-product_type="4" href="#product-list" style="font-size: 20px;">대출</a></li>
						<li><a data-toggle="tab" id="type-select-hs" data-product_type="5" href="#product-list" style="font-size: 20px;">펀드</a></li>
						<li><a data-toggle="tab" id="type-select-hs" data-product_type="6" href="#product-list" style="font-size: 20px;">카드</a></li>
					</ul>				
					<!-- <div class="box-header" data-original-title>
						<h2 id="tab-name-hs"></h2> -->
						<!-- <div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div> -->
					<!-- </div> -->
					<div class="box-content" id="product-list">  <!-- style="padding:20px" -->
						<!-- <table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>금융상품코드</th>
								  <th>금융상품명</th>
								  <th>가입대상</th>
								  <th>적립유형명</th>					 
							  </tr>
						  </thead>
						  <tbody id="product-list">
							
						  </tbody>
					  </table>--> 
					</div>
				</div><!--/span-->
			
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
	
	<jsp:include page="/include/footer.jsp"/>	
	
	<!-- inline scripts related to this page -->
		<script>
		$(document).ready(function(e){			
			console.log('페이지 로드');
			
			console.log(e.target);			
			getList(1);
		});
		
		/* $('a[id=type-select-hs]').click(function(e){
			e.preventDefault();
			e.stopPropagation();			
			
			getList($(this).data('product_type'));
		}); */
		
		$(document).on('click.tab.data-api', '[data-toggle="tab"]', function(e) {
		    e.preventDefault();
		    //$(this).tab('show');
		    
		    /* console.log(e.target);   // newly activated tab
		    e.relatedTarget  // previous active tab */
		    
		    getList($(this).data('product_type'));
		  });
		
		function getList(type) {
			$.ajax({
        		url: "${pageContext.request.contextPath}/sales/product/" + type,
        		type: "get",
        		/* contentType: "application/json; charset=uft-8", */
        		dataType: "json",
        		success: function(product) {
        			        			
        			//$('h2[id=tab-name-hs]').html('<i class="halflings-icon book"></i><span class="break"></span>' + $('li[class=active]').find('a[id=type-select-hs]').text());
        			
        	        html = '<table class="table table-striped table-bordered bootstrap-datatable datatable">';
        	        html += '<thead><tr><th style="text-align: center; width: 15%;">금융회사명</th><th style="text-align: center; width: 15%;">금융상품코드</th><th style="text-align: center; width: 25%;">금융상품명</th><th style="text-align: center; width: 35%;">가입대상</th><th style="text-align: center; width: 10%;">상세보기</th></tr></thead><tbody>'; /* <th>적립유형명</th></tr></thead><tbody>'; */
        	        
        	        for (var i = 0; i < product.length; i++) {
        	        	
        	        	//console.log(product[i].finPrdtNm + " : ");
        	            html += '<tr><td style="text-align:center">' + product[i].korCoNm + 
        	            		'<td style="text-align:center">' + product[i].finPrdtCd + 
		        	            '</td><td style="text-align:center">' + product[i].finPrdtNm + 
		        	            '</td><td>' + product[i].joinMember + 
		        	            '</td><td style="text-align:center"><a href="${pageContext.request.contextPath}/sales/product/' + type + '/' + product[i].no + '" class="btn btn-success"><i class="halflings-icon white zoom-in"></i></a></td></tr>';
        	            		/* + '<td><span class="input-xlarge uneditable-input">' + product[i].comments + '</span></td></tr>'; */
       	        	}
					
        	        html += '</tbody></table>';
        	 
        	        document.querySelector('#product-list').innerHTML = html;
        	        //console.log("html: " + html);
        	        
        	        $('.datatable').dataTable({
        				//"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12'i><'span12 center'p>>",
        				"sDom": "<'row-fluid'<'span6'f><'span6'l>r>t<'row-fluid'<'span12 center'p>>",
        				"sPaginationType": "bootstrap",
        				"oLanguage": {
        				"sLengthMenu": "_MENU_ 개씩 보기"
        				}
        			} );
        	    },
        		error: function(e){
      				console.log(e);
        			alert('준비중입니다.');
        		}
        	});
			
			console.log("탭 선택");
		}		
		
		</script>
	<!-- end: JavaScript-->
</body>
</html>