<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Intellir - Responsive Bootstrap 4 Admin Dashboard</title>
	<link rel="shortcut icon" type="image/x-icon" href="adminResources/image/favicon.ico">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<link href="adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/ionicons.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/simple-line-icons.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/jquery.mCustomScrollbar.css" rel="stylesheet">
	<link href="adminResources/css/weather-icons.min.css" rel="stylesheet">
	<!--Morris Chart -->
	<link rel="stylesheet" href="adminResources/css/morris.css">

	<link href="adminResources/css/style.css" rel="stylesheet">
	<link href="adminResources/css/responsive.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="header.jsp"></jsp:include>
		
		<!-- header_End -->
		<!-- Content_right -->
		<div class="container_full">

				<jsp:include page="menu.jsp"></jsp:include>



			<div class="content_wrapper">
				<div class="container-fluid">
					<!-- breadcrumb -->
					<div class="page-heading">
						<div class="row d-flex align-items-center">
							<div class="col-md-6">
								<div class="page-breadcrumb">
									<h1>Dashboard</h1>
								</div>
							</div>
							<div class="col-md-6 justify-content-md-end d-md-flex">
								<div class="breadcrumb_nav">
									<ol class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a class="parent-item" href="index.html">Home</a>
											<i class="fa fa-angle-right"></i>
										</li>
										<li class="active">
											Dashboard
										</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
					<!-- breadcrumb_End -->

					<!-- Section -->
					<section class="chart_section">

						<div class="row">
							<div class="col-xl-3 col-md-6">
								<div class="info_items bg_green d-flex align-items-center">
									<span class="info_items_icon">
										<i class="ion-android-people"></i>
									</span>
									<div class="info_item_content">
										<span class="info_items_text">New users</span>
										<span class="info_items_number">450</span>
										<div class="progress">
											<div class="progress-bar" style="width: 45%"></div>
										</div>
										<span class="progress-description"> 45% Increase in 28 Days </span>
									</div>
								</div>
							</div>
							<!-- /info-box-content -->
							<div class="col-xl-3 col-md-6">
								<div class="info_items bg_yellow d-flex align-items-center">
									<span class="info_items_icon">
										<i class="ion-ios-person"></i>
									</span>
									<div class="info_item_content">
										<span class="info_items_text">Avg Time</span>
										<span class="info_items_number">155</span>
										<div class="progress">
											<div class="progress-bar" style="width: 40%"></div>
										</div>
										<span class="progress-description"> 40% Increase in 28 Days </span>
									</div>
								</div>
							</div>
							<!-- /info-box-content -->
							<div class="col-xl-3 col-md-6">
								<div class="info_items bg_blue d-flex align-items-center">
									<span class="info_items_icon">
										<i class="ion-ios-book"></i>
									</span>
									<div class="info_item_content">
										<span class="info_items_text">Total Prodcut</span>
										<span class="info_items_number">52</span>
										<div class="progress">
											<div class="progress-bar" style="width: 85%"></div>
										</div>
										<span class="progress-description"> 85% Increase in 28 Days </span>
									</div>
								</div>
							</div>
							<!-- /info-box-content -->
							<div class="col-xl-3 col-md-6">
								<div class="bg_pink info_items d-flex align-items-center">
									<span class="info_items_icon">
										<i class="ion-social-usd"></i>
									</span>
									<div class="info_item_content">
										<span class="info_items_text">Sales</span>
										<span class="info_items_number">13,921</span>
										<span>$</span>
										<div class="progress">
											<div class="progress-bar" style="width: 50%"></div>
										</div>
										<span class="progress-description"> 50% Increase in 28 Days </span>
									</div>
									<!-- /.info-box-content -->
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-lg-6">
								<div class="card card-shadow mb-4">
									<div class="card-header">
										<div class="card-title">
											Area Chart
										</div>
									</div>
									<div class="card-body">
										<div id="area-chart" style="height: 338px;"></div>
									</div>
								</div>
							</div>

							<div class="col-lg-6">
								<div class="card card-shadow mb-4">
									<div class="card-header">
										<div class="card-title">
											Activity Log
										</div>
									</div>
									<div class="card-body">
										<div class="baseline baseline-border">
											<div class="baseline-list">
												<div class="baseline-info">
													<div>
														<a href="#" class="default-color">
															<strong>John Tasi</strong>
														</a> Prepare for the Meeting
														<span class="badge badge-pill badge-success">status</span>
													</div>
													<span class="text-muted">10:00 PM Sat, 10 Jan 2018</span>
												</div>
											</div>
											<div class="baseline-list baseline-border baseline-primary">
												<div class="baseline-info">
													<div>Video conference to client</div>
													<span class="text-muted">05:00 PM Sun, 02 Feb 2018</span>
												</div>
											</div>
											<div class="baseline-list  baseline-border baseline-success">
												<div class="baseline-info">
													<div>
														<a href="#" class="default-color">
															<strong>Tnisha</strong>
														</a> Submit a blog post
														<a href="#" class="">best admin template in 2018.</a>
													</div>
													<span class="text-muted">10:00 PM Sat, 10 Jan 2018</span>
												</div>
											</div>
											<div class="baseline-list  baseline-border baseline-warning">
												<div class="baseline-info">
													<div>
														<a href="#" class="default-color">
															<strong>New Request</strong>
														</a> 10 user request to approve or remove</div>
													<span class="text-muted">10:00 PM Sat, 10 Jan 2018</span>
												</div>
											</div>
											<div class="baseline-list  baseline-border baseline-info">
												<div class="baseline-info">
													<div>
														<a href="#" class="default-color">
															<strong>Mark Henry</strong>
														</a> added your friend list now</div>
													<span class="text-muted">10:00 PM Sat, 10 Jan 2018</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-4 d-flex align-items-stretch">
								<div class="stats-wrap full_chart card mb-4">
									<div class="chart_header">
										<div class="chart_headibg">
											<h3>Sales</h3>
										</div>

									</div>
									<div class="card_chart">
										<div class="stats-wrap">
											<h2>
												<b>65,800</b>
												<span>+
													<b>20</b>%</span>
											</h2>
											<p class="text-grey">
												Total Sale
												<small>This Year</small>
											</p>
											<h4>
												<b>1,204</b>
												<span>+
													<b>5</b>%</span>
											</h4>
											<p>
												Sale
												<small>This week</small>
											</p>
											<h4>
												<b>2,690</b>
												<span>+
													<b>125</b>
												</span>
											</h4>
											<p>
												New Sales
												<small>This Month</small>
											</p>
											<h4>
												<b>2,690</b>
												<span>+
													<b>125</b>
												</span>
											</h4>
											<p>
												New Sale
												<small>This Month</small>
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 d-flex align-items-stretch">
								<div class="stats-wrap full_chart card mb-4">
									<div class="chart_header">
										<div class="chart_headibg">
											<h3>Activity</h3>
										</div>

									</div>
									<div class="card_chart">
										<div class="events-nest">
											<div class="drak_blue">
												<h1>25</h1>
												<div class="middle_text">
													<span>3 Event</span>
													<p>
														Monday
														<i class="fontello-record"></i> february 2019
													</p>
												</div>
											</div>
											<ul>
												<li>
													<h4>
														<span class="counter-up-fast">8</span>:00
														<small>PM</small>
													</h4>
													<p>
														Mathematic Lesson
														<i class="ion-ios-copy-outline"></i>
														<i class="ion-ios-heart-outline"></i>
													</p>
												</li>
												<li>
													<h4>
														<span class="counter-up-fast">9</span>:
														<span class="counter-up-fast">30</span>
														<small>PM</small>
													</h4>
													<p>
														Meeting With Josh
														<i class="ion-ios-copy-outline"></i>
														<i class="ion-ios-heart-outline"></i>
													</p>
												</li>
												<li>
													<h4>
														<span class="counter-up-fast">12</span>:
														<span class="counter-up-fast">15</span>
														<small>PM</small>
													</h4>
													<p>
														Launch time
														<i class="ion-ios-copy-outline"></i>
														<i class="ion-ios-heart-outline"></i>
													</p>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 d-flex align-items-stretch">
								<div class="stats-wrap full_chart card mb-4">
									<div class="chart_header">
										<div class="chart_headibg">
											<h3>Referrals</h3>
										</div>

									</div>
									<div class="card_chart">
										<ul class="list-unstyled list-referrals">
											<li class="mb-4">
												<p><span class="value">2301</span><span class="text-muted float-right">visits from Facebook</span></p>
												<div class="progress">
													<div class="progress-bar bg-warning" role="progressbar" style="width: 25%;" aria-valuenow="25"
													 aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</li>

											<li class="mb-4">
												<p><span class="value">1357</span><span class="text-muted float-right">visits from Twitter</span></p>
												<div class="progress">
													<div class="progress-bar badge-info" role="progressbar" style="width: 25%;" aria-valuenow="25"
													 aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</li>

											<li class="mb-4">
												<p><span class="value">2765</span><span class="text-muted float-right">visits from Search</span></p>
												<div class="progress">
													<div class="progress-bar bg-primary" role="progressbar" style="width: 25%;" aria-valuenow="25"
													 aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</li>

											<li class="mb-4">
												<p><span class="value">3121</span><span class="text-muted float-right">visits from Linkedin</span></p>
												<div class="progress">
													<div class="progress-bar badge-danger" role="progressbar" style="width: 25%;" aria-valuenow="25"
													 aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-8">
								<div class="full_chart card mb-4">
									<div class="chart_header">
										<div class="chart_headibg">
											<h3>Social Campaigns</h3>
										</div>

									</div>
									<div class="card_chart">
										<div class="student_table table-responsive-lg">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>Campaign</th>
														<th>Client</th>
														<th>Changes</th>
														<th>Budget</th>
														<th>Status</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<span class="txt-light weight-500">Facebook</span>
														</td>
														<td>Beavis</td>
														<td>
															<span class="txt-success">
																<i class="fa fa-sort-up mr-10 "></i>
																<span>2.43%</span>
															</span>
														</td>
														<td>
															<span class="txt-light weight-500">$1478</span>
														</td>
														<td>
															<span class="label label-warning">Active</span>
														</td>
													</tr>
													<tr>
														<td>
															<span class="txt-light weight-500">Youtube</span>
														</td>
														<td>Felix</td>
														<td>
															<span class="txt-success">
																<i class="fa fa-sort-up mr-10 "></i>
																<span>1.43%</span>
															</span>
														</td>
														<td>
															<span class="txt-light weight-500">$951</span>
														</td>
														<td>
															<span class="label label-danger">Closed</span>
														</td>
													</tr>
													<tr>
														<td>
															<span class="txt-light weight-500">Twitter</span>
														</td>
														<td>Cannibus</td>
														<td>
															<span class="txt-danger">
																<i class="fa fa-sort-down mr-10 "></i>
																<span>-8.43%</span>
															</span>
														</td>
														<td>
															<span class="txt-light weight-500">$632</span>
														</td>
														<td>
															<span class="label label-default">Hold</span>
														</td>
													</tr>
													<tr>
														<td>
															<span class="txt-light weight-500">Spotify</span>
														</td>
														<td>Neosoft</td>
														<td>
															<span class="txt-success">
																<i class="fa fa-sort-up mr-10 "></i>
																<span>7.43%</span>
															</span>
														</td>
														<td>
															<span class=" weight-500">$325</span>
														</td>
														<td>
															<span class="label label-default">Hold</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4">
								<div class="full_chart card mb-4">
									<div class="chart_header">
										<div class="chart_headibg">
											<h3>Resent Chat</h3>
										</div>

									</div>
									<div class="card_chart">
										<div class="chat_box scroll_auto">
											<div class="left_align_me">
												<img src="adminResources/image/img1.jpg" alt="" class="rounded-circle" />
												<div class="chat-info">
													<span class="message">Hello, John<br>What is the update on Project?</span>
												</div>
											</div>

											<div class="right_align_me">
												<img src="adminResources/image/img2.jpg" alt="" class="rounded-circle" />
												<div class="chat-info">
													<span class="message">Hello, John<br>What is the update on Project?</span>
												</div>
											</div>

											<div class="left_align_me">
												<img src="adminResources/image/img1.jpg" alt="" class="rounded-circle" />
												<div class="chat-info">
													<span class="message">Hello, John<br>What is the update on Project?</span>
												</div>
											</div>

											<div class="right_align_me">
												<img src="adminResources/image/img2.jpg" alt="" class="rounded-circle" />
												<div class="chat-info">
													<span class="message">Hello, John<br>What is the update on Project?</span>
												</div>
											</div>

										</div>

										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text"><i class="icon-paper-plane"></i></span>
											</div>
											<input type="text" class="form-control" placeholder="Enter text here...">
										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="card card-inverse card-danger mb-4">
									<div class="card-body pb-0">
										<div class="btn-group float-right">
											<div class="dropdown ">
												<a href="#" class="btn btn-transparent text-light dropdown-hover p-0" data-toggle="dropdown" aria-haspopup="true"
												 aria-expanded="false">
													<i class=" icon-options"></i>
												</a>
												<div class="dropdown-menu dropdown-menu-right ">
													<a class="dropdown-item" href="#">
														<i class="icon-note text-info pr-2"></i> Edit</a>
													<a class="dropdown-item" href="#">
														<i class="icon-close text-danger pr-2"></i> Delete</a>
													<a class="dropdown-item" href="#">
														<i class="icon-shield text-warning pr-2"></i> Cancel</a>
												</div>
											</div>
										</div>
										<h4 class="mb-0 text-light">9876</h4>
										<p class="text-light"> Total Profit</p>
									</div>
									<div class="px-">
										<canvas id="myChart2-alt" height="100"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card card-inverse card-success mb-4">
									<div class="card-body pb-0">
										<div class="btn-group float-right">
											<div class="dropdown ">
												<a href="#" class="btn btn-transparent text-light dropdown-hover p-0" data-toggle="dropdown" aria-haspopup="true"
												 aria-expanded="false">
													<i class=" icon-options"></i>
												</a>
												<div class="dropdown-menu dropdown-menu-right ">
													<a class="dropdown-item" href="#">
														<i class="icon-note text-info pr-2"></i> Edit</a>
													<a class="dropdown-item" href="#">
														<i class="icon-close text-danger pr-2"></i> Delete</a>
													<a class="dropdown-item" href="#">
														<i class="icon-shield text-warning pr-2"></i> Cancel</a>
												</div>
											</div>
										</div>
										<h4 class="mb-0 text-light">234</h4>
										<p class="text-light">New Orders</p>
									</div>
									<div class="px-">
										<canvas id="myChart2" height="100"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card card-inverse card-warning mb-4">
									<div class="card-body pb-0">
										<div class="btn-group float-right">
											<div class="dropdown ">
												<a href="#" class="btn btn-transparent text-light dropdown-hover p-0" data-toggle="dropdown" aria-haspopup="true"
												 aria-expanded="false">
													<i class=" icon-options"></i>
												</a>
												<div class="dropdown-menu dropdown-menu-right ">
													<a class="dropdown-item" href="#">
														<i class="icon-note text-info pr-2"></i> Edit</a>
													<a class="dropdown-item" href="#">
														<i class="icon-close text-danger pr-2"></i> Delete</a>
													<a class="dropdown-item" href="#">
														<i class="icon-shield text-warning pr-2"></i> Cancel</a>
												</div>
											</div>
										</div>
										<h4 class="mb-0 text-light">12083</h4>
										<p class="text-light">Yearly Revineue</p>
									</div>
									<div class="px-4">
										<canvas id="myChart3" height="100"></canvas>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card card-inverse card-primary mb-4">
									<div class="card-body pb-0 ">
										<div class="btn-group float-right">
											<div class="dropdown ">
												<a href="#" class="btn btn-transparent text-light dropdown-hover p-0" data-toggle="dropdown" aria-haspopup="true"
												 aria-expanded="false">
													<i class=" icon-options"></i>
												</a>
												<div class="dropdown-menu dropdown-menu-right ">
													<a class="dropdown-item" href="#">
														<i class="icon-note text-info pr-2"></i> Edit</a>
													<a class="dropdown-item" href="#">
														<i class="icon-close text-danger pr-2"></i> Delete</a>
													<a class="dropdown-item" href="#">
														<i class="icon-shield text-warning pr-2"></i> Cancel</a>
												</div>
											</div>
										</div>
										<h4 class="mb-0 text-light">12083</h4>
										<p class="text-light">New Users</p>
									</div>
									<div class="">
										<canvas id="myChart" height="100"></canvas>
									</div>
								</div>
							</div>
						</div>
						<!--graph widget end-->

					</section>
					<!-- Section_End -->

				</div>
			</div>
		</div>
		<!-- Content_right_End -->
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- Footer_End -->
	</div>
	<script type="text/javascript" src="adminResources/js/jquery.min.js"></script>
	<script type="text/javascript" src="adminResources/js/popper.min.js"></script>
	<script type="text/javascript" src="adminResources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>

	<!--Morris Chart-->
	<script src="adminResources/js/morris.js"></script>
	<script src="adminResources/js/raphael-min.js"></script>
	<!--morris chart initialization-->
	<script src="adminResources/js/morris-init.js"></script>
	<!--chartjs Total Profit,New Orders,Yearly Revineue,New Users-->
	<script src="adminResources/js/Chart.min.js"></script>
	<script src="adminResources/js/chartjs-init.js"></script>

	<script type="text/javascript" src="adminResources/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="adminResources/js/custom.js" type="text/javascript"></script>

</body>

</html>