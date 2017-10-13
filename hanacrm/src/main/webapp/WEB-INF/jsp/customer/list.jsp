<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>영업지원 시스템 - 고객관리</title>
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword"
	content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid,
        Retina">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link id="bootstrap-style" href="css/bootstrap.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="css/addModal.css" rel="stylesheet">
<link id="base-style" href="css/style.css" rel="stylesheet">
<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="img/favicon.ico">

<style>
#addModal{
	float: right;
    height: 40px;
    line-height: 40px;
    text-align: center;
    width: 50px;
    background: gray;
}

.form-group{
    margin: 10px auto;
}

.form-group input{
    width: 350px !important;
    padding-left: 5px;
    
}

.form-group label{
	text-align: center !important;
}
</style>
</head>

<body>
	<!-- 헤더 -->
	<jsp:include page="/include/header.jsp" />
	<div class="container-fluid-full">
		<div class="row-fluid">
			<jsp:include page="/include/sideMenu.jsp" />
			<div id="content" class="span10">
				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="${pageContext.request.contextPath}/main">Home</a> <i
						class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">고객목록</a></li>
				</ul>

				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header" style="padding:0; height:40px;">
							<div id="addModal"><i class="fa fa-user-plus" aria-hidden="true" style="color: white"></i></div>
							<div style="float: right; font-size: 1rem; line-height: 40px; padding-right: 20px;"></div>
						</div>
						<div class="box-content">
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
								<thead>
									<tr>
										<th style="width:10%; text-align:center">이름</th>
										<th style="width:15%; text-align:center">등록일</th>
										<th style="width:20%; text-align:center">전화번호</th>
										<th style="width:6%; text-align:center">고객등급</th>
										<th style="width:35%; text-align:center">주소</th>
										<th style="width:7%; text-align:center">상세보기</th>
										<th style="width:7%; text-align:center">삭제</th>
									</tr>
								</thead>
								<tbody id="table-data">
									<c:forEach var="cus" items="${cusList}">
										<tr>
											<td style="text-align:center">${cus.name}</td>
											<td style="text-align:center">${cus.regDate}</td>
											<td style="text-align:center">${cus.phone }</td>
											<td style="text-align:center">
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
											<td style="text-align:center">
												<script>
													function goDetail(customerNo){
														location.href = "${pageContext.request.contextPath}/customer/"+customerNo;
													}
												</script>
												<div class="btn btn-success" onClick="goDetail(${cus.no})" style="margin: 0 auto">
													<i class="halflings-icon white zoom-in"></i>
												</div>
											</td>
											<td style="text-align:center">
												<script>
													function myCheck(){
														if(window.confirm('삭제하시겠습니까?')==true){
															$('#customerDeleteForm').submit();
														} else {
															return;
														}
													}
												</script>
												<form id="customerDeleteForm" action="${pageContext.request.contextPath}/customer/${cus.no}" method="post" style="margin: 0; display: inline-block;">
												    <input type="hidden" name = "_method" value="delete">
												    <div class="btn btn-danger" onClick="myCheck()">
												    	<i class="halflings-icon white trash"></i>
												    </div>
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

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
							
							<div id="div-forms">
								<form class="form-horizontal" action="${pageContext.request.contextPath}/customer" method="POST">
									<div class="form-group">
										<label class="col-sm-3 control-label" for="inputName">이름</label>
										<input class="form-control" id="inputName" type="text"
											name="name" placeholder="이름">
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="inputPhone">전화번호</label>
										<input class="form-control" id="inputPhone" type="text"
											name="phone" placeholder="- 없이 입력해 주세요">
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label" for="inputAddress">주소</label>
										<input class="form-control" id="inputAddress" type="text"
											name="address" placeholder="주소">
									</div>
									<div class="form-group">
							            <label class="col-sm-3 control-label" for="inputGrade">고객등급</label>
								         <select class="form-control" id="inputGrade" name="grade">
											    <option value="">등급선택</option>
											    <option value="잠재">잠재</option>
											    <option value="신규">신규</option>
											    <option value="기존">기존</option>
											    <option value="핵심">핵심</option>
										 </select>
							        </div>
							        
							        <div class="form-group">
							            <label class="col-sm-3 control-label" for="inputPost">우편번호</label>
						                  <input type="text" class="form-control" id="inputPost" name="post" placeholder=" - 없이 입력해 주세요" />
							        </div>

									<div class="form-group">
										<label class="col-sm-3 control-label" for="inputBirthDate">생년월일</label>
										<input class="form-control" id="inputBirthDate" type="text"
											name="birthDate" placeholder=" ex)1999.01.01">
									</div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label" for="inputComments">Comments</label>
										<textarea name="comments" onkeydown="resize(this)" onkeyup="resize(this)" style="width: 350px !important; padding: 5px;"></textarea>
									</div>
									
									<div class="form-group">
							          <div class="col-sm-12 text-center">
							            <button class="btn btn-primary" type="submit">등록<i class="fa fa-check spaceLeft"></i></button>
							            <button class="btn btn-danger" data-dismiss="modal" aria-hidden="Close">취소<i class="fa fa-times spaceLeft"></i></button>
							          </div>
							        </div>
						        </form>
							</div>
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

	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
	<script src="js/jquery.ui.touch-punch.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js"></script>
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
	function resize(obj) {
		  obj.style.height = "1px";
		  obj.style.height = (12+obj.scrollHeight)+"px";
		}
	
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
	
	$('#addCustomerBtn').click(function(){
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
	})
	
	$(document).ready(function(){
		$('#addModal').on('click',function(){
			$('#add-modal').modal();
		});
	});
	</script>
	<!-- end: JavaScript-->
</body>
</html>