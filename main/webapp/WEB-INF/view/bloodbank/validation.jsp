<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Form jQuery Validation</title>
	<link rel="shortcut icon" type="image/x-icon" href="adminResources/image/favicon.ico">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
	<link href="adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/ionicons.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/simple-line-icons.css" rel="stylesheet" type="text/css">
	<link href="adminResources/css/jquery.mCustomScrollbar.css" rel="stylesheet">
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
			<main class="content_wrapper">
				<!--page title start-->
				<div class="page-heading">
					<div class="container-fluid">
						<div class="row d-flex align-items-center">
							<div class="col-md-6">
								<div class="page-breadcrumb">
									<h1>Form jQuery Validation</h1>
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
											Form jQuery Validation
										</li>
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
									<div class="card-title">
										Basic Validation
									</div>
								</div>
								<div class="card-body">
									<form id="signupForm" method="post" class=" right-text-label-form" action="#">
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="firstname">firstname</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="firstname" name="firstname" placeholder="firstname" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="lastname">Last name</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last name" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="username">Username</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="username" name="username" placeholder="Username" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="email">Email</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="email" name="email" placeholder="Email" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="password">Password</label>
											<div class="col-sm-5">
												<input type="password" class="form-control" id="password" name="password" placeholder="Password" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="confirm_password">Confirm password</label>
											<div class="col-sm-5">
												<input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm password"
												/>
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-8 ml-auto">
												<div class="checkbox">
													<label>
														<input type="checkbox" id="agree" name="agree" value="agree" /> Please agree to our policy </label>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-8 ml-auto">
												<button type="submit" class="btn btn-primary" name="signup" value="Sign up">
													Sign up
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class=" col-md-12">
							<div class="card card-shadow mb-4">
								<div class="card-header">
									<div class="card-title">
										Using feedback icons
									</div>
								</div>
								<div class="card-body">
									<form id="signupForm1" method="post" class=" right-text-label-form feedback-icon-form" action="#">
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="firstname1">First name</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="firstname1" name="firstname1" placeholder="First name" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="lastname1">Last name</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="lastname1" name="lastname1" placeholder="Last name" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="username1">Username</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="username1" name="username1" placeholder="Username" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="email1">Email</label>
											<div class="col-sm-5">
												<input type="text" class="form-control" id="email1" name="email1" placeholder="Email" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="password1">Password</label>
											<div class="col-sm-5">
												<input type="password" class="form-control" id="password1" name="password1" placeholder="Password" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label" for="confirm_password1">Confirm password</label>
											<div class="col-sm-5">
												<input type="password" class="form-control" id="confirm_password1" name="confirm_password1" placeholder="Confirm password"
												/>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label"> </label>
											<div class="col-sm-5 ">
												<div class="checkbox">
													<label>
														<input type="checkbox" id="agree1" name="agree1" value="agree" /> Please agree to our policy </label>
												</div>
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-8 ml-auto">
												<button type="submit" class="btn btn-info" name="signup1" value="Sign up">
													Sign up
												</button>
											</div>
										</div>
									</form>
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
	<script type="text/javascript" src="adminResources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="adminResources/js/jquery.validate.js"></script>
	<script src="adminResources/js/jquery-validate-init.js"></script>
	<script type="text/javascript" src="adminResources/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="adminResources/js/custom.js" type="text/javascript"></script>
</body>

</html>
    