<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- start: Main Menu -->
<div id="sidebar-left" class="span2">
	<div class="nav-collapse sidebar-nav">
		<ul class="nav nav-tabs nav-stacked main-menu">
			<li><a href="${pageContext.request.contextPath}/main"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
			<li><a href="${pageContext.request.contextPath}/schedule/list"><i class="icon-calendar"></i><span class="hidden-tablet"> 일정 관리</span></a></li>
			<li><a href="${pageContext.request.contextPath}/customer"><i class="icon-list-alt"></i><span class="hidden-tablet"> 고객 관리</span></a></li>
			<li><a class="dropmenu" href="#"><i class="icon-tasks"></i><span class="hidden-tablet"> 영업 관리</span></a>
				<ul>
					<li><a class="submenu" href="${pageContext.request.contextPath}/sales/consult"><i class="icon-file-alt"></i><span class="hidden-tablet"> 상담 내역</span></a></li>
					<li><a class="submenu" href="${pageContext.request.contextPath}/sales/memo"><i class="icon-file-alt"></i><span class="hidden-tablet"> 메모</span></a></li>
					<li><a class="submenu" href="${pageContext.request.contextPath}/sales/product"><i class="icon-file-alt"></i><span class="hidden-tablet"> 상품 정보</span></a></li>
				</ul>	
			</li>

			<font color="white">-----------------------------------</font>
			<li><a href="messages.html"><i class="icon-envelope"></i><span class="hidden-tablet"> Messages</span></a></li>
			<li><a href="ui.html"><i class="icon-eye-open"></i><span class="hidden-tablet"> UI Features</span></a></li>
			<li><a href="widgets.html"><i class="icon-dashboard"></i><span class="hidden-tablet"> Widgets</span></a></li>
			<li>
				<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Dropdown</span><span class="label label-important"> 3 </span></a>
				<ul>
					<li><a class="submenu" href="submenu.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 1</span></a></li>
					<li><a class="submenu" href="submenu2.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 2</span></a></li>
					<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Sub Menu 3</span></a></li>
				</ul>	
			</li>
			<li><a href="form.html"><i class="icon-edit"></i><span class="hidden-tablet"> Forms</span></a></li>
			<li><a href="typography.html"><i class="icon-font"></i><span class="hidden-tablet"> Typography</span></a></li>
			<li><a href="gallery.html"><i class="icon-picture"></i><span class="hidden-tablet"> Gallery</span></a></li>
			<li><a href="table.html"><i class="icon-align-justify"></i><span class="hidden-tablet"> Tables</span></a></li>
			<li><a href="file-manager.html"><i class="icon-folder-open"></i><span class="hidden-tablet"> File Manager</span></a></li>
			<li><a href="icon.html"><i class="icon-star"></i><span class="hidden-tablet"> Icons</span></a></li>
			<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
		</ul>
	</div>
</div>
<!-- end: Main Menu -->