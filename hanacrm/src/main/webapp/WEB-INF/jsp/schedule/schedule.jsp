<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="row">
		<div class="col-sm-9">
			<div class="space"></div>

			<div id="calendar" class="fc fc-ltr fc-unthemed">
				<div class="fc-toolbar">
					<div class="fc-left">
						<div class="fc-button-group">
							<button type="button"
								class="fc-prev-button fc-button fc-state-default fc-corner-left">
								<span class="fc-icon fc-icon-left-single-arrow"></span>
							</button>
							<button type="button"
								class="fc-next-button fc-button fc-state-default fc-corner-right">
								<span class="fc-icon fc-icon-right-single-arrow"></span>
							</button>
						</div>
						<button type="button"
							class="fc-today-button fc-button fc-state-default fc-corner-left fc-corner-right fc-state-disabled"
							disabled="disabled">today</button>
					</div>
					<div class="fc-right">
						<div class="fc-button-group">
							<button type="button"
								class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">month</button>
							<button type="button"
								class="fc-agendaWeek-button fc-button fc-state-default">week</button>
							<button type="button"
								class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">day</button>
						</div>
					</div>
					<div class="fc-center">
						<h2>September 2017</h2>
					</div>
					<div class="fc-clear"></div>
				</div>
				<div class="fc-view-container" style="">
					<div class="fc-view fc-month-view fc-basic-view" style="">
						<table>
							<thead class="fc-head">
								<tr>
									<td class="fc-head-container fc-widget-header"><div
											class="fc-row fc-widget-header" style="">
											<table>
												<thead>
													<tr>
														<th class="fc-day-header fc-widget-header fc-sun">Sun</th>
														<th class="fc-day-header fc-widget-header fc-mon">Mon</th>
														<th class="fc-day-header fc-widget-header fc-tue">Tue</th>
														<th class="fc-day-header fc-widget-header fc-wed">Wed</th>
														<th class="fc-day-header fc-widget-header fc-thu">Thu</th>
														<th class="fc-day-header fc-widget-header fc-fri">Fri</th>
														<th class="fc-day-header fc-widget-header fc-sat">Sat</th>
													</tr>
												</thead>
											</table>
										</div></td>
								</tr>
							</thead>
							<tbody class="fc-body">
								<tr>
									<td class="fc-widget-content"><div
											class="fc-day-grid-container" style="">
											<div class="fc-day-grid">
												<div class="fc-row fc-week fc-widget-content"
													style="height: 77px;">
													<div class="fc-bg">
														<table>
															<tbody>
																<tr>
																	<td
																		class="fc-day fc-widget-content fc-sun fc-other-month fc-past"
																		data-date="2017-08-27"></td>
																	<td
																		class="fc-day fc-widget-content fc-mon fc-other-month fc-past"
																		data-date="2017-08-28"></td>
																	<td
																		class="fc-day fc-widget-content fc-tue fc-other-month fc-past"
																		data-date="2017-08-29"></td>
																	<td
																		class="fc-day fc-widget-content fc-wed fc-other-month fc-past"
																		data-date="2017-08-30"></td>
																	<td
																		class="fc-day fc-widget-content fc-thu fc-other-month fc-past"
																		data-date="2017-08-31"></td>
																	<td class="fc-day fc-widget-content fc-fri fc-past"
																		data-date="2017-09-01"></td>
																	<td class="fc-day fc-widget-content fc-sat fc-past"
																		data-date="2017-09-02"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="fc-content-skeleton">
														<table>
															<thead>
																<tr>
																	<td class="fc-day-number fc-sun fc-other-month fc-past"
																		data-date="2017-08-27">27</td>
																	<td class="fc-day-number fc-mon fc-other-month fc-past"
																		data-date="2017-08-28">28</td>
																	<td class="fc-day-number fc-tue fc-other-month fc-past"
																		data-date="2017-08-29">29</td>
																	<td class="fc-day-number fc-wed fc-other-month fc-past"
																		data-date="2017-08-30">30</td>
																	<td class="fc-day-number fc-thu fc-other-month fc-past"
																		data-date="2017-08-31">31</td>
																	<td class="fc-day-number fc-fri fc-past"
																		data-date="2017-09-01">1</td>
																	<td class="fc-day-number fc-sat fc-past"
																		data-date="2017-09-02">2</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																	<td class="fc-event-container" colspan="2"><a
																		class="fc-day-grid-event fc-h-event fc-event fc-start fc-not-end label-success fc-draggable"><div
																				class="fc-content">
																				<span class="fc-title">Long Event</span>
																			</div></a></td>
																</tr>
																<tr>
																	<td class="fc-event-container"><a
																		class="fc-day-grid-event fc-h-event fc-event fc-start fc-end label-important fc-draggable"><div
																				class="fc-content">
																				<span class="fc-time">12a</span> <span
																					class="fc-title">All Day Event</span>
																			</div></a></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div class="fc-row fc-week fc-widget-content"
													style="height: 77px;">
													<div class="fc-bg">
														<table>
															<tbody>
																<tr>
																	<td class="fc-day fc-widget-content fc-sun fc-past"
																		data-date="2017-09-03"></td>
																	<td class="fc-day fc-widget-content fc-mon fc-past"
																		data-date="2017-09-04"></td>
																	<td class="fc-day fc-widget-content fc-tue fc-past"
																		data-date="2017-09-05"></td>
																	<td
																		class="fc-day fc-widget-content fc-wed fc-today fc-state-highlight"
																		data-date="2017-09-06"></td>
																	<td class="fc-day fc-widget-content fc-thu fc-future"
																		data-date="2017-09-07"></td>
																	<td class="fc-day fc-widget-content fc-fri fc-future"
																		data-date="2017-09-08"></td>
																	<td class="fc-day fc-widget-content fc-sat fc-future"
																		data-date="2017-09-09"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="fc-content-skeleton">
														<table>
															<thead>
																<tr>
																	<td class="fc-day-number fc-sun fc-past"
																		data-date="2017-09-03">3</td>
																	<td class="fc-day-number fc-mon fc-past"
																		data-date="2017-09-04">4</td>
																	<td class="fc-day-number fc-tue fc-past"
																		data-date="2017-09-05">5</td>
																	<td
																		class="fc-day-number fc-wed fc-today fc-state-highlight"
																		data-date="2017-09-06">6</td>
																	<td class="fc-day-number fc-thu fc-future"
																		data-date="2017-09-07">7</td>
																	<td class="fc-day-number fc-fri fc-future"
																		data-date="2017-09-08">8</td>
																	<td class="fc-day-number fc-sat fc-future"
																		data-date="2017-09-09">9</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="fc-event-container" colspan="2"><a
																		class="fc-day-grid-event fc-h-event fc-event fc-not-start fc-end label-success fc-draggable fc-resizable"><div
																				class="fc-content">
																				<span class="fc-title">Long Event</span>
																			</div>
																			<div class="fc-resizer fc-end-resizer"></div></a></td>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																	<td rowspan="2"></td>
																</tr>
																<tr>
																	<td class="fc-event-container"><a
																		class="fc-day-grid-event fc-h-event fc-event fc-start fc-end label-info fc-draggable"><div
																				class="fc-content">
																				<span class="fc-time">4p</span> <span
																					class="fc-title">Some Event</span>
																			</div></a></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div class="fc-row fc-week fc-widget-content"
													style="height: 77px;">
													<div class="fc-bg">
														<table>
															<tbody>
																<tr>
																	<td class="fc-day fc-widget-content fc-sun fc-future"
																		data-date="2017-09-10"></td>
																	<td class="fc-day fc-widget-content fc-mon fc-future"
																		data-date="2017-09-11"></td>
																	<td class="fc-day fc-widget-content fc-tue fc-future"
																		data-date="2017-09-12"></td>
																	<td class="fc-day fc-widget-content fc-wed fc-future"
																		data-date="2017-09-13"></td>
																	<td class="fc-day fc-widget-content fc-thu fc-future"
																		data-date="2017-09-14"></td>
																	<td class="fc-day fc-widget-content fc-fri fc-future"
																		data-date="2017-09-15"></td>
																	<td class="fc-day fc-widget-content fc-sat fc-future"
																		data-date="2017-09-16"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="fc-content-skeleton">
														<table>
															<thead>
																<tr>
																	<td class="fc-day-number fc-sun fc-future"
																		data-date="2017-09-10">10</td>
																	<td class="fc-day-number fc-mon fc-future"
																		data-date="2017-09-11">11</td>
																	<td class="fc-day-number fc-tue fc-future"
																		data-date="2017-09-12">12</td>
																	<td class="fc-day-number fc-wed fc-future"
																		data-date="2017-09-13">13</td>
																	<td class="fc-day-number fc-thu fc-future"
																		data-date="2017-09-14">14</td>
																	<td class="fc-day-number fc-fri fc-future"
																		data-date="2017-09-15">15</td>
																	<td class="fc-day-number fc-sat fc-future"
																		data-date="2017-09-16">16</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div class="fc-row fc-week fc-widget-content"
													style="height: 77px;">
													<div class="fc-bg">
														<table>
															<tbody>
																<tr>
																	<td class="fc-day fc-widget-content fc-sun fc-future"
																		data-date="2017-09-17"></td>
																	<td class="fc-day fc-widget-content fc-mon fc-future"
																		data-date="2017-09-18"></td>
																	<td class="fc-day fc-widget-content fc-tue fc-future"
																		data-date="2017-09-19"></td>
																	<td class="fc-day fc-widget-content fc-wed fc-future"
																		data-date="2017-09-20"></td>
																	<td class="fc-day fc-widget-content fc-thu fc-future"
																		data-date="2017-09-21"></td>
																	<td class="fc-day fc-widget-content fc-fri fc-future"
																		data-date="2017-09-22"></td>
																	<td class="fc-day fc-widget-content fc-sat fc-future"
																		data-date="2017-09-23"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="fc-content-skeleton">
														<table>
															<thead>
																<tr>
																	<td class="fc-day-number fc-sun fc-future"
																		data-date="2017-09-17">17</td>
																	<td class="fc-day-number fc-mon fc-future"
																		data-date="2017-09-18">18</td>
																	<td class="fc-day-number fc-tue fc-future"
																		data-date="2017-09-19">19</td>
																	<td class="fc-day-number fc-wed fc-future"
																		data-date="2017-09-20">20</td>
																	<td class="fc-day-number fc-thu fc-future"
																		data-date="2017-09-21">21</td>
																	<td class="fc-day-number fc-fri fc-future"
																		data-date="2017-09-22">22</td>
																	<td class="fc-day-number fc-sat fc-future"
																		data-date="2017-09-23">23</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div class="fc-row fc-week fc-widget-content"
													style="height: 77px;">
													<div class="fc-bg">
														<table>
															<tbody>
																<tr>
																	<td class="fc-day fc-widget-content fc-sun fc-future"
																		data-date="2017-09-24"></td>
																	<td class="fc-day fc-widget-content fc-mon fc-future"
																		data-date="2017-09-25"></td>
																	<td class="fc-day fc-widget-content fc-tue fc-future"
																		data-date="2017-09-26"></td>
																	<td class="fc-day fc-widget-content fc-wed fc-future"
																		data-date="2017-09-27"></td>
																	<td class="fc-day fc-widget-content fc-thu fc-future"
																		data-date="2017-09-28"></td>
																	<td class="fc-day fc-widget-content fc-fri fc-future"
																		data-date="2017-09-29"></td>
																	<td class="fc-day fc-widget-content fc-sat fc-future"
																		data-date="2017-09-30"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="fc-content-skeleton">
														<table>
															<thead>
																<tr>
																	<td class="fc-day-number fc-sun fc-future"
																		data-date="2017-09-24">24</td>
																	<td class="fc-day-number fc-mon fc-future"
																		data-date="2017-09-25">25</td>
																	<td class="fc-day-number fc-tue fc-future"
																		data-date="2017-09-26">26</td>
																	<td class="fc-day-number fc-wed fc-future"
																		data-date="2017-09-27">27</td>
																	<td class="fc-day-number fc-thu fc-future"
																		data-date="2017-09-28">28</td>
																	<td class="fc-day-number fc-fri fc-future"
																		data-date="2017-09-29">29</td>
																	<td class="fc-day-number fc-sat fc-future"
																		data-date="2017-09-30">30</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<div class="fc-row fc-week fc-widget-content"
													style="height: 80px;">
													<div class="fc-bg">
														<table>
															<tbody>
																<tr>
																	<td
																		class="fc-day fc-widget-content fc-sun fc-other-month fc-future"
																		data-date="2017-10-01"></td>
																	<td
																		class="fc-day fc-widget-content fc-mon fc-other-month fc-future"
																		data-date="2017-10-02"></td>
																	<td
																		class="fc-day fc-widget-content fc-tue fc-other-month fc-future"
																		data-date="2017-10-03"></td>
																	<td
																		class="fc-day fc-widget-content fc-wed fc-other-month fc-future"
																		data-date="2017-10-04"></td>
																	<td
																		class="fc-day fc-widget-content fc-thu fc-other-month fc-future"
																		data-date="2017-10-05"></td>
																	<td
																		class="fc-day fc-widget-content fc-fri fc-other-month fc-future"
																		data-date="2017-10-06"></td>
																	<td
																		class="fc-day fc-widget-content fc-sat fc-other-month fc-future"
																		data-date="2017-10-07"></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="fc-content-skeleton">
														<table>
															<thead>
																<tr>
																	<td
																		class="fc-day-number fc-sun fc-other-month fc-future"
																		data-date="2017-10-01">1</td>
																	<td
																		class="fc-day-number fc-mon fc-other-month fc-future"
																		data-date="2017-10-02">2</td>
																	<td
																		class="fc-day-number fc-tue fc-other-month fc-future"
																		data-date="2017-10-03">3</td>
																	<td
																		class="fc-day-number fc-wed fc-other-month fc-future"
																		data-date="2017-10-04">4</td>
																	<td
																		class="fc-day-number fc-thu fc-other-month fc-future"
																		data-date="2017-10-05">5</td>
																	<td
																		class="fc-day-number fc-fri fc-other-month fc-future"
																		data-date="2017-10-06">6</td>
																	<td
																		class="fc-day-number fc-sat fc-other-month fc-future"
																		data-date="2017-10-07">7</td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="col-sm-3">
			<div class="widget-box transparent">
				<div class="widget-header">
					<h4>Draggable events</h4>
				</div>

				<div class="widget-body">
					<div class="widget-main no-padding">
						<div id="external-events">
							<div
								class="external-event label-grey ui-draggable ui-draggable-handle"
								data-class="label-grey" style="position: relative;">
								<i class="ace-icon fa fa-arrows"></i> My Event 1
							</div>

							<div
								class="external-event label-success ui-draggable ui-draggable-handle"
								data-class="label-success" style="position: relative;">
								<i class="ace-icon fa fa-arrows"></i> My Event 2
							</div>

							<div
								class="external-event label-danger ui-draggable ui-draggable-handle"
								data-class="label-danger" style="position: relative;">
								<i class="ace-icon fa fa-arrows"></i> My Event 3
							</div>

							<div
								class="external-event label-purple ui-draggable ui-draggable-handle"
								data-class="label-purple" style="position: relative;">
								<i class="ace-icon fa fa-arrows"></i> My Event 4
							</div>

							<div
								class="external-event label-yellow ui-draggable ui-draggable-handle"
								data-class="label-yellow" style="position: relative;">
								<i class="ace-icon fa fa-arrows"></i> My Event 5
							</div>

							<div
								class="external-event label-pink ui-draggable ui-draggable-handle"
								data-class="label-pink" style="position: relative;">
								<i class="ace-icon fa fa-arrows"></i> My Event 6
							</div>

							<div
								class="external-event label-info ui-draggable ui-draggable-handle"
								data-class="label-info" style="position: relative;">
								<i class="ace-icon fa fa-arrows"></i> My Event 7
							</div>

							<label> <input type="checkbox" class="ace ace-checkbox"
								id="drop-remove"> <span class="lbl"> Remove after
									drop</span>
							</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>