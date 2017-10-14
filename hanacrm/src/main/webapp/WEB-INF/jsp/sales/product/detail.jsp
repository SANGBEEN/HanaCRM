<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>영업 관리 - 상품 정보</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

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
					<a href="${pageContext.request.contextPath}/main">Dashboard</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a href="#">영업 관리</a>
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a href="#">상품 정보</a>
					<i class="icon-angle-right"></i>
				</li>
				<li>
					<a href="#" id="product-name-a-hs"></a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2 id="product-name-hs"></h2>
						<!-- <div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div> -->
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
								<div id="base-info">
								  
							  	</div>
							  <div class="control-group">
								<label class="control-label" for="productOption">옵션</label>
								<div class="controls">
								  <select id="productOption">
									<option></option>
									<option>Option 2</option>
									<option>Option 3</option>
									<option>Option 4</option>
									<option>Option 5</option>
								  </select>								  
								</div>
							  </div>
							  <div id="option-info">
							  	
							  </div>
							  <%-- <ul>
								  	<li>공시제출월
								  		<ul>
								  			<li>${ productDetail.dclsMonth }</li>
								  		</ul>
								  	</li>
								  	<li>금융회사코드
								  		<ul>
								  			<li>${ productDetail.finCoNo }</li>
								  		</ul>
								  	</li>
								  	<li>금융상품코드
								  		<ul>
								  			<li>${ productDetail.finPrdtCd }</li>
								  		</ul>
								  	</li>
								  	<li>저축금리유형
								  		<ul>
								  			<li>${ productDetail.intrRateType }</li>
								  		</ul>
								  	</li>
								  	<li>저축금리유형명
								  		<ul>
								  			<li>${ productDetail.intrRateTypeNm }</li>
								  		</ul>
								  	</li>
								  	<li>저축 기간(개월)
								  		<ul>
								  			<li>${ productDetail.saveTrm }</li>
								  		</ul>
								  	</li>
								  	<li>저축 금리
								  		<ul>
								  			<li>${ productDetail. }</li>
								  		</ul>
								  	</li>
								  	<li>최고 우대 금리
								  		<ul>
								  			<li>${ productDetail. }</li>
								  		</ul>
								  	</li>
								  </ul> --%>
							  <div class="control-group">
								<label class="control-label" for="selectError2">Group Select</label>
								<div class="controls">
									<select data-placeholder="Your Favorite Football Team" id="selectError2" data-rel="chosen">
										<option value=""></option>
										<optgroup label="NFC EAST">
										  <option>Dallas Cowboys</option>
										  <option>New York Giants</option>
										  <option>Philadelphia Eagles</option>
										  <option>Washington Redskins</option>
										</optgroup>
										<optgroup label="NFC NORTH">
										  <option>Chicago Bears</option>
										  <option>Detroit Lions</option>
										  <option>Green Bay Packers</option>
										  <option>Minnesota Vikings</option>
										</optgroup>
										<optgroup label="NFC SOUTH">
										  <option>Atlanta Falcons</option>
										  <option>Carolina Panthers</option>
										  <option>New Orleans Saints</option>
										  <option>Tampa Bay Buccaneers</option>
										</optgroup>
										<optgroup label="NFC WEST">
										  <option>Arizona Cardinals</option>
										  <option>St. Louis Rams</option>
										  <option>San Francisco 49ers</option>
										  <option>Seattle Seahawks</option>
										</optgroup>
										<optgroup label="AFC EAST">
										  <option>Buffalo Dennis Jis</option>
										  <option>Miami Dolphins</option>
										  <option>New England Patriots</option>
										  <option>New York Jets</option>
										</optgroup>
										<optgroup label="AFC NORTH">
										  <option>Baltimore Ravens</option>
										  <option>Cincinnati Bengals</option>
										  <option>Cleveland Browns</option>
										  <option>Pittsburgh Steelers</option>
										</optgroup>
										<optgroup label="AFC SOUTH">
										  <option>Houston Texans</option>
										  <option>Indianapolis Colts</option>
										  <option>Jacksonville Jaguars</option>
										  <option>Tennessee Titans</option>
										</optgroup>
										<optgroup label="AFC WEST">
										  <option>Denver Broncos</option>
										  <option>Kansas City Chiefs</option>
										  <option>Oakland Raiders</option>
										  <option>San Diego Chargers</option>
										</optgroup>
								  </select>
								</div>
							  </div>
							  <div class="form-actions">
								<button type="submit" class="btn btn-primary">Save changes</button>
								<button class="btn">Cancel</button>
							  </div>
							</fieldset>
						  </form>
					
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
		
		<script type="text/javascript">
		$(document).ready(function(){
			var url = location.pathname;		
	    	var urlArray = url.split("/");
	    	var productType = urlArray[4];
	    	console.log(productType);
	    	
	    	var productDetail = ${ productDetail };
	    	var productHeader = [];
	    	var productBody;
	    	
	    	switch (Number(productType)) {
			case 1:
				productHeader = productHeader.concat(["공시제출월", 
					"금융회사코드", 
					"금융회사명", 
					"금융상품코드", 
					"금융상품명", 
					"가입 방법", 
					"만기 후 이자율", 
					"우대조건", 
					"가입제한", 
					"가입대상", 
					"기타 유의사항", 
					"최고한도", 
					"공시 시작일", 
					"공시 종료일", 
					"금융회사 제출일"]);
				
				console.log(productHeader);
				
				$('h2[id=product-name-hs]').html('<i class="halflings-icon book"></i><span class="break"></span>' + productDetail.finPrdtNm);
				$('a[id=product-name-a-hs]').text(productDetail.finPrdtNm);
				
				productBody = [productDetail.dclsMonth, 
					productDetail.finCoNo, 
					productDetail.korCoNm, 
					productDetail.finPrdtCd, 
					productDetail.finPrdtNm, 
					productDetail.joinWay, 
					productDetail.mtrtInt, 
					productDetail.spclCnd, 
					productDetail.joinDeny, 
					productDetail.joinMember, 
					productDetail.etcNote, 
					productDetail.maxLimit, 
					productDetail.dclsStrtDay, 
					productDetail.dclsEndDay, 
					productDetail.finCoSubmDay
					];		  		
				break;
			case 2:
				productHeader = productHeader.concat(["공시제출월", 
					"금융회사코드", 
					"금융회사명", 
					"금융상품코드", 
					"금융상품명", 
					"가입 방법", 
					"만기 후 이자율", 
					"우대조건", 
					"가입제한", 
					"가입대상", 
					"기타 유의사항", 
					"최고한도", 
					"공시 시작일", 
					"공시 종료일", 
					"금융회사 제출일"]);
				
				console.log(productHeader);
				
				$('h2[id=product-name-hs]').html('<i class="halflings-icon book"></i><span class="break"></span>' + productDetail.finPrdtNm);
				$('a[id=product-name-a-hs]').text(productDetail.finPrdtNm);
				
				productBody = [productDetail.dclsMonth, 
					productDetail.finCoNo, 
					productDetail.korCoNm, 
					productDetail.finPrdtCd, 
					productDetail.finPrdtNm, 
					productDetail.joinWay, 
					productDetail.mtrtInt, 
					productDetail.spclCnd, 
					productDetail.joinDeny, 
					productDetail.joinMember, 
					productDetail.etcNote, 
					productDetail.maxLimit, 
					productDetail.dclsStrtDay, 
					productDetail.dclsEndDay, 
					productDetail.finCoSubmDay
					];
				
				break;
			case 3:
				
				break;
			}
	    	
	    	console.log(productHeader.length);
	    	
	    	var html = '<ul>';
	    	
	    	for(var i = 0; i < productHeader.length; i++) {
	    		html += '<li>' + productHeader[i] + '<ul><li>' + 
	    		productBody[i] + '</li></ul></li>';
	    	}
	    	
	    	html += '</ul>';
	    	console.log(html);
	    	document.querySelector('#base-info').innerHTML = html;
		});    	
		</script>
	<!-- end: JavaScript-->
