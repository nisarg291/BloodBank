<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Form jQuery Validation</title>
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
<!--form semantic style-->
<link rel="stylesheet" href="adminResources/css/semantic.min.css" />
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
						<div class="col-md-6">
							<div class="page-breadcrumb">
								<h1>manageBloodgroup</h1>
							</div>
						</div>
						<div class="col-md-6 justify-content-md-end d-md-flex">
							<div class="breadcrumb_nav">
								<ol class="breadcrumb">
									<li><i class="fa fa-home"></i> <a class="parent-item"
										href="index.html">Home</a> <i class="fa fa-angle-right"></i></li>
									<li class="active">Form manageBloodgroup</li>
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
					<div class=" col-md-12">
						<div class="card card-shadow mb-4">
							<div class="card-header">
								<div class="card-title">manageBloodgroup</div>
							</div>
							<div class="card-body">
								<form id="signupForm" method="post"
									class=" right-text-label-form" action="#">
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbank Id">bloodbank
											id</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="bloodbankId"
												name="bloodbankId" placeholder="bloodbank id" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbank name">bloodbank
											name</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="bloodbankname"
												name="bloodbankname" placeholder="bloodbank name" />
										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbank name">bloodgroup
											name</label>
										<div class="col-sm-5">
											<span class="select-wrapper"> 
												<select class="form-control form-control-square" id="exampleFormControlSelect10">
													<option value='A+'>A+</option>
													<option value='A-'>A-</option>
													<option value='B+'>B+</option>
													<option value='B-'>B-</option>
													<option value='AB+'>AB+</option>
													<option value='AB-'>AB-</option>
													<option value='O+'>O+</option>
													<option value='O-'>O-</option>
												</select>
											</span>
 										</div>
									</div>

									<div class="form-group row">
										<label class="col-sm-4 control-label" for="total stock">total
											stock</label>
										<div class="col-sm-5">
											<input type="text" class="form-control" id="total stock"
												name="total stock" placeholder="total stock" />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="required stock">required
											stock</label>
										<div class="col-sm-5">
											<input type="password" class="form-control"
												id="required stock" name="required stock"
												placeholder="required stock" />
										</div>
									</div>

									<div class="form-group row">
										<div class="col-sm-8 ml-auto">
											<button type="submit" class="btn btn-primary" name="submit"
												value="Submit">Submit</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

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
	<script type="text/javascript" src="adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="adminResources/js/jquery.validate.js"></script>
	<script src="adminResources/js/jquery-validate-init.js"></script>
	<script type="text/javascript" src="adminResources/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="adminResources/js/custom.js" type="text/javascript"></script>
</body>

</html>
