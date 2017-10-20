<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.cookie.js"></script>
	<script src='${pageContext.request.contextPath}/js/moment.min.js'></script>
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
	<!--  end: JavaScript -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
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
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a id="product-name-a-hs"></a>
				</li>
			</ul>
			
			<div class="row-fluid">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2 id="product-name-hs"></h2>
						<!-- <div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div> -->
					</div>
					<div class="box-content" align="center" style="padding-top:50px">
						<fieldset>
							<div id="base-info">
							  
						  	</div>						  
							<div id="option-info">
							  	
							</div>						  
						  <div class="form-actions" align="right">
							<a class="btn" style="background-color:#008584" href="javascript:history.back();">확인</a>
							<!-- <button class="btn">닫기</button> -->
						  </div>
						</fieldset>
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
	
		<script type="text/javascript">
		$(document).ready(function(){
			var url = location.pathname;		
	    	var urlArray = url.split("/");
	    	var productType = urlArray[4];
	    	//console.log(productType);
	    	
	    	var productDetail = ${ productDetail };
	    	var productHeader = [];	    	
	    	var productBody = [];
	    	
	    	//console.log(productDetail);
	    	
	    	var optionFlag;
	    	if (productDetail.optionList.length > 0) {
	    		optionFlag = true;
			} else {
				optionFlag = false;
			}
	    	
	    	var productOptionHeader = [];
	    	var productOptionBody = [];
	    	
	    	switch (Number(productType)) {
			case 1:
				productHeader = productHeader.concat([
					"공시 제출월", 
					"금융회사 코드", 
					"금융회사명", 
					"금융상품 코드", 
					"금융 상품명", 
					"가입 방법", 
					"만기 후 이자율", 
					"우대조건", 
					"가입제한 Ex) 1:제한없음, 2:서민전용, 3:일부제한", 
					"가입대상", 
					"기타 유의사항", 
					"최고한도", 
					"공시 시작일", 
					"공시 종료일", 
					"금융회사 제출일"
					]);				
				
			//	console.log(productHeader);
				
				$('h2[id=product-name-hs]').html('<i class="halflings-icon book"></i><span class="break"></span>' + productDetail.finPrdtNm);
				$('a[id=product-name-a-hs]').text(productDetail.finPrdtNm);
				
				productBody = [
					productDetail.dclsMonth, 
					productDetail.finCoNo, 
					productDetail.korCoNm, 
					productDetail.finPrdtCd, 
					productDetail.finPrdtNm, 
					productDetail.joinWay, 
					productDetail.mtrtInt, 
					productDetail.spclCnd === null ? '없음' : productDetail.spclCnd, 
					productDetail.joinDeny, 
					productDetail.joinMember, 
					productDetail.etcNote, 
					productDetail.maxLimit, 
					productDetail.dclsStrtDay, 
					productDetail.dclsEndDay, 
					productDetail.finCoSubmDay
					];
				
				if(optionFlag) {
					productOptionHeader = productOptionHeader.concat([
						"저축 금리 유형", 
						"저축 금리 유형명", 
						"저축 기간 [단위: 개월]", 
						"저축 금리 [소수점 2자리]", 
						"최고 우대금리 [소수점 2자리]", 
						]);
					
					for (var i = 0; i < productDetail.optionList.length; i++) {
						var depositOption = productDetail.optionList[i];
											
						productOptionBody.push([
							depositOption.intrRateType, 
							depositOption.intrRateTypeNm, 
							depositOption.saveTrm, 
							depositOption.intrRate, 
							depositOption.intrRate2
							]);
					} 
				}			
				
				break;
			case 2:
				productHeader = productHeader.concat([
					"공시 제출월", 
					"금융회사 코드", 
					"금융회사명", 
					"금융상품 코드", 
					"금융 상품명", 
					"가입 방법", 
					"만기 후 이자율", 
					"우대조건", 
					"가입제한 Ex) 1:제한없음, 2:서민전용, 3:일부제한", 
					"가입대상", 
					"기타 유의사항", 
					"최고한도", 
					"공시 시작일", 
					"공시 종료일", 
					"금융회사 제출일"
					]);
				
				//console.log(productHeader);
				
				$('h2[id=product-name-hs]').html('<i class="halflings-icon book"></i><span class="break"></span>' + productDetail.finPrdtNm);
				$('a[id=product-name-a-hs]').text(productDetail.finPrdtNm);
				
				productBody = [
					productDetail.dclsMonth, 
					productDetail.finCoNo, 
					productDetail.korCoNm, 
					productDetail.finPrdtCd, 
					productDetail.finPrdtNm, 
					productDetail.joinWay, 
					productDetail.mtrtInt, 
					productDetail.spclCnd === null ? '없음' : productDetail.spclCnd, 
					productDetail.joinDeny, 
					productDetail.joinMember, 
					productDetail.etcNote, 
					productDetail.maxLimit, 
					productDetail.dclsStrtDay, 
					productDetail.dclsEndDay, 
					productDetail.finCoSubmDay
					];
				
				if(optionFlag) {
					productOptionHeader = productOptionHeader.concat([
						"저축 금리 유형", 
						"저축 금리 유형명", 
						"적립 유형", 
						"적립 유형명", 
						"저축 기간 [단위: 개월]", 
						"저축 금리 [소수점 2자리]", 
						"최고 우대금리 [소수점 2자리]", 
						]);
					
					for (var i = 0; i < productDetail.optionList.length; i++) {
						var savingsOption = productDetail.optionList[i];
											
						productOptionBody.push([
							savingsOption.intrRateType, 
							savingsOption.intrRateTypeNm, 
							savingsOption.rsrvType, 
							savingsOption.rsrvTypeNm, 
							savingsOption.saveTrm, 
							savingsOption.intrRate, 
							savingsOption.intrRate2
							]);
					}
				}				
				
				break;
			case 3:
				
				break;
			}
	    	
	    //	console.log(productHeader.length);
	    	
	    	var html = '<h2>금융회사 정보</h2>';
	    	html += '<table class="table table-striped" style="width:70%; margin-bottom:20px">';
	    	
	    	for(var i = 0; i < 3; i++) {
	    		html += '<tr><th style="width:40%;">' + productHeader[i] + '</th><td>' + 
	    		productBody[i] + '</td></tr>';
	    	}
	    	
	    	html += '</table><br/><br/>';
	    	html += '<h2>금융상품 정보</h2>';
	    	html += '<table class="table table-striped" style="width:70%">';
	    	
	    	for(var i = 3; i < productHeader.length; i++) {
	    		html += '<tr><th style="width:40%;>' + productHeader[i] + '</th><td>' + 
	    		productBody[i] + '</td></tr>';
	    	}
	    	
	    	html += '</table><br/><br/>';
	    	
	    	$('div[id=base-info]').html(html);
	    	
	    	if(optionFlag) {
	    		var optionHtml = '<h2>금융상품 옵션 정보</h2>';		    	
		    	
		    	for(var i = 0; i < productOptionBody.length; i++) {
		    		optionHtml += '<table class="table table-striped" style="width:70%">';
		    		for (var j = 0; j < productOptionBody[i].length; j++) {
		    			optionHtml += '<tr><th style="width:40%;>' + productOptionHeader[j] + '</th><td>' + 
						productOptionBody[i][j] + '</td></tr>';
		    		}
		    		optionHtml += '</table><br/><br/>';
		    	}
		    	
		    	
		    	
		    	$('div[id=option-info]').html(optionHtml);
	    	}	    	
		});    	
		</script>
	<!-- end: JavaScript-->
</body>
</html>