<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

    <title>Rent ALL</title>


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
                <a class="navbar-brand" id="header_title" href="/Se452Group2/">Rent ALL<small class="tagline"> &nbsp;&nbsp;&nbsp;&nbsp; Find your Handyman! </small></a>
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
                   <li>
                    Hello There
                    <c:out value="${session.getName()}"></c:out>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

   

    <!-- Page Content -->
			<div class="container content">
			 <!-- Header Carousel -->
    <div id="myCarousel" class="carousel slide custom_carousel">
 
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner">
		
            <div class="item active">
                <div class="fill img-responsive" style="background-image:url('images/handyman.jpg');"></div>
				
                <div class="carousel-caption">
                   <h1>General Contracting</h1>
                </div>
            </div>
            <div class="item">
                <div class="fill img-responsive" style="background-image:url('images/landscape_g.jpg');"></div>
                <div class="carousel-caption ">
				
                    <h1>Lawncare</h1>
                </div>
            </div>
            <div class="item">
                <div class="fill img-responsive" style="background-image:url('images/plumbing.jpeg');"></div>
                <div class="carousel-caption ">
                    <h1>Plumbing</h1>
                </div>
            </div>
        </div>


        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </div>
				
				
				
        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header get_started" style="text-align:center; margin-bottom:40px;">
                    Getting Started
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:0px">
                    <div class="panel-heading custom_panel">
                        <h4><i class="fa fa-fw fa-check"></i> Register as a Customer</h4>
                    </div>
                    <div class="panel-body">
                        <p>New customer? Start your search by registering here.</p>
                        <a href="#" class="btn btn-default custom_btn">Register</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 ">
                <div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:0px">
                    <div class="panel-heading custom_panel" >
                        <h4><i class="fa fa-fw fa-gift"></i> Search for a HandyMan</h4>
                    </div>
                    <div class="panel-body">
                        <p>If you are already a customer you can head to the search page and start looking for someone who meets your needs. If you are looking to register select the appropriate box on the left and right.</p>
                        <a href="#" class="btn btn-default custom_btn">Start Search</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:0px">
                    <div class="panel-heading custom_panel">
                        <h4><i class="fa fa-fw fa-compass"></i> Register as a Contractor</h4>
                    </div>
                    <div class="panel-body">
                        <p>New contractor or buisness? Sign up by registering here.</p>
                        <a href="#" class="btn btn-default custom_btn">Register</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
		<div class="push"></div>
	</div>

        <!-- Footer -->
        <footer class="footer">
			<div class="container">
				<p style="margin:15px; color:#ccc">Copyright &copy; 2016</p>
			</div>
		</footer>

   
    <!-- /.container -->

    <!-- jQuery -->
    <script src="javascript/jquery.js"></script>
	<script src="javascript/customJS.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="javascript/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>