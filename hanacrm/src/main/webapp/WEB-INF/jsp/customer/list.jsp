<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<!-- start: Meta -->
<meta charset="utf-8">
<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid,
        Retina">
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="css/addModal.css" rel="stylesheet">
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


</head>

<body>
	<!-- 헤더 -->
	<jsp:include page="/include/header.jsp" />
	

	<div class="container-fluid-full">
		<div class="row-fluid">

			<!-- start: Main Menu -->
			<jsp:include page="/include/sideMenu.jsp" />


			<!-- start: Content -->
			<div id="content" class="span10">


				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="index.html">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="#">Tables</a></li>
				</ul>

				<div class="row-fluid sortable">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<h2>
								<i class="halflings-icon user"></i><span class="break"></span>Members
							</h2>
							<div class="box-icon">
								<a id="addModal">
									<i class="halflings-icon plus"></i>
								</a> 
								<a href="#"
									class="btn-minimize">
									<i class="halflings-icon chevron-up"></i>
								</a>
								<a href="#" class="btn-close">
									<i class="halflings-icon remove"></i>
								</a>
							</div>
						</div>
						<div class="box-content">
							<table
								class="table table-striped table-bordered bootstrap-datatable datatable">
								<thead>
									<tr>
										<th>Name</th>
										<th>Reg_date</th>
										<th>Phone</th>
										<th>Grade</th>
										<th>Address</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody id="table-data">
									<c:forEach var="cus" items="${cusList}">
										<tr>
											<td>${cus.name}</td>
											<td class="center">${cus.regDate}</td>
											<td class="center">${cus.phone }</td>
											<td class="center">
												<c:choose>
													<c:when test="${cus.grade=='잠재'}">
														<span class="label">${cus.grade}</span>
													</c:when>
													<c:when test="${cus.grade=='신규'}">
														<span class="label label-success">${cus.grade}</span>
													</c:when>
													<c:when test="${cus.grade=='기존'}">
														<span class="label label-warning">${cus.grade}</span>
													</c:when>
													<c:when test="${cus.grade=='핵심'}">
														<span class="label label-important">${cus.grade}</span>
													</c:when>
													<c:otherwise>
													</c:otherwise>
												</c:choose>
											</td>
											<td>${cus.address}</td>
											<td class="center">
												<a class="btn btn-success" href="${pageContext.request.contextPath}/customer/${cus.no}">
														<i class="halflings-icon white zoom-in"></i>
												</a> 
													<form action="${pageContext.request.contextPath}/customer/${cus.no}" method="post" style="display: inline-block;" onsubmit="return myCheck();">
													    <input type="hidden" name = "_method" value="delete">
													    <button type="submit" class="btn btn-danger"><i class="halflings-icon white trash"></i></button>
													
													</form>
												
									<%-- 			<form:form method="delete" action="${pageContext.request.contextPath}/customer/${cus.no}">
												      <p class="submit"><input type="submit" value="Delete Pet"/></p>
												</form:form> --%>
											<%-- 	<a class="btn btn-danger" href="${pageContext.request.contextPath}/customer/${cus.no}"> 
													<i class="halflings-icon white trash"></i>
												</a> --%>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->
				<!--고객등록모달 -->
			<div class="modal fade" id="add-modal" tabindex="-1" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header" align="center">
								<h1>고객등록</h1>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
								</button>
							</div>
							<!-- Begin # DIV Form -->
							<div id="div-forms">
								<!-- Begin | Register Form -->
								<form class="form-horizontal" action="${pageContext.request.contextPath}/customer" method="POST">
							        <div class="form-group">
							          <label class="col-sm-3 control-label" for="inputName">Name</label>
							        <div class="col-sm-6">
							          <input class="form-control" id="inputName" type="text" name="name" placeholder="이름">
							        </div>
							        </div>
							        <div class="form-group">
							          <label class="col-sm-3 control-label" for="inputPhone">phone</label>
							        <div class="col-sm-6">
							          <input class="form-control" id="inputPhone" type="text" name="phone" placeholder="- 없이 입력해 주세요">
							        </div>
							        </div>
							          <div class="form-group">
							              <label class="col-sm-3 control-label" for="inputAddress">Address</label>
							             <div class="col-sm-6">
							              <input class="form-control" id="inputAddress" type="text" name="address" placeholder="주소">
							             </div>
							          </div>
							        <div class="form-group">
							            <label class="col-sm-3 control-label" for="inputGrade">Grade</label>
							          <div class="col-sm-6">
							          <select class="form-control" id="inputGrade" name="grade">
										    <option value="">등급선택</option>
										    <option value="잠재">잠재</option>
										    <option value="신규">신규</option>
										    <option value="기존">기존</option>
										    <option value="핵심">핵심</option>
									 </select>
							<!--             <input class="form-control" id="inputGrade" type="text" placeholder="잠재,기존,신"> -->
							          </div>
							        </div>
							        <div class="form-group">
							            <label class="col-sm-3 control-label" for="inputPost">Post</label>
							              <div class="col-sm-6">
							                <div class="input-group">
							                  <input type="text" class="form-control" id="inputPost" name="post" placeholder="- 없이 입력해 주세요" />
							          <!--         <span class="input-group-btn">
							                    <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
							                  </span> -->
							                </div>
							              </div>
							        </div>
							        <div class="form-group">
							            <label class="col-sm-3 control-label" for="inputBirthDate">생년월일</label>
							          <div class="col-sm-6">
							            <input class="form-control" id="inputBirthDate" type="text" name="birthDate" placeholder="ex)1999.01.01">
							          </div>
							        </div>
							        <div class="form-group">
							            <label class="col-sm-3 control-label" for="inputRegDate">RegDate</label>
							          <div class="col-sm-6">
							            <input class="form-control" id="inputRegDate" type="text" name="regDate" placeholder="ex)1999.01.01">
							          </div>
							        </div>
							          <div class="form-group">
							            <label class="col-sm-3 control-label" for="inputComments">Comments</label>
							          <div class="col-sm-6">
							          	<textarea rows="2" cols="10" name="comments"></textarea>
							             <!--  <input class="form-control" id="inputComments" type="textarea" rows="2" cols="10"> -->
							          </div>
							        </div>
							        <div class="form-group">
							          <div class="col-sm-12 text-center">
							           <!--  <button class="btn btn-primary" id="addCustomerBtn">등록<i class="fa fa-check spaceLeft"></i></button> -->
							            <button class="btn btn-primary" type="submit">등록<i class="fa fa-check spaceLeft"></i></button>
							            <button class="btn btn-danger" data-dismiss="modal" aria-hidden="Close">취소<i class="fa fa-times spaceLeft"></i></button>
							          </div>
							        </div>
							        
							        </form>
			
							</div>
							<!-- End # DIV Form -->
			
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

	<footer>

		<p>
			<span style="text-align: left; float: left">&copy; 2013 <a
				href="http://jiji262.github.io/Bootstrap_Metro_Dashboard/"
				alt="Bootstrap_Metro_Dashboard">Bootstrap Metro Dashboard</a></span>

		</p>

	</footer>

	<!-- start: JavaScript-->

	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>

	<script src="js/jquery-ui-1.10.0.custom.min.js"></script>

	<script src="js/jquery.ui.touch-punch.js"></script>

	<script src="js/modernizr.js"></script>

	<script src="js/bootstrap.min.js"></script>

	<script src="js/jquery.cookie.js"></script>

	<script src='js/fullcalendar.min.js'></script>

	<script src='js/jquery.dataTables.min.js'></script>

	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>

	<script src="js/jquery.chosen.min.js"></script>

	<script src="js/jquery.uniform.min.js"></script>

	<script src="js/jquery.cleditor.min.js"></script>

	<script src="js/jquery.noty.js"></script>

	<script src="js/jquery.elfinder.min.js"></script>

	<script src="js/jquery.raty.min.js"></script>

	<script src="js/jquery.iphone.toggle.js"></script>

	<script src="js/jquery.uploadify-3.1.min.js"></script>

	<script src="js/jquery.gritter.min.js"></script>

	<script src="js/jquery.imagesloaded.js"></script>

	<script src="js/jquery.masonry.min.js"></script>

	<script src="js/jquery.knob.modified.js"></script>

	<script src="js/jquery.sparkline.min.js"></script>

	<script src="js/counter.js"></script>

	<script src="js/retina.js"></script>

	<script src="js/custom.js"></script>
	<script>
	function sleep(num){	//[1/1000초]
		 var now = new Date();
		   var stop = now.getTime() + num;
		   while(true){
			 now = new Date();
			 if(now.getTime() > stop)return;
		   }
	}
	
	function add_ajax(){
		console.log('add_ajax');
		var queryString = $("form[name=addForm]").serialize();
		$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath}/customer',
			data:queryString,
			dataType:'json',
			error:function(xhr, status, error){
				console.log(error);
			},
			success:function(data){
				console.dir(data);
			},
		});		
	}
	
	function myCheck(){
		if(window.confirm('삭제하시겠습니까?')==true)
			return true;
		return false;
	}
	
	$('#addCustomerBtn').click(function(){
		// 올바르게 값이 입력됬는지 체크
		//validate
		
		// form
		var queryString = $("form[name=addForm]").serialize();
		console.log(quertString);
		alert(queryString);
		$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath}/customer',
			data:queryString,
			dataType:'json',
			error:function(xhr, status, error){
				console.log(error);
			},
			success:function(data){
				$('#add-modal').modal('toggle');
				console.dir(data);
				alert(data.msg);
			},
		});
		
		// modal 닫는거
		// 값을
		
	})
	
	$(document).ready(function(){
		$('#addModal').on('click',function(){
			$('#add-modal').modal();
		});
                
		
		
	});
		/* var addUser=function(){
			$.ajax({
				  accepts: {
				    mycustomtype: 'application/x-some-custom-type'
				  },
				 
				  // Instructions for how to deserialize a `mycustomtype`
				  converters: {
				    'text mycustomtype': function(result) {
				      // Do Stuff
				      return newresult;
				    }
				  },
				 
				  // Expect a `mycustomtype` back from server
				  dataType: 'mycustomtype'
				});
		}; */
	
	</script>
	<!-- end: JavaScript-->
</body>
</html>