<%-- <ul>
  	<li>공시제출월
  		<ul>
  			<li>${ productDetail.dclsMonth }</li>
  		</ul>
  	</li>
  	<li>금융회사코드
  		<ul>
  			<li>${ productDetail.finCoNo }</li>
  		</ul>
  	</li>
  	<li>금융회사명
  		<ul>
  			<li>${ productDetail.korCoNm }</li>
  		</ul>
  	</li>
  	<li>금융상품코드
  		<ul>
  			<li>${ productDetail.finPrdtCd }</li>
  		</ul>
  	</li>
  	<li>금융상품명
  		<ul>
  			<li>${ productDetail.finPrdtNm }</li>
  		</ul>
  	</li>
  	<li>가입 방법
  		<ul>
  			<li>${ productDetail.joinWay }</li>
  		</ul>
  	</li>
  	<li>만기 후 이자율
  		<ul>
  			<li>${ productDetail.mtrtInt }</li>
  		</ul>
  	</li>
  	<li>우대조건
  		<ul>
  			<li>${ productDetail.spclCnd }</li>
  		</ul>
  	</li>
  	<li>가입제한
  		<ul>
  			<li>${ productDetail.joinDeny }</li>
  		</ul>
  	</li>
  	<li>가입대상
  		<ul>
  			<li>${ productDetail.joinMember }</li>
  		</ul>
  	</li>
  	<li>기타 유의사항
  		<ul>
  			<li>${ productDetail.etcNote }</li>
  		</ul>
  	</li>
  	<li>최고한도
  		<ul>
  			<li>${ productDetail.maxLimit }</li>
  		</ul>
  	</li>
  	<li>공시 시작일
  		<ul>
  			<li>${ productDetail.dclsStrtDay }</li>
  		</ul>
  	</li>
  	<li>공시 종료일
  		<ul>
  			<li>${ productDetail.dclsEndDay }</li>
  		</ul>
  	</li>
  	<li>금융회사 제출일
  		<ul>
  			<li>${ productDetail.finCoSubmDay }</li>
  		</ul>
  	</li>
  </ul> --%>
</body>
</html>