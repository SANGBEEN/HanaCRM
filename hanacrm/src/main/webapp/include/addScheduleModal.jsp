<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="addModal" class="modal hide fade" aria-hidden="true" data-keyboard="true">
  	<div class="modal-header" align="center">
  		<!-- <h1 style="font-weight: 600; text-align: left; margin: 1vh auto;">일정등록</h1> -->
		<button type="button" class="close" data-dismiss="modal">×</button>
		&nbsp;
	</div>
	
	 <div class="modal-body">
			<jsp:include page="/include/customerInfo.jsp"/>
			<jsp:include page="/include/scheduleInfo.jsp" />
	 </div>
	 <div class="modal-footer">
		 <button type="button" id="modalSave" class="btn btn-sm schedule-add-btn" data-dismiss="modal">일정 추가<i class="halflings-icon white ok spaceLeft"></i></button>
		<button type="button" id="modalCancle" class="btn btn-sm schedule-cancle-btn" data-dismiss="modal">취소<i class="halflings-icon remove spaceLeft"></i></button>
	 </div>
	 
	  <!--  </form> -->
  </div>
 </div>
</div>