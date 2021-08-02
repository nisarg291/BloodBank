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
    <title>Login</title>
    <link rel="shortcut icon" type="image/x-icon" href="adminResources/image/favicon.ico">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
    <link href="adminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="adminResources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="adminResources/css/ionicons.css" rel="stylesheet" type="text/css">
    <link href="adminResources/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="adminResources/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="adminResources/css/style.css" rel="stylesheet">
    <link href="adminResources/css/responsive.css" rel="stylesheet">
</head>

<body class="bg_darck">
    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="logo">
                    <a href="#">
                        <strong class="logo_icon">
                            <img alt="" src="adminResources/image/small-logo.png" alt="">
                        </strong>
                        <span class="logo-default">
                            <img alt="" src="adminResources/image/logo.png" alt="">
                        </span>
                    </a>
                    
                </div>
                <div class="login-form">
                <h1>User Login</h1>
                    <f:form id="signupForm4" method="post" modelAttribute="userVO"
									class=" right-text-label-form" action="/verifyUser">
                        <div class="form-group">
                            <label>UserName</label>
                            <f:input type="text" path="userUserName" class="form-control" placeholder="User Name"/>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <f:input type="password" path="userPassword" class="form-control" placeholder="Password"/>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember Me
                            </label>
                            <label class="pull-right">
                                <a href="#">Forgotten Password?</a>
                            </label>
                        </div>
                        <input type="submit" value="sign in" class="btn btn-success btn-flat m-b-30 m-t-30">
                        <div class="social-login-content">
                            <div class="social-button">
                                <button type="button" class="btn social facebook btn-flat btn-addon mb-3">
                                    <i class="fa fa-facebook"></i>Sign in with facebook</button>
                                <button type="button" class="btn social twitter btn-flat btn-addon mt-2">
                                    <i class="fa fa-twitter"></i>Sign in with twitter</button>
                            </div>
                        </div>
                        <div class="register-link m-t-15 text-center">
                            <p>Don't have account ?
                                <a href="/userRegister"> Sign Up Here</a>
                            </p>
                        </div>
                    </f:form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="adminResources/js/jquery.min.js"></script>
    <script type="text/javascript" src="adminResources/js/popper.min.js"></script>
    <script type="text/javascript" src="adminResources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="adminResources/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="adminResources/js/custom.js" type="text/javascript"></script>
</body>

</html>