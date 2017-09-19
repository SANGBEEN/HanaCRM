<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal hide fade" id="detailModal">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">×</button>
		Event Detail
	</div>
	<div class="modal-body">			
			<jsp:include page="/include/scheduleInfo.jsp" />
	</div>
	<div class="modal-footer">
		<a href="#" class="btn" id="modalCancle" data-dismiss="modal">Close</a>
		<a href="#" class="btn btn-danger" id="modalDelete" data-dismiss="modal">Delete Event</a>
		<button type="submit" class="btn btn-primary" id="modalSave" data-dismiss="modal">Save changes</button>
	</div>
</div>