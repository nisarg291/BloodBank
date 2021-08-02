<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	<script type="text/javascript" >

function fn1()
{
	 document.getElementById("area").options.length=0;
	
		var htp=new XMLHttpRequest();
		htp.onreadystatechange=function(){
			
			if(htp.readyState==4){
				
				var jsn=JSON.parse(htp.responseText);// it convert code into javascript
				console.log('function iscall');
        		opt=document.createElement("option");
        		opt.value='0';
				opt.text='Select Area';
				document.getElementById("area").options.add(opt);
				for(var i=0;i<jsn.length-1;i++)
				{	
						console.log('function iscall');
		        		opt=document.createElement("option");
		        		opt.value=jsn[i].aid;
						opt.text=jsn[i].areaName;
						document.getElementById("area").options.add(opt);
		        		
				}	
			}
		}
	htp.open("get","/verifyArea?cid="+document.getElementById("city").value,true);
	htp.send();
}

</script>
</head>

<body>

			<!--main contents start-->
			<main class="container">
				<!--page title start-->
				<div class="page-heading">
					<div class="container">
						<div class="row d-flex align-items-center">
							<div class="col-md-6">
								<div class="page-breadcrumb">
									<h1>Register Bloodbank</h1>
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
											Register Bloodbank
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
										Register Bloodbank
									</div>
								</div>
								<div class="card-body">
									<f:form id="signupForm3" method="post" modelAttribute="bloodbankVO"
									class=" right-text-label-form" action="/insertBloodbank">
									
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="city">City
											Name</label>
										<div class="col-sm-5">
											<span class="select-wrapper"> 
												<f:select id="city" path="areaVO.cityVO.cid" class="form-control form-control-square" name="city" onchange="fn1()">
													<f:option value="0" id="0">Select City</f:option>
													<c:forEach items="${cityList}" var="i">
														<f:option value="${i.cid}" id="${i.cid}">${i.cityName}</f:option>
													</c:forEach>
												</f:select>
												</span>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="area">Area
											name</label>
										<div class="col-sm-5">
											<span class="select-wrapper"> 
												<f:select path="areaVO.aid" class="form-control form-control-square"
												id="area">
												<f:option value="0" id="0">Select Area</f:option>
												</f:select>
												</span>
										</div>
									</div>




									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbankName">BloodBank
											name</label>
										<div class="col-sm-5">
											<f:input type="text" class="form-control"
												path="bloodbankName" placeholder="BloodBank Name" onkeypress="return event.charCode>=65 && event.charCode<=90 || event.charCode>=97 && event.charCode<=122 || event.CharCode=32 || event.charCode=44 || event.charCode=46 || event.charCode=39"/>
											<span id="bloodbankName_error_msg" style="font-size:12px;width:100px;color:red"></span>		
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbankBranchName">BloodBank
											BranchName</label>
										<div class="col-sm-5">
											<f:input type="text" class="form-control"
												path="bloodbankBranchName" placeholder="BloodBank BranchName" onkeypress="return event.charCode>=65 && event.charCode<=90 || event.charCode>=97 && event.charCode<=122 || event.CharCode=32 || event.charCode=44 || event.charCode=46 || event.charCode=39"/>
											<span id="bloodbankBranchName_error_msg" style="font-size:12px;width:100px;color:red"></span>		
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbankAddress">BloodBank
											Address</label>
										<div class="col-sm-5">
											<f:input type="text" class="form-control"
												path="bloodbankAddress" placeholder="BloodBank BranchName" onkeypress="return event.charCode>=65 && event.charCode<=90 || event.charCode>=97 && event.charCode<=122 || event.CharCode=32 || event.charCode=44 || event.charCode=46 || event.charCode=39" />
											<span id="bloodbankAddress_error_msg" style="font-size:12px;width:100px;color:red"></span>		
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbankEmail">BloodBank
											Email</label>
										<div class="col-sm-5">
											<f:input type="text" class="form-control"
												path="bloodbankEmail" placeholder="BloodBank BranchName"/>
											<span id="bloodbankEmail_error_msg" style="font-size:12px;width:100px;color:red"></span>		
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbankPhoneNo">BloodBank PhoneNo</label>
										<div class="col-sm-5">
											<f:input type="text" class="form-control" path="bloodbankPhoneNo" placeholder="Pin code" onkeypress="return event.charCode>=48 && event.charCode<=57"/>
											
												<span id="bloodbankPhoneNo_error_msg" style="font-size:12px;width:100px;color:red"></span>		
												
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbankUserName">BloodBank UserName</label>
										<div class="col-sm-5">
											<f:input type="text" class="form-control" path="bloodbankUserName" placeholder="UserName"/>
											
												<span id="bloodbankUserName_error_msg" style="font-size:12px;width:100px;color:red"></span>		
												
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label" for="bloodbankPassword">BloodBank Password</label>
										<div class="col-sm-5">
											<f:input type="password" class="form-control" path="bloodbankPassword" placeholder="Password"/>
											
												<span id="bloodbankPassword_error_msg" style="font-size:12px;width:100px;color:red"></span>		
												
										</div>
									</div>
									<div class="form-group row">
										<div class="col-sm-8 ml-auto">
											<input type="submit" class="btn btn-primary" name="register"
												value="Register">
										</div>
									</div>
								</f:form>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</main>
			<!--main contents end-->
		<!-- Content_right_End -->
		<!-- Footer -->
		<!-- Footer_End -->
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
    