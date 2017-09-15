<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="addModal" class="modal fade">
  <div class="modal-dialog">
   <div class="modal-content">
	   <form id="addScheduleForm" class="no-margin">
	 <div class="modal-body">
	   <button type="button" class="close" data-dismiss="modal" style="margin-top:-10px;">&times;</button>
		  <label>Change event name &nbsp;</label>
			<jsp:include page="addScheduleModalContent.jsp" />
	 </div>
	 <div class="modal-footer">
		 <button type="submit" class="btn btn-sm btn-success" ><i class="ace-icon fa fa-check"></i> Save</button>
		<!-- <button type="button" class="btn btn-sm btn-danger" data-action="delete" ><i class="ace-icon fa fa-trash-o"></i> Delete Event</button> -->
		<button type="button" id="modalCancle" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>
	 </div>
	 
	   </form>
  </div>
 </div>
</div>