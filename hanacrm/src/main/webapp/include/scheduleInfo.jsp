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
			  
			  <div class="control-group">
				<label class="control-label">시작일자</label>
				<label class="control-label">종료일자</label>

			<!-- <div class="controls"> -->
				<div id="start-date-mtr-datepicker">
				</div>
			  
				<div id="end-date-mtr-datepicker">
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

			  <!-- <div class="control-group">
				<label class="control-label" for="disabledInput">Disabled input</label>
				<div class="controls">
				  <input class="input-xlarge disabled" id="disabledInput" type="text" placeholder="Disabled input here…" disabled="">
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="optionsCheckbox2">Disabled checkbox</label>
				<div class="controls">
				  <label class="checkbox">
					<input type="checkbox" id="optionsCheckbox2" value="option1" disabled="">
					This is a disabled checkbox
				  </label>
				</div>
			  </div>
			  <div class="control-group warning">
				<label class="control-label" for="inputWarning">Input with warning</label>
				<div class="controls">
				  <input type="text" id="inputWarning">
				  <span class="help-inline">Something may have gone wrong</span>
				</div>
			  </div>
			  <div class="control-group error">
				<label class="control-label" for="inputError">Input with error</label>
				<div class="controls">
				  <input type="text" id="inputError">
				  <span class="help-inline">Please correct the error</span>
				</div>
			  </div>
			  <div class="control-group success">
				<label class="control-label" for="inputSuccess">Input with success</label>
				<div class="controls">
				  <input type="text" id="inputSuccess">
				  <span class="help-inline">Woohoo!</span>
				</div>
			  </div> -->
			  
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
		<!-- 	  
			  <div class="control-group">
				<label class="control-label" for="selectError">Modern Select</label>
				<div class="controls">
				  <select id="selectError" data-rel="chosen">
					<option>Option 1</option>
					<option>Option 2</option>
					<option>Option 3</option>
					<option>Option 4</option>
					<option>Option 5</option>
				  </select>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="selectError1">Multiple Select / Tags</label>
				<div class="controls">
				  <select id="selectError1" multiple data-rel="chosen">
					<option>Option 1</option>
					<option selected>Option 2</option>
					<option>Option 3</option>
					<option>Option 4</option>
					<option>Option 5</option>
				  </select>
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="selectError2">Group Select</label>
				<div class="controls">
					<select data-placeholder="Your Favorite Football Team" id="selectError2" data-rel="chosen">
						<option value=""></option>
						<optgroup label="NFC EAST">
						  <option>Dallas Cowboys</option>
						  <option>New York Giants</option>
						  <option>Philadelphia Eagles</option>
						  <option>Washington Redskins</option>
						</optgroup>
						<optgroup label="NFC NORTH">
						  <option>Chicago Bears</option>
						  <option>Detroit Lions</option>
						  <option>Green Bay Packers</option>
						  <option>Minnesota Vikings</option>
						</optgroup>
						<optgroup label="NFC SOUTH">
						  <option>Atlanta Falcons</option>
						  <option>Carolina Panthers</option>
						  <option>New Orleans Saints</option>
						  <option>Tampa Bay Buccaneers</option>
						</optgroup>
						<optgroup label="NFC WEST">
						  <option>Arizona Cardinals</option>
						  <option>St. Louis Rams</option>
						  <option>San Francisco 49ers</option>
						  <option>Seattle Seahawks</option>
						</optgroup>
						<optgroup label="AFC EAST">
						  <option>Buffalo Dennis Jis</option>
						  <option>Miami Dolphins</option>
						  <option>New England Patriots</option>
						  <option>New York Jets</option>
						</optgroup>
						<optgroup label="AFC NORTH">
						  <option>Baltimore Ravens</option>
						  <option>Cincinnati Bengals</option>
						  <option>Cleveland Browns</option>
						  <option>Pittsburgh Steelers</option>
						</optgroup>
						<optgroup label="AFC SOUTH">
						  <option>Houston Texans</option>
						  <option>Indianapolis Colts</option>
						  <option>Jacksonville Jaguars</option>
						  <option>Tennessee Titans</option>
						</optgroup>
						<optgroup label="AFC WEST">
						  <option>Denver Broncos</option>
						  <option>Kansas City Chiefs</option>
						  <option>Oakland Raiders</option>
						  <option>San Diego Chargers</option>
						</optgroup>
				  </select>
				</div>
			  </div>
			  -->
			</fieldset>
		  </div>
	
	</div>
</div><!--/span-->

</div><!--/row-->