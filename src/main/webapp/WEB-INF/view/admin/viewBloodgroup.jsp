<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>View Bloodgroup</title>
<link rel="shortcut icon" type="image/x-icon"
	href="adminResources/image/favicon.ico">
<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet" type="text/css" />
<link href="adminResources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/ionicons.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/simple-line-icons.css" rel="stylesheet"
	type="text/css">
<link href="adminResources/css/jquery.mCustomScrollbar.css"
	rel="stylesheet">

<!--bs4 data table-->
<link href="adminResources/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
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

			<!--main contents start-->
			<main class="content_wrapper"> <!--page title start-->
			<div class="page-heading">
				<div class="container-fluid">
					<div class="row d-flex align-items-center">
						<div class="col-md-6"></div>
						<div class="col-md-6 justify-content-md-end d-flex">
							<div class="breadcrumb_nav">
								<ol class="breadcrumb">
									<li><i class="fa fa-home"></i> <a class="parent-item"
										href="index.html">Home</a> <i class="fa fa-angle-right"></i></li>
									<li class="active">Manage Bloodgroup <i
										class="fa fa-angle-right"></i>
									</li>
									<li class="active">View Bloodgroup</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--page title end-->
			<div class="container-fluid">
				<!-- state start-->
				<div class="row">
					<div class=" col-sm-12">
						<div class="card card-shadow mb-4">
							<div class="card-header">
								<div class="card-title">View Bloodgroup Details</div>
							</div>
							<div class="card-body">
								<table id="bs4-table" class="table table-bordered table-striped"
									cellspacing="0" width="100%">
									<thead>
										<tr>

											<th>bloodbank name</th>
											<th>A+</th>
											<th>A-</th>
											<th>B+</th>
											<th>B-</th>
											<th>AB+</th>
											<th>AB-</th>
											<th>O+</th>
											<th>O-</th>
											<th>total stock</th>
											<th>required stock</th>
											<th>Action</th>
										</tr>
									</thead>

									<tbody>
										<tr>

											<td>redCross</td>
											<td>2</td>
											<td>2</td>
											<td>2</td>
											<td>2</td>
											<td>2</td>
											<td>2</td>
											<td>2</td>
											<td>2</td>
											<td>60</td>
											<td>20</td>
											<td><a href=""><i class="fa fa-edit"
													style="font-size: 20px;"></i></a> <a href=""><i
													class="fa fa-trash"
													style="font-size: 20px; color: red; margin-left: 20px;"></i></a>
											</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- state end-->
			</div>

			</main>
			<!--main contents end-->
		</div>

		<!-- Content_right_End -->
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- Footer_End -->
	</div>
	<script type="text/javascript" src="adminResources/js/jquery.min.js"></script>
	<script type="text/javascript" src="adminResources/js/popper.min.js"></script>
	<script type="text/javascript" src="adminResources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!--datatables-->
	<script src="adminResources/js/jquery.dataTables.min.js"></script>
	<script src="adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script type="text/javascript"
		src="adminResources/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="adminResources/js/custom.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('#bs4-table').DataTable();
		});
	</script>
</body>

</html>