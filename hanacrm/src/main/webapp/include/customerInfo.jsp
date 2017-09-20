<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon user"></i><span class="break"></span>Members
			</h2>
		</div>
		<div class="box-content">
			<table id="temp"
				class="table table-striped table-bordered bootstrap-datatable datatable">
				<thead>
					<tr>
						<th>선택</th>
						<th>Name</th>
						<th>Reg_date</th>
						<th>Phone</th>
						<th>Grade</th> 
					</tr>
				</thead>
				<tbody id="table-data" class="customerBody">
				</tbody>
			</table>
		</div>
		<div id="test"></div>
	</div>
	<!--/span-->
</div>
<!--/row-->