<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="addModal" class="modal fade">
  <div class="modal-dialog">
   <div class="modal-content">
	   <form name="addScheduleForm" class="no-margin">
	 <div class="modal-body">
	   <button type="button" class="close" data-dismiss="modal" style="margin-top:-10px;">&times;</button>
		  <label>Change event name &nbsp;</label>
		  분류 
		  <select name="scheduleType" id="scheduleType">
		  	<option value="Meeting">Meeting</option>
		  	<option value="Call">Call</option>
		  	<option value="Task">Task</option>
		  	<option value="Event">Event</option>
		  	<option value="Other">Other</option>	
		  	<option value="Important">Important</option>
		  </select>
		  <input id="comments" name="comments" class="middle" autocomplete="off" type="text" value="test1" />
		  <br/>
		  장소 <input id="location" name="location" class="middle" autocomplete="off" type="text" value="장소" />
		  <br/>
		  시작일 &nbsp;&nbsp;
		  종료일
		  <br/>
		  반복
		  <select name="repetition" id="repetition">
		  	<option value="한번">한번</option>
		  	<option value="매일">매일</option>
		  	<option value="매주">매주</option>
		  	<option value="매달">매달</option>
		  	<option value="매년">매년</option>	
		  </select>
	 </div>
	 <div class="modal-footer">
		 <button type="submit" class="btn btn-sm btn-success" ><i class="ace-icon fa fa-check"></i> Save</button>
		<!-- <button type="button" class="btn btn-sm btn-danger" data-action="delete" ><i class="ace-icon fa fa-trash-o"></i> Delete Event</button> -->
		<button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>
	 </div>
	   </form>
  </div>
 </div>
</div>