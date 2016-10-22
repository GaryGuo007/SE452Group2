<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contractor Registration</title>
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
                <a class="navbar-brand" id="header_title" href="/Se452Group2/">Rent ALL<small class="tagline"> &nbsp;&nbsp;&nbsp;&nbsp; Find your handyman! </small></a>
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
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:50px">
                    <div class="panel-heading">
                        <h2><i class="fa fa-fw fa-compass"></i>Contractor Registration</h2>
                    </div>
                    <div class="panel-body" style="padding:35px;">
						<form:form role="form" action="addContractor.html" method="post" class="registration-form">
                        		
                        		<fieldset>
		             		          <div class="form-bottom">
				                    	<div class="form-group">
				                    		
				                        	<form:input path="firstName" type="text" name="firstName" placeholder="First name..." class="form-control"></form:input>
				                        	
				                        </div>
				                        <div class="form-group">
				                        	
				                        	<input type="text" name="lastName" placeholder="Last name..." class="form-control">
				                        </div>
										<div class="form-group">
				                     
				                        	<input type="text" name="address" placeholder="Address..." class="form-control">
				                        </div>
										<div class="form-group">
				                     
				                        	<input type="text" name="city" placeholder="City..." class="form-control">
				                        </div>
										<div class="form-group">
				                    		<select class="form-control" id="state" name="state" >
												<option value="AK">Alaska</option>
												<option value="AL">Alabama</option>
												<option value="AR">Arkansas</option>
												<option value="AZ">Arizona</option>
												<option value="CA">California</option>
												<option value="CO">Colorado</option>
												<option value="CT">Connecticut</option>
												<option value="DC">District of Columbia</option>
												<option value="DE">Delaware</option>
												<option value="FL">Florida</option>
												<option value="GA">Georgia</option>
												<option value="HI">Hawaii</option>
												<option value="IA">Iowa</option>
												<option value="ID">Idaho</option>
												<option value="IL">Illinois</option>
												<option value="IN">Indiana</option>
												<option value="KS">Kansas</option>
												<option value="KY">Kentucky</option>
												<option value="LA">Louisiana</option>
												<option value="MA">Massachusetts</option>
												<option value="MD">Maryland</option>
												<option value="ME">Maine</option>
												<option value="MI">Michigan</option>
												<option value="MN">Minnesota</option>
												<option value="MO">Missouri</option>
												<option value="MS">Mississippi</option>
												<option value="MT">Montana</option>
												<option value="NC">North Carolina</option>
												<option value="ND">North Dakota</option>
												<option value="NE">Nebraska</option>
												<option value="NH">New Hampshire</option>
												<option value="NJ">New Jersey</option>
												<option value="NM">New Mexico</option>
												<option value="NV">Nevada</option>
												<option value="NY">New York</option>
												<option value="OH">Ohio</option>
												<option value="OK">Oklahoma</option>
												<option value="OR">Oregon</option>
												<option value="PA">Pennsylvania</option>
												<option value="PR">Puerto Rico</option>
												<option value="RI">Rhode Island</option>
												<option value="SC">South Carolina</option>
												<option value="SD">South Dakota</option>
												<option value="TN">Tennessee</option>
												<option value="TX">Texas</option>
												<option value="UT">Utah</option>
												<option value="VA">Virginia</option>
												<option value="VT">Vermont</option>
												<option value="WA">Washington</option>
												<option value="WI">Wisconsin</option>
												<option value="WV">West Virginia</option>
												<option value="WY">Wyoming</option>
											</select>
				                        </div>
										<div class="form-group">
				                     
				                        	<input type="text" name="zip" placeholder="Zipcode..." class="form-control">
				                        </div>					
										<div class="form-group">
				                     
				                        	<form:input type="text" path="cost" name="cost" placeholder="Cost per Hour..." class="form-control"></form:input>
				                        </div>											
										<div class="form-group">
				                     
				                        	<input type="text" name="email" placeholder="Email..." class="form-control">
				                        </div>	
										<div class="form-group">
				                     
				                        	<input type="password" name="password" placeholder="Password..." class="form-control">
				                        </div>	
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-about-yourself">About yourself</label>
				                        	<textarea name="skill" placeholder="About yourself..." 
				                        				class="form-about-yourself form-control" id="form-about-yourself"></textarea>
				                        </div>
				                        <input type="submit" class="btn btn-default custom_btn" >
										</div>
										</fieldset>
										</form:form>
                        <!-- <a href="index.html" class="btn btn-default custom_btn">Register</a> -->
                    </div>
                </div>
			</div>
		</div>

	</div>

        <!-- Footer -->

        <footer class="footer">
			<div class="container">
				<p style="margin:15px; color:#ccc">Copyright &copy; 2016</p>
			</div>
		</footer>
		
		<!-- jQuery -->
    <script src="javascript/jquery.js"></script>
	<script src="javascript/customJS.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="javascript/bootstrap.min.js"></script>

</body>
</html>