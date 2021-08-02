<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>
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
                    <form>
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember Me
                            </label>
                            <label class="pull-right">
                                <a href="#">Forgotten Password?</a>
                            </label>
                        </div>
                        <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
                        
                        <div class="register-link m-t-15 text-center">
                            <p>Don't have account ?
                                <a href="#"> Sign Up Here</a>
                            </p>
                        </div>
                    </form>
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