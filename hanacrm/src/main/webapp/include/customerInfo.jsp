<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row-fluid sortable" id="customerInfo">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2>
				<i class="halflings-icon user"></i><span class="break"></span>Members
			</h2>
		</div>
		<div class="box-content" id="customerTable">
			<table
				class="table table-striped table-bordered bootstrap-datatable datatable">
				<thead>
					<tr>
						<th>선택</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Reg_date</th>
						<th>Grade</th> 
					</tr>
				</thead>
				<tbody id="table-data" class="customerBody">
					<c:forEach var="cus" items="${cusList}">
						<tr>
						<!--  <input type="radio" name="customerNo" value="${cus.no}"/> -->
							<td class="center"><input type="radio" name="customerNo" value="${cus.no}"/></td>
							<td class="center" id="${cus.no}">${cus.name}</td>
							<td class="center">${cus.phone }</td>
							<td class="center">${cus.regDate}</td>
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
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div id="test"></div>
	</div>
	<!--/span-->
</div>
<!--/row-->