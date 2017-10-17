<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영업지원 시스템 - 고객정보</title>
<meta charset="utf-8">
<meta name="description" content="Bootstrap Metro Dashboard">
<meta name="author" content="Dennis Ji">
<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid,  Retina">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link id="bootstrap-style" href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/addModal.css" rel="stylesheet">
<link id="base-style" href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<link id="base-style-responsive" href="${pageContext.request.contextPath}/css/style-responsive.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Bungee+Inline' rel='stylesheet' type='text/css'>
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-migrate-1.0.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui-1.10.0.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.ui.touch-punch.js"></script>
<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
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
<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico">

<style>
input.hidden {
	position: absolute;
	left: -9999px;
}

#profile-image1 {
	cursor: pointer;
	width: 100px;
	height: 100px;
	border: 2px solid #03b1ce;
}

.bot-border {
	border-bottom: 1px #f8f8f8 solid;
	margin: 5px 0 5px 0
}

.profile{
	margin-left : 20px;
}

.division-tital{
    height: 30px;
    line-height: 30px;
    background: lightgray;
    padding-left: 10px;
}

.tital{
    background-color: white;
    height: auto;
    margin: 5px auto;
}

.tital label{
    display: inline-block;
    background-color: white;
    color: gray;
    font-weight: 600;
    height: 35px;
    line-height: 35px;
    width: 25%;
    margin: 0;
    font-size: 16px;
}

.tital > label > span{
    display: inline-block;
    padding-left: 10px;
    color: #2e335d;
}

.myInput{
    background-color: white !important;
    border: 0 !important;
    width: 80%;
    margin: 0 !important;
    height: 35px !important;
    line-height: 35px !important;
    margin: 0 0 0 8px !important;
    padding: 0 0 0 2px !important;
    font-size: 16px !important;
    color: black !important;
}

.modifyInput{
	border: 1px solid black !important;
}

