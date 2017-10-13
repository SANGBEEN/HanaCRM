<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row-fluid sortable">
<div class="box span12">
	<div class="box-header" data-original-title>
		<h2><i class="halflings-icon edit"></i><span class="break"></span>Schedule Info</h2>
		<div class="box-icon">
			
		</div>
	</div>
	<div class="box-content">
		<div class="form-horizontal">
			<fieldset>
			
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
		
			<!-- <div class="controls"> -->
		  	
				<div class="control-group">
				  	<label class="control-label" for="focusedInput">Start Date</label>
				  	<div class="controls">
						<input id="datetimepicker" type="text" >
					</div>
				</div>
				
				
		
				<div class="control-group" id="div_duration">
					<label class="control-label" for="focusedInput">Duration</label>
					<div class="controls">
						<div class="btn-group btn-overlap btn-corner">
							<button value="1" class="btn btn-sm btn-white btn-info duration">1</button>
							<button value="2" class="btn btn-sm btn-white btn-info duration">2</button>
							<button value="3" class="btn btn-sm btn-white btn-info duration">3</button>
							<button value="4" class="btn btn-sm btn-white btn-info duration">4</button>
						</div>
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="focusedInput">End Date</label>
					<div class="controls">
						<span id="endDate"></span>
					</div>					
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
			  
			  <div class="control-group">
				<label class="control-label" for="selectError3">중요도</label>
				<div class="controls">
				  <select id="importance">
				  	<option value="1">매우중요</option>
				  	<option value="2">중요</option>
				  	<option value="3">보통</option>
				  	<option value="4">낮음</option>
				  	<option value="5">매우낮음</option>	
				  </select>
				</div>
			  </div>
			</fieldset>
		  </div>
	
	</div>
</div><!--/span-->

</div><!--/row-->