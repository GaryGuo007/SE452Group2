<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
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
                    <div class="panel-heading custom_panel">
                        <h2><i class="fa fa-fw fa-compass"></i>Results</h2>
                    </div>
                    <div class="panel-body" style="padding:35px;">
							<table class="table table-bordered" >
							<c:if test="${not idGet}">
						    <thead>
						      <tr>
						      	<th>Skill</th>
						        <th>Firstname</th>
						        <th>Lastname</th>					   
						        <th>City</th>
						        <th>State</th>
						        <th>Zip</th>					
						        <th>Cost $Person/Hour</th>
						      </tr>
						    </thead>
					   		</c:if>
						    <tbody>
											
								<c:forEach var="listValue" items="${dbResults}">
								<tr>
									<td Style="text-decoration: none"><a href="results.html?getId=${listValue.getId()}">${listValue.getSkill()}</a></td>
									<td>${listValue.getFirstName()}</td>
									<td>${listValue.getLastName()}</td>
									<td>${listValue.getCity()}</td>
									<td>${listValue.getState()}</td>
									<td>${listValue.getZip()}</td>
									<td>$<fmt:formatNumber  minFractionDigits="2" value="${listValue.getCost()}"/></td>
								</tr>
								</c:forEach>
							
						<c:if test="${idGet}">
							<h3><b>${work.getFirstName()} ${work.getLastName()}</b></h3>
							<h4><b>Cost Per Hour:</b> $${work.getCost()}</h4><br>
							<h4><b>Profession:</b>   ${work.getSkill()}</h4>
							<h4><b>Location:</b>   ${work.getCity()},${work.getState()} ${work.getZip()}</h4>
							<h4><b>Phone:</b>   ${work.getPhone()}</h4>
							<h4><b>Email:</b>  ${work.getEmail()}</h4>
							<br>
							
							<a href="${zipLink}" class="btn btn-default custom_btn">See Location</a>
							
							
						</c:if>
						
						
						</tbody>
						</table>
						<c:if test="${not idGet}">
						<c:if test="${empty dbResults}">
							NO RESULTS
						</c:if>
						</c:if>
						
                    </div>
                    
          
				
                   	</div>
               
                 </div>
				</div>
					                 
           		<div class="row">
           		<div class="col-md-8 col-md-offset-2">
                    <c:if test="${idGet}">
                		<div class="panel panel-default  info_box" style="text-align:center; padding: 0px; margin:50px">
                    	<div class="panel-heading custom_panel">
                        <h2><i class="fa fa-fw fa-compass"></i>Leave a Review</h2>
                    	</div>
                    	<div class="panel-body" style="padding:35px;">
                   		  
                   	
                   		  <form:form modelAttribute="Review" action="writeReview" method="post" class="form-horizontal">
							<br>
                        
                            <div class="input-group input-sm">
                                <label class="input-group-addon" ><i class="fa fa-lock"></i></label> 
                                <form:textarea path="review" rows="8" class="form-control" id="review"  name="review" placeholder="Write Review" required="true" ></form:textarea>
                            </div>
                            <br>
                                 
                            <div class="form-actions">
                                <input type="submit"
                                    class="btn btn-default custom_btn" value="Submit">
                            </div>
                        </form:form>
                        	
                        	<br>
                        	<br>
						
							<c:forEach var="listValue" items="${reviews}">
								
								<div><h4><b>Name:</b> ${listValue.getCustFirst()} ${listValue.getCustLast()}</h4></div>
								<div><h5>${listValue.getNotes()}</h5></div>	
								<br>				
							</c:forEach>
						
						
					    
					
                   			 </div>
                   		</div>
					</c:if>
				</div>	
				</div>		
                
                 </div>
                
                
               

        <!-- Footer -->

        <footer class="footer">
			<div class="container">
				<p style="margin:15px; color:#ccc">Copyright &copy; 2016</p>
			</div>
		</footer>

   
    <!-- /.container -->

</body>
</html>