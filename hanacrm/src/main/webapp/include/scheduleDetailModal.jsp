<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal hide fade" id="detailModal">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">×</button>
		Event Detail
	</div>
	<div class="modal-body">			
		<div class="row-fluid sortable">
			<div class="box span12">
				<div class="box-header" data-original-title>
					<h2><i class="halflings-icon edit"></i><span class="break"></span>Form Elements</h2>
					<div class="box-icon">
						
					</div>
				</div>
				<div class="box-content">
					<div class="form-horizontal">
						<fieldset>
						
						<div class="control-group">
							<label class="control-label">고객명</label>
							<div class="controls">
								<span id="customerName"></span>
							</div>
						</div>
						<!-- Type select -->
						  <div class="control-group">
							<label class="control-label" for="selectError3">Type</label>
							<div class="controls">
							  <select id="scheduleType"> <!-- name="scheduleType" -->
								<option value="Meeting">Meeting</option>
							  	<option value="Call">Call</option>
							  	<option value="Task">Task</option>
							  	<option value="Event">Event</option>
							  	<option value="Other">Other</option>	
							  	<option value="Important">Important</option>
							  </select>
							</div>
						  </div>
						  
						  <div class="control-group">
							<label class="control-label">시작일자</label>
							<label class="control-label">종료일자</label>
			
					<!-- 	<div class="controls"> -->
							<div id="detail-start-date-mtr-datepicker">
							</div>
						  
							<div id="detail-end-date-mtr-datepicker">
							</div>
						  <!-- </div> -->
						</div>
						  
						  <div class="control-group">
							<label class="control-label" for="focusedInput">location</label>
							<div class="controls">
							  <input class="input-xlarge" id="location" type="text" value=""> <!-- name="location" -->
							</div>
						  </div>
			
						  <!-- Comment -->
						  <div class="control-group">
							<label class="control-label" for="focusedInput">Comments</label>
							<div class="controls">
							  <input class="input-xlarge focused" id="comments" type="text" value=""> <!-- name="comments" -->
							</div>
						  </div>
			
						  <div class="control-group">
							<label class="control-label" for="selectError3">반복</label>
							<div class="controls">
							  <select id="repetition"> <!-- name="repetition" -->
							  	<option value="한번">한번</option>
							  	<option value="매일">매일</option>
							  	<option value="매주">매주</option>
							  	<option value="매달">매달</option>
							  	<option value="매년">매년</option>	
							  </select>
							</div>
						  </div>
			</fieldset>
		  </div>
		</div>
	</div><!--/span-->
	
	</div><!--/row-->
	</div>
	<div class="modal-footer">
		<a href="#" class="btn" id="modalCancle" data-dismiss="modal">Close</a>
		<a href="#" class="btn btn-danger" id="modalDelete" data-dismiss="modal">Delete Event</a>
		<a href="#" id="modalSave" class="btn btn-primary" id="modalSave" data-dismiss="modal">Save changes</a>
	</div>
</div>