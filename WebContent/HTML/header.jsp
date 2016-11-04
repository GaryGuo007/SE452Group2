<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-fixed-top header_nav" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" id="header_title" href="/Se452Group2/">Rent ALL<small class="tagline"> &nbsp;&nbsp;&nbsp;&nbsp; Find your handyman! </small></a>
            </div>
			
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            
                <ul class="nav navbar-nav navbar-right custom_nav">
                    <li>
                        <a href="about.jsp">About</a>
                    </li>
                    <li>
                        <a href="search.jsp">Search</a>
                    </li>
                   
                    <li class="dropdown custom_dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Register<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="contractorRegistration.jsp">Contractor</a>
                            </li>
                            <li>
                                <a href="customerRegistration.jsp">Customer</a>
                            </li>
                        </ul>
                    </li>
					 <li>
                        <a href="login.jsp">Login<c:out value="${session.name }"></c:out></a> 
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>