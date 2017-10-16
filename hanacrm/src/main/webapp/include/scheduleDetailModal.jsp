<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="modal hide fade" id="detailModal">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">×</button>
		&nbsp;
	</div>
	<div class="modal-body">			
		<div class="row-fluid">
			<div class="box span12">
				<div class="box-header" data-original-title>
					<h2><i class="halflings-icon edit"></i><span class="break"></span>상세 일정</h2>
					<div class="box-icon">
						
					</div>
				</div>
				<div class="box-content">
					<div class="form-horizontal">
						<fieldset>
						
						<div class="control-group" id="div_customerName">
							<label class="control-label"><b>고객명</b></label>
							<div class="controls" style="padding-left: 5px; height: 30px; line-height: 30px;">
								<span id="customerName"></span>
							</div>
						</div>
						<!-- Type select -->
						  <div class="control-group">
							<label class="control-label" for="selectError3"><b>일정분류</b></label>
							<div class="controls" style="padding-left: 5px; height: 30px; line-height: 30px;">
							 	 <span id="scheduleType"></span>
							</div>
						  </div>
						  
						  <div class="control-group">
						  	<label class="control-label" for="focusedInput"><b>시작일시</b></label>
						  	<div class="controls">
								<input id="detail_datetimepicker" type="text" >
							</div>	
						</div>
						
						<div class="control-group" id="div_duration">
							<label class="control-label" for="focusedInput"><b>소요시간</b></label>
							<div class="controls">
								<div class="btn-group btn-overlap btn-corner">
									<button id="duration1" value="1" class="btn btn-sm btn-white btn-info dduration">1</button>
									<button id="duration2" value="2" class="btn btn-sm btn-white btn-info dduration">2</button>
									<button id="duration3" value="3" class="btn btn-sm btn-white btn-info dduration">3</button>
									<button id="duration4" value="4" class="btn btn-sm btn-white btn-info dduration">4</button>
								</div>
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="focusedInput"><b>종료일시</b></label>
							<div class="controls" style="padding-left: 5px; height: 30px; line-height: 30px;">
								<span id="endDate"></span>
							</div>					
						</div>
						  
						  <div class="control-group">
							<label class="control-label" for="focusedInput"><b>장소</b></label>
							<div class="controls">
							  <input class="focused" id="location" type="text" value=""> <!-- name="location" -->
							</div>
						  </div>
			
						  <!-- Comment -->
						  <div class="control-group">
							<label class="control-label" for="focusedInput"><b>일정사항</b></label>
							<div class="controls">
							   <textarea id="comments"></textarea> <!-- name="comments" -->
							</div>
						  </div>
			
						  <div class="control-group">
							<label class="control-label" for="selectError3"><b>반복</b></label>
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
							<label class="control-label" for="selectError3"><b>중요도</b></label>
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
	</div>
	<div class="modal-footer">
		<a href="#" id="modalSave" class="btn schedule-edit-btn" id="modalSave" data-dismiss="modal">수정</a>
		<a href="#" class="btn schedule-delete-btn" id="modalDelete">일정삭제</a>
		<a href="#" class="btn schedule-cancle-btn" id="modalCancle" data-dismiss="modal">취소</a>
	</div>
</div>