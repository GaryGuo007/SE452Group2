<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css" >
    <link href="CSS/rentAll.css" rel="stylesheet"> 
    
    <!--  
    <!-- Custom CSS 
    <link rel="stylesheet" href="resources/rentAll.css"/>
    <link rel="stylesheet" href="resources/bootstrap.min.css" />-->
   
	<!-- Custom Font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Bungee" rel="stylesheet">
	<style type="text/css">
		body {
	
		}
</style>
</head>
<body style = "font-family: 'Montserrat', sans-serif">

    <!-- Navigation -->
    <nav class="navbar navbar-fixed-top header_nav" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" id="header_title" href="/Se452Group2/">Rent ALL<small class="tagline"> &nbsp&nbsp&nbsp&nbsp Find your handyman! </small></a>
            </div>
			<div></div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right custom_nav">
                    <li>
                        <a href="about.html">About</a>
                    </li>
                    <li>
                        <a href="search.html">Search</a>
                    </li>
                   
                    <li class="dropdown custom_dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Register<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="contractorRegistration.html">Contractor</a>
                            </li>
                            <li>
                                <a href="customerRegistration.html">Customer</a>
                            </li>
                        </ul>
                    </li>
					 <li>
                        <a href="login.html">Login</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <!-- Page Content -->
    <div class="container content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:50px">
                    <div class="panel-heading custom_panel">
                        <h2><i class="fa fa-fw fa-compass"></i>Search</h2>
                    </div>
                    <div class="panel-body" style="padding:35px;">
						<br>
                        
			
						
						<br>
						

                        <a href="index.html" class="btn btn-default custom_btn">Search</a>
                    </div>
                </div>
			</div>
		</div>

	</div>

        <!-- Footer -->

        <footer class="footer">
			<div class="container">
				<p style="margin:15px; color:#ccc">Copyright &copy; 2016</p>
			<div>
		</footer>

   
    <!-- /.container -->
<!-- jQuery -->
    <script src="javascript/jquery.js"></script>
	<script src="javascript/customJS.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="javascript/bootstrap.min.js"></script>
</body>
</html>