.modify-submit-div{
    height: 50px;
    width: 100%;
    text-align: center;
    line-height: 50px;
    background: #3c4379;
    color: white;
    font-weight: 700;
}
</style>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<div class="container-fluid-full">
		<div class="row-fluid">
			<jsp:include page="/include/sideMenu.jsp" />

			<div id="content" class="span10">
				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="${pageContext.request.contextPath}/main">Home</a> 
					<i class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">고객목록</a><i class="icon-angle-right"></i></li>
					<li><a href="${pageContext.request.contextPath}/customer">고객정보</a></li>
				</ul>
				<div class="row-fluid">
					<div class="span5">
						<div class="panel-heading">
							<h1>고객 정보</h1>
						</div>
						<div style="height:20px; background-color:white"></div>
						<div class="box box-info">
						
							<!-- 
							<div class="col-sm-4">
								<div align="center">
									<img alt="User Pic"
										src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
										id="profile-image1" class="img-circle img-responsive">
									<input id="profile-image-upload" class="hidden"
										type="file">
									<div style="color: #999;">click here to change
										profile image</div>
									Upload Image Js And Css
								</div>
							</div>
							 -->
							 
							 <!-- 
							<div class="col-sm-6">
								<h4 style="color: #00b1b1;">Prasad Shankar Huddedar</h4>
								<span><p>Aspirant</p></span>
							</div>  -->
							
							<form name="modifyForm">
								<input type="hidden" name="no" value="${customer.no }" readonly="readonly"/> 
								<div class="division-tital">
									개인정보
								</div>
								<div class="tital">
									<label for="name">
										<span>이름</span>
									</label>
									<input id="name" type="text" class="myInput" name="name" value="${customer.name }" readonly="readonly" required/> 
								</div>
								<div class="tital">
									<label for="phone">
										<span>전화번호</span>
									</label> 
									<input class="myInput" id="phone" type="text" name="phone" value="${customer.phone}" maxlength="11" size="20"
							 			placeholder='- 없이 입력하세요.' readonly="readonly" required="required" /> 
								</div>
								<div class="tital">
									<label for="birthDate">
										<span>생년월일</span>
									</label> 
									<input id="birthDate" type="date" class="myInput" name="birthDate" value="${customer.birthDate }" readonly="readonly"/> 
								</div>
								<div class="tital">
									<label for="post">
										<span>우편번호</span>
									</label> 
									<input id="post" type="text" class="myInput" name="post" value="${customer.post }" readonly="readonly"/> 
								</div>
								<div class="tital">
									<label for="address">
										<span>주소</span>
									</label> 
									<input id="address" type="text" class="myInput" name="address" value="${customer.address }"readonly="readonly"/> 
								</div>
								<div class="division-tital">
									특이사항
								</div>
								<div class="tital">
									<label for="grade">
										<span>고객등급</span>
									</label>
								        <!--  <select class="myInput" id="grade" name="grade"> -->
								         <select class="myInput myGrade" id="grade" name="grade" onFocus='this.initialSelect = this.selectedIndex;' onChange='this.selectedIndex = this.initialSelect;'>
											    <option value="">등급선택</option>
											 	<c:choose>
													<c:when test="${customer.grade=='잠재'}">
														<option value="잠재" selected="selected">잠재</option>
													    <option value="신규" >신규</option>
													    <option value="기존" >기존</option>
													    <option value="핵심" >핵심</option>
													</c:when>
													<c:when test="${customer.grade=='신규'}">
														<option value="잠재" >잠재</option>
													    <option value="신규" selected="selected">신규</option>
													    <option value="기존" >기존</option>
													    <option value="핵심" >핵심</option>
													</c:when>
													<c:when test="${customer.grade=='기존'}">
														<option value="잠재" >잠재</option>
													    <option value="신규" >신규</option>
													    <option value="기존" selected="selected">기존</option>
													    <option value="핵심" >핵심</option>
													</c:when>
													<c:when test="${customer.grade=='핵심'}">
														<option value="잠재" >잠재</option>
													    <option value="신규" >신규</option>
													    <option value="기존" >기존</option>
													    <option value="핵심" selected="selected">핵심</option>
													</c:when>
													<c:otherwise>
													</c:otherwise>
												</c:choose>
										 </select>
									<%-- <input id="grade" type="text" class="myInput" name="grade" value="${customer.grade }" readonly="readonly"/> --%> 
								</div> 
								<div class="tital">
									<label for="regDate">
										<span>고객등록일</span>
									</label> 
									<input for="regDate" type="text" class="myInput" name="regDate" value="${customer.regDate }" readonly="readonly"/>
								</div>
								<div class="tital">
									<label for="comments">
										<span>Comments</span>
									</label> 
									<input id="comments" type="text" class="myInput" name="comments" value="${customer.comments }" readonly="readonly"/> 
								</div>
								<input type="hidden" name="employeeNo" value="${customer.employeeNo }">
							<!-- <input type="submit" value="수정"/> -->
							</form>
							<div id="modifyBtn" class="modify-submit-div">
								<span>고객정보 수정</span>
							</div>
						</div>
					</div>
					
					
					
					<div class="span7 noMarginLeft">
						<div class="dark" style="margin-right: 0;">
						<h1>고객 상담내역</h1>
							<div class="timeline">
								<c:forEach var="consult" items="${consultList}" varStatus="status">
									<c:choose>
										<c:when test="${status.index%2==0}">
											<div class="timeslot">
												<div class="task">
													<span> 
														<span class="type">${consult.title }</span>
														<span class="details"> ${consult.content } </span> 
														<span> 상담상품 
															<c:forEach var="product" items="${consult.consultProduct}">
																<span class="remaining"> ${product.productName} </span>
															</c:forEach>
														</span>
													</span>
													<div class="arrow"></div>
												</div>
												<div class="icon">
													<i class="icon-map-marker"></i>
												</div>
												<div class="time">${consult.regDate }</div>
											</div>
											<div class="clearfix"></div>
										</c:when>
										
										<c:otherwise>
											<div class="timeslot alt">
												<div class="task">
													<span> 
														<span class="type">${consult.title }</span>
														<span class="details"> ${consult.content } </span> 
														<span>  상담상품 
															<c:forEach var="product" items="${consult.consultProduct}">
																<span class="remaining"> ${product.productName} </span>
															</c:forEach>
														</span>
													</span>
													<div class="arrow"></div>
												</div>
												<div class="icon">
													<i class="icon-map-marker"></i>
												</div>
												<div class="time">${consult.regDate }</div>
											</div>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</div>
						</div>
					<!--  -->
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
	
	<script>
		function modifyForm(){
			//readonly속성가져와서 readonly면 클래스가져와서 속성변경, 아니면 수정한 폼 전송
			if($('.myInput').attr("readonly")==true){
				$('.myInput').attr("readonly",false);
				console.log("readonly");
			}
			var form = $("form[name=modifyFrom]").serialize();
			console.log(form);
			return;
		};
		
		$().ready(function() {
			$('#profile-image1').on('click', function() {
				$('#profile-image-upload').click();
			});
			
			$('#selectSido').on('change', function(){
				$('#selectDong').html('<option value="">동</option>');
				var selectSido = $('#selectSido').val();
				console.log(gugun[selectSido]);
				var htmlStr ="";
				htmlStr+='<option value="">구군</option>';
				for(var i=0;i<gugun[selectSido].length;i++){
					htmlStr+='<option value="'+gugun[selectSido][i]+'">'+gugun[selectSido][i]+'</option>';
	    	 		//document.getElementById("selectGugun").innerHTML += '<option value="'+gugun[selectSido][i]+'">'+gugun[selectSido][i]+'</option>';
	    	 		
	   			}
				$('#selectGugun').html(htmlStr);
			});
			
			$('#selectGugun').on('change', function(){
				console.log($('#selectSido').val());
				var selectSido = $('#selectSido').val();
				var selectGugun = $('#selectGugun').val();
				var selectDong = selectSido+'-'+selectGugun;
				console.log(dong[selectDong]);
				var htmlStr ="";
				htmlStr+='<option value="">동</option>';
				for(var i=0;i<dong[selectDong].length;i++){
					htmlStr+='<option value="'+dong[selectDong][i]+'">'+dong[selectDong][i]+'</option>';
	    	 		//document.getElementById("selectGugun").innerHTML += '<option value="'+gugun[selectSido][i]+'">'+gugun[selectSido][i]+'</option>';
	    	 		
	   			}
				$('#selectDong').html(htmlStr);
			});
			
			$('#submitBtn').on('click', function(){
				var addr =  $('#selectSido').val()+' '+$('#selectGugun').val()+' '+$('#selectDong').val();
				$('#inputAddress').val(addr);
				console.log($('#inputAddress').val());
			});
			
			$('#modifyBtn').click(function(){
				console.log("click");
			
				
				console.log($('.myInput')[0].value);
				console.log($('input.myInput')[0].readOnly);
				
				if($('input.myInput')[0].readOnly==true){
					$('.myInput').attr("readonly",false);
					$('.myGrade').attr("onChange","");
					$('.myGrade').attr("onFocus","");
					$('.myInput').addClass('modifyInput');
					console.log("readonly");
				}else{
					
					//var data = JSON.stringify($('form[name="modifyForm"]').serializeArray());
					var data={};
					$('form[name="modifyForm"]').serializeArray().map(function(item){
						if(data[item.name]){
							if(typeof(data[item.name])==="string"){
								data[item.name]=[data[item.name]];
							}
							data[item.name].push(item.value);
						}else{
							data[item.name] = item.value;
						}
					});
					console.dir(JSON.stringify(data));
					var phoneCheck = data.phone;
					if(/(0)(1)(0)[0-9]{8}/.exec(phoneCheck.toString())==null){
						alert('연락처 형식이 틀렸습니다.');
						return;
					}
					
					//json을 문자열로 바꿔서 컨트롤러에서 RequestBody로 받음 
					$.ajax({
						type:'PUT',
						url:'${pageContext.request.contextPath}/customer',
						data:JSON.stringify(data),
						contentType: "application/json; charset=UTF-8",
						dataType:'json',
						error:function(xhr, status, error){
							console.log(error);
						},
						success:function(data){
							console.dir(data);
							alert(data);
							$('.myInput').attr("readonly",true);
							$('.myInput').removeClass('modifyInput');
						},
					});
				}
			});
			
		});
	</script>

</body>
</html>