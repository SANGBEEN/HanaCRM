<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>Insert title here</title>
<meta name="description" content="with draggable and editable events" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->
<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.min.css" />

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
	<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
<script src="assets/js/html5shiv.min.js"></script>
<script src="assets/js/respond.min.js"></script>
<![endif]-->
</head>

<body class="no-skin">

	<!-- 상단바 -->
	<jsp:include page="/include/header.jsp" />
	
	<!-- content 시작 -->
	<div class="main-container ace-save-state" id="main-container">
	<script type="text/javascript">
		try{ace.settings.loadState('main-container')}catch(e){}
	</script>

		<!-- 왼쪽 사이드 메뉴 -->
		<jsp:include page="/include/sideMenu.jsp"/>

		<!-- 메인 내용 -->
		<div class="main-content">
		
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">Home</a>
						</li>
						<li class="active">Calendar</li>
					</ul><!-- /.breadcrumb -->
	
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div><!-- /.nav-search -->
				</div>
	
				<div class="page-content">
					<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
										<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
										<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
										<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
										<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
										<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
									</div>
								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->
	
					<div class="page-header">
						<h1>
							Full Calendar
							<small>
								<i class="ace-icon fa fa-angle-double-right"></i>
								with draggable and editable events
							</small>
						</h1>
					</div><!-- /.page-header -->
					
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
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
																							<td class="fc-event-container" colspan="2">
																								<a class="fc-day-grid-event fc-h-event fc-event fc-start fc-not-end label-success fc-draggable">
																								<div class="fc-content">
																									<span class="fc-title">Long Event</span>
																								</div></a>
																							</td>
																						</tr>
																						<tr>
																							<td class="fc-event-container">
																								<a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end label-important fc-draggable">
																								<div class="fc-content">
																										<span class="fc-time">12a</span>
																										<span class="fc-title">All Day Event</span>
																								</div></a>
																							</td>
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
																							<td class="fc-event-container" colspan="2">
																								<a class="fc-day-grid-event fc-h-event fc-event fc-not-start fc-end label-success fc-draggable fc-resizable">
																									<div class="fc-content">
																											<span class="fc-title">Long Event</span>
																									</div>
																								<div class="fc-resizer fc-end-resizer"></div>
																								</a></td>
																							<td rowspan="2"></td>
																							<td rowspan="2"></td>
																							<td rowspan="2"></td>
																							<td rowspan="2"></td>
																							<td rowspan="2"></td>
																						</tr>
																						<tr>
																							<td class="fc-event-container">
																							<a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end label-info fc-draggable">
																								<div class="fc-content">
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
													<div class="external-event label-grey" data-class="label-grey">
														<i class="ace-icon fa fa-arrows"></i>
														My Event 1
													</div>
	
													<div class="external-event label-success" data-class="label-success">
														<i class="ace-icon fa fa-arrows"></i>
														My Event 2
													</div>
	
													<div class="external-event label-danger" data-class="label-danger">
														<i class="ace-icon fa fa-arrows"></i>
														My Event 3
													</div>
	
													<div class="external-event label-purple" data-class="label-purple">
														<i class="ace-icon fa fa-arrows"></i>
														My Event 4
													</div>
	
													<div class="external-event label-yellow" data-class="label-yellow">
														<i class="ace-icon fa fa-arrows"></i>
														My Event 5
													</div>
	
													<div class="external-event label-pink" data-class="label-pink">
														<i class="ace-icon fa fa-arrows"></i>
														My Event 6
													</div>
	
													<div class="external-event label-info" data-class="label-info">
														<i class="ace-icon fa fa-arrows"></i>
														My Event 7
													</div>
	
													<label>
														<input type="checkbox" class="ace ace-checkbox" id="drop-remove" />
														<span class="lbl"> Remove after drop</span>
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							!-- PAGE CONTENT ENDS -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.page-content -->
			</div>
		</div><!-- /.main-content -->
		
		<!-- footer -->
		<jsp:include page="/include/footer.jsp"/>
	</div>
	
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/moment.min.js"></script>
		<script src="assets/js/fullcalendar.min.js"></script>
		<script src="assets/js/bootbox.js"></script>

		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.easypiechart.min.js"></script>
		<script src="assets/js/jquery.sparkline.index.min.js"></script>
		<script src="assets/js/jquery.flot.min.js"></script>
		<script src="assets/js/jquery.flot.pie.min.js"></script>
		<script src="assets/js/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				
				/* initialize the external events
				-----------------------------------------------------------------*/

				$('#external-events div.external-event').each(function() {

					// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
					// it doesn't need to have a start or end
					var eventObject = {
						title: $.trim($(this).text()) // use the element's text as the event title
					};

					// store the Event Object in the DOM element so we can get to it later
					$(this).data('eventObject', eventObject);

					// make the event draggable using jQuery UI
					$(this).draggable({
						zIndex: 999,
						revert: true,      // will cause the event to go back to its
						revertDuration: 0  //  original position after the drag
					});
					
				});

				/* initialize the calendar
				-----------------------------------------------------------------*/

				var date = new Date();
				var d = date.getDate();
				var m = date.getMonth();
				var y = date.getFullYear();


				var calendar = $('#calendar').fullCalendar({
					//isRTL: true,
					//firstDay: 1,// >> change first day of week 
					
					buttonHtml: {
						prev: '<i class="ace-icon fa fa-chevron-left"></i>',
						next: '<i class="ace-icon fa fa-chevron-right"></i>'
					},
				
					header: {
						left: 'prev,next today',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					events: [
					  {
						title: 'All Day Event',
						start: new Date(y, m, 1),
						className: 'label-important'
					  },
					  {
						title: 'Long Event',
						start: moment().subtract(5, 'days').format('YYYY-MM-DD'),
						end: moment().subtract(1, 'days').format('YYYY-MM-DD'),
						className: 'label-success'
					  },
					  {
						title: 'Some Event',
						start: new Date(y, m, d-3, 16, 0),
						allDay: false,
						className: 'label-info'
					  }
					]
					,
					
					/**eventResize: function(event, delta, revertFunc) {

						alert(event.title + " end is now " + event.end.format());

						if (!confirm("is this okay?")) {
							revertFunc();
						}

					},*/
					
					editable: true,
					droppable: true, // this allows things to be dropped onto the calendar !!!
					drop: function(date) { // this function is called when something is dropped
					
						// retrieve the dropped element's stored Event Object
						var originalEventObject = $(this).data('eventObject');
						var $extraEventClass = $(this).attr('data-class');
						
						
						// we need to copy it, so that multiple events don't have a reference to the same object
						var copiedEventObject = $.extend({}, originalEventObject);
						
						// assign it the date that was reported
						copiedEventObject.start = date;
						copiedEventObject.allDay = false;
						if($extraEventClass) copiedEventObject['className'] = [$extraEventClass];
						
						// render the event on the calendar
						// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
						$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
						
						// is the "remove after drop" checkbox checked?
						if ($('#drop-remove').is(':checked')) {
							// if so, remove the element from the "Draggable Events" list
							$(this).remove();
						}
						
					}
					,
					selectable: true,
					selectHelper: true,
					select: function(start, end, allDay) {
						
						bootbox.prompt("New Event Title:", function(title) {
							if (title !== null) {
								calendar.fullCalendar('renderEvent',
									{
										title: title,
										start: start,
										end: end,
										allDay: allDay,
										className: 'label-info'
									},
									true // make the event "stick"
								);
							}
						});
						

						calendar.fullCalendar('unselect');
					}
					,
					eventClick: function(calEvent, jsEvent, view) {

						//display a modal
						var modal = 
						'<div class="modal fade">\
						  <div class="modal-dialog">\
						   <div class="modal-content">\
							 <div class="modal-body">\
							   <button type="button" class="close" data-dismiss="modal" style="margin-top:-10px;">&times;</button>\
							   <form class="no-margin">\
								  <label>Change event name &nbsp;</label>\
								  <input class="middle" autocomplete="off" type="text" value="' + calEvent.title + '" />\
								 <button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Save</button>\
							   </form>\
							 </div>\
							 <div class="modal-footer">\
								<button type="button" class="btn btn-sm btn-danger" data-action="delete"><i class="ace-icon fa fa-trash-o"></i> Delete Event</button>\
								<button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
							 </div>\
						  </div>\
						 </div>\
						</div>';
					
					
						var modal = $(modal).appendTo('body');
						modal.find('form').on('submit', function(ev){
							ev.preventDefault();

							calEvent.title = $(this).find("input[type=text]").val();
							calendar.fullCalendar('updateEvent', calEvent);
							modal.modal("hide");
						});
						modal.find('button[data-action=delete]').on('click', function() {
							calendar.fullCalendar('removeEvents' , function(ev){
								return (ev._id == calEvent._id);
							})
							modal.modal("hide");
						});
						
						modal.modal('show').on('hidden', function(){
							modal.remove();
						});


						//console.log(calEvent.id);
						//console.log(jsEvent);
						//console.log(view);

						// change the border color just for fun
						//$(this).css('border-color', 'red');

					}
				});
			})
		</script>
</body>
</html>