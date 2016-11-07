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
	 <!-- jQuery -->
    <script src="javascript/jquery.js"></script>
	<script src="javascript/customJS.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="javascript/bootstrap.min.js"></script>
	<script src="javascript/headerLoad.js"></script>

</head>
<!-- This is mylivechat service-->
<script type="text/javascript" async="async" defer="defer" data-cfasync="false" src="https://mylivechat.com/chatinline.aspx?hccid=98908127"></script>
<style>
.greyText{ text-color:grey; }
</style>

<body style = "font-family: 'Montserrat', sans-serif">
	
 <!-- Navigation -->
	<div id="header"></div>
	




    <!-- Page Content -->
    <div class="container content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:50px">
                    <div class="panel-heading">
                        <h2><i class="fa fa-fw fa-compass"></i>Contractor Registration</h2>
                    </div>
                    <div class="panel-body" style="padding:35px;">
						<form:form modelAttribute="Worker" role="form" action="addContractor.html" method="post" class="registration-form">
                        		
                        		<fieldset>
		             		          <div class="form-bottom">
				                    	<div class="form-group">
				                    		
				                        	<form:input path="firstName" type="text" name="firstName" placeholder="First name..." class="form-control"></form:input>
				                        	
				                        </div>
				                        <div class="form-group">
				                        	
				                        	<form:input path="lastName" type="text" name="lastName" placeholder="Last name..." class="form-control"></form:input>
				                        </div>
										<div class="form-group">
				                     
				                        	<form:input path="city" type="text" name="city" placeholder="City..." class="form-control"></form:input>
				                        </div>
										<div class="form-group">
				                    		<select class="form-control" id="state" name="state" >
												<option class="greyText" style="text-color:grey" value="" selected disabled>State...</option>
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
				                     
				                        	<form:input path="zip" type="text" name="zip" placeholder="Zipcode..." class="form-control"></form:input>
				                        </div>	
				                        <div class="form-group">
				                     
				                        	<form:input path="email" type="text" name="email" placeholder="Email..." class="form-control"></form:input>
				                        </div>				
				                        <div class="form-group">
				                     
				                        	<form:input path="phone" type="text" name="phone" placeholder="Phone..." class="form-control"></form:input>
				                        </div>						
									
				                       	<div class="form-group">
				                    		<select class="form-control" id="skill" name="skill">
												<option value="General Contractor">General Contractor</option>
												<option value="Plumber">Plumber</option>
												<option value="Electrician">Electrician</option>
												<option value="Landscaper">Landscaper</option>
												<option value="Carpenter">Carpenter</option>
												<option value="Roofer">Roofer</option>
												<option value="Construction">Construction</option>
										
											</select>
				                        </div>
				                        	<div class="form-group">
				                     
				                        	<form:input path="cost" type="text" name="cost" placeholder="Cost per Hour..." class="form-control" value="0.00"></form:input>
				                        </div>	
				                        <div class="form-group">
				                     
				                        	<form:input path="password" type="password" name="password" placeholder="Password..." class="form-control"></form:input>
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
		

</body>
</html>