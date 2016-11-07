<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
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


<body style = "font-family: 'Montserrat', sans-serif">
	
	    <!-- Navigation -->
	<div id="header"></div>
	





    <!-- Page Content -->
    <div class="container content">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:50px">
                    <div class="panel-heading">
                        <h2><i class="fa fa-fw fa-compass"></i>Customer Registration</h2>
                    </div>
                    <div class="panel-body" style="padding:35px;">
						<form:form modelAttribute="Customer" role="form" action="addCustomer.html" method="post" class="registration-form">
                        		
                        		<fieldset>
		             		          <div class="form-bottom">
				                    	<div class="form-group">
				                    		
				                        	<form:input path="firstName" type="text" name="form-first-name" placeholder="First name..." class="form-control"></form:input>
				                        </div>
				                        <div class="form-group">
				                        	
				                        	<form:input path="lastName" type="text" name="form-last-name" placeholder="Last name..." class="form-control"></form:input>
				                        </div>
										<div class="form-group">
				                     
				                        	<form:input path="address" type="text" name="form-address" placeholder="Address..." class="form-control"></form:input>
				                        </div>
										<div class="form-group">
				                     
				                        	<form:input path="city" type="text" name="form-city" placeholder="City..." class="form-control"></form:input>
				                        </div>
										<div class="form-group">
				                    		<select class="form-control" id="state" name="state" >
												<option class="greyText" style="text-color:grey" value="" disabled selected>State...</option>
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
				                     
				                        	<form:input path="zip" type="text" name="form-zip" placeholder="Zipcode..." class="form-control"></form:input>
				                        </div>									
										<div class="form-group">
				                     
				                        	<form:input path="email" type="text" name="form-email" placeholder="Email..." class="form-control"></form:input>
				                        </div>	
										<div class="form-group">
				                     
				                        	<form:input path="password" type="password" name="form-password" placeholder="Password..." class="form-control"></form:input>
				                        </div>	
				                        <div class="row">
		                                    <div class="col-md-2 ">   
		                                       <c:if test="${session.isLoggedIn()}">                                                                
		                                       <input type="submit" class="btn btn-default custom_btn" name="logout" value="Log out" />  
		                                       </c:if>
		                                    </div> 
				                            <div class="col-md-2 col-md-offset-2">
		                                       <input type="submit" class="btn btn-default custom_btn" <c:choose>
		                                                                                                     <c:when test="${session.isLoggedIn()}">
		                                                                                                          name="update" value="Update Info"</c:when>
		                                                                                                     <c:otherwise>
		                                                                                                          name="register" value="Register"</c:otherwise>
		                                                                                               </c:choose>  />	
		                                    </div>
		                                    <div class="col-md-2  col-md-offset-4">  
		                                       <c:if test="${session.isLoggedIn()}">                                                                 
		                                       <input type="submit" class="btn btn-default custom_btn" name="delete" value="Delete" />  
		                                       </c:if>
		                                    </div> 
		                                </div>                
				                    </div>
			                    </fieldset>
							</form:form>
<%-- 							<c:if test="${session.isLoggedIn()}"> --%>
<%-- 							<form action="logout.html" method="post" > --%>
<!-- 							   <input type="submit" class="btn btn-default custom_btn" name="logout" value="Log out" /> -->
<%-- 							</form> --%>
<%-- 							</c:if> --%>
                        <!--<a href="index.html" class="btn btn-default custom_btn">Register</a> -->
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