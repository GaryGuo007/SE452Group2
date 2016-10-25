<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>


    <link rel="stylesheet" href="CSS/bootstrap.min.css" >
    <link href="CSS/rentAll.css" rel="stylesheet"> 
    
    <!--  
    <!-- Custom CSS 
    <link rel="stylesheet" href="resources/rentAll.css"/>
    <link rel="stylesheet" href="resources/bootstrap.min.css" />-->
   
	<!-- Custom Font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Bungee" rel="stylesheet">
	 <!-- jQuery -->
    <script src="javascript/jquery.js"></script>
	<script src="javascript/customJS.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="javascript/bootstrap.min.js"></script>
	<script src="javascript/headerLoad.js"></script>

</head>

<body style = "font-family: 'Montserrat', sans-serif">
	
<!-- Navigation -->
	<div id="header"></div>
	




    <!-- Page Content -->
    <div class="container content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:50px">
                    <div class="panel-heading custom_panel">
                        <h2><i class="fa fa-fw fa-compass"></i>Login</h2>
                    </div>
                    <div class="panel-body" style="padding:35px;">
						<br>
                        <div class="login-container">
                <div class="login-card">
                    <div class="login-form">
                        <form:form modelAttribute="Login" action="performLogin" method="post" class="form-horizontal">
							<br>
                            <div class="input-group input-sm">
                                <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
                                <form:input path="email" type="text" class="form-control" id="emailAddress" name="ssoId" placeholder="Enter Email Address" ></form:input>
                            </div>
							<br>
                            <div class="input-group input-sm">
                                <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
                                <form:input path="password" type="password" class="form-control" id="password"  name="password" placeholder="Enter Password" ></form:input>
                            </div>
                            <br>
                                 
                            <div class="form-actions">
                                <input type="submit"
                                    class="btn btn-default custom_btn" value="Log in">
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
			
						
						<br>

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


</body>

</html>
