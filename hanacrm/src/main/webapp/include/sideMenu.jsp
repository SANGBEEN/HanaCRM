<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- start: Main Menu -->

<div id="sidebar-left" class="span2">
	<div class="nav-collapse sidebar-nav">
		<ul class="nav nav-tabs nav-stacked main-menu">
			<li><a href="${pageContext.request.contextPath}/main"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Home 홈</span></a></li>	
			<li><a class="dropmenu" href="#"><i class="icon-calendar"></i><span class="hidden-tablet"> Schedule 일정 관리</span></a>
				<ul>
					<li><a class="submenu" href="${pageContext.request.contextPath}/schedule/list"><i class="icon-file-alt"></i><span class="hidden-tablet">일정</span></a></li>
					<li><a class="submenu" href="${pageContext.request.contextPath}/schedule/reservation"><i class="icon-file-alt"></i><span class="hidden-tablet">예약 내역</span></a></li>
				</ul>
			</li>
			<li><a href="${pageContext.request.contextPath}/customer"><i class="icon-list-alt"></i><span class="hidden-tablet"> Customer 고객 관리</span></a></li>
			<li><a class="dropmenu" href="#"><i class="icon-tasks"></i><span class="hidden-tablet"> Sales 영업 관리</span></a>
				<ul>
					<li><a class="submenu" href="${pageContext.request.contextPath}/sales/consult"><i class="icon-file-alt"></i><span class="hidden-tablet"> 상담 내역</span></a></li>
					<li><a class="submenu" href="${pageContext.request.contextPath}/sales/memo"><i class="icon-file-alt"></i><span class="hidden-tablet"> 메모</span></a></li>
					<li><a class="submenu" href="${pageContext.request.contextPath}/sales/product"><i class="icon-file-alt"></i><span class="hidden-tablet"> 상품 정보</span></a></li>
				</ul>	
			</li>

		</ul>
	</div>
</div>
<!-- end: Main Menu -->