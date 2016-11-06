<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    

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
			<!-- <div class ="col-md-6 col-md-offset-3" style="text-align:center"><c:out value="${session.getName()}"></c:out></div> -->
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:50px">
                    <div class="panel-heading custom_panel">
                        <h2><i class="fa fa-fw fa-compass"></i>Search</h2>
                    </div>
                    <div class="panel-body" style="padding:35px;">
                    
                    <div class="search-container">
					<div class="search-card">
                    <div class="search-form">
                        <form:form modelAttribute="Search" action="performSearch" method="post" class="form-horizontal">
							<fieldset>
		             		          <div class="form-bottom">
				                		<div class="form-group">
				                    		<select class="form-control" id="profession" name="profession" value="${search.getProfession()}">
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
				             				<form:input path="city" type="text" name="form-city" placeholder="City..." class="form-control" required="true" value="${search.getCity()}"></form:input>
				                        </div>
				                        <div class="form-group selectState">
				                    
				                        <style>
										    select:invalid { color: gray; }
										    select:valid{color:black;}
										</style>
				                        <select class="form-control" id="state" name="state" placeholder="State..." required="true">
				                           		<option value="" disabled selected id="placeholder">State...</option>
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
											
										<!-- Saves the state of the dropdowns if cost isn't inputed correctly -->	
										<script>
										
				                        	var state = "${search.getState()}";
				                        	var profession = "${search.getProfession()}";
				                        	
				                        	if(state && profession){
				            				    $("#profession").val(profession);
				                        		$("#state").val(state);
				                        	}
				                        	
				                        	
				                        </script>
				                        </div>	

										<div class="form-group">
				                    		<form:input path="zipcode" type="text" name="form-zip" placeholder="Zipcode..." class="form-control" value="${search.getZipcode()}"></form:input>
				                        </div>									
										<div class="input-group">
				                    		 <span class="input-group-addon">$</span>
 										
				                        	<form:input path="cost" id="costForm" name="form-cost" placeholder="Max Cost per Hour..." class="form-control"  value="0.00"></form:input>
				                        	 			
				                        </div>	
				                        <div>
				                        	  	<c:if test="${not empty Error}">
													<c:out value="${Error}"	/>
												</c:if>	
				                        </div>
				                        <br>
										
		                                <input type="submit" class="btn btn-default custom_btn" value="Search">
         		                      				                        
				                    </div>
			                    </fieldset>
                        </form:form>
                    </div>
                </div>
                </div> 
						
						<br>
					   			
				  		<c:if test="${not empty test2}">
								<c:out value="${test2}"	/>
						</c:if>	
  						<c:if test="${not empty test3}">
								<c:out value="${test3}"	/>	
						</c:if>
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