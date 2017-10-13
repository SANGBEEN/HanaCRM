<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="addModal" class="modal hide fade" aria-hidden="true" data-keyboard="true">
  	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">×</button>
		&nbsp;
	</div>
	 <div class="modal-body">
			<jsp:include page="/include/customerInfo.jsp"/>
			<jsp:include page="/include/scheduleInfo.jsp" />
	 </div>
	 <div class="modal-footer">
		 <button type="button" id="modalSave" class="btn btn-sm btn-success" data-dismiss="modal">일정 추가</button>
		<button type="button" id="modalCancle" class="btn btn-sm" data-dismiss="modal">취소</button>
	 </div>
	 
	  <!--  </form> -->
  </div>
 </div>
</div>