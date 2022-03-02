<!--
Author: WebThemez
Author URL: http://webthemez.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="free-educational-responsive-web-template-webEdu">
	<meta name="author" content="webThemez.com">
	<title>Journal Management</title>
	<link rel="favicon" href="assets/images/favicon.png">
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
        <%@page import="DbPackage.DBConnection"%>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.ui.draggable.js" type="text/javascript"></script>
        <script src="jquery.alerts.js" type="text/javascript"></script>        
        <link rel="stylesheet" type="text/css" href="jquery.alerts.css">
        <script src="dist/sweetalert2.all.min.js"></script>
        <link rel="stylesheet" type="text/css" href="dist/sweetalert2.css">
</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="rate.html.html">
                                    <img src="assets/images/logo.png"  alt="Techro HTML5 template"></a>
                                    <br><br>
                                    <h5 class="section-title">Journal Management System</h5>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li><a href="index.jsp">Home</a></li>
                                        <li> <a href="Register.jsp">Register</a></li>
                                        <li class="active"><a href="Login.jsp">Login</a></li>
					<li><a href="About.jsp">About</a></li>
					<li><a href="Contents.jsp">Research Areas</a></li>
					<li><a href="Contact.jsp">Contact</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

		<header id="head" class="secondary">
            <div class="container">
                    <h1>Log In</h1>
                    <p>None of us is as smart as all of us.</p>
                   
                </div>
    </header>


	<!-- container -->
	<div class="container">
				<div class="row">
					<div class="col-md-10 center-block">
                                            
                                                <h3 class="section-title">Enter Your Login Details</h3>
						
                                                <form class="form-light mt-20" method="post" role="form">
							
							
                                                              
									<div class="col-md-7 center-block">
										<label>Email</label>
                                                                                <input type="email" class="form-control" placeholder="Email address" name="email" required>
									</div>
							
                                                           
								
									<div class="col-md-7 center-block">
										<label>Password</label>
                                                                                <input type="password" class="form-control" placeholder="Password" name="password" required>
									</div>
							
                                                            <div class="col-md-7 center-block">
                                                                <div class="form-group">
                                                                    <label>Login Type </label>
                                                                    <select name="type" class="form-control" required>
                                                                        <option value="Author" selected>Author</option>
                                                                        <option value="Reviewer" >Reviewer</option>
                                                                        <option value="User"  >User</option>
                                                                       
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-7 center-block">
                                                                <button type="submit" class="btn btn-two" name="login" value="LogIn">LogIn</button><p><br/></p> 
                                                            </div>
                                               </form>     </div>
                                                    
                                                   
						
					</div>
					
				</div>
	
	<!-- /container -->

	 <footer id="footer">
 
		<div class="container">
   <div class="row">
  <div class="footerbottom">
    <div class="col-md-3 col-sm-6">
      <div class="footerwidget">
        <h4>
          Course Categories
        </h4>
        <div class="menu-course">
          <ul class="menu">
            <li><a href="#">
                List of Technology 
              </a>
            </li>
            <li><a href="#">
                List of Business
              </a>
            </li>
            <li><a href="#">
                List of Photography
              </a>
            </li>
            <li><a href="#">
               List of Language
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="footerwidget">
        <h4>
          Products Categories
        </h4>
        <div class="menu-course">
          <ul class="menu">
            <li> <a href="#">
                Individual Plans  </a>
            </li>
            <li><a href="#">
                Business Plans
              </a>
            </li>
            <li><a href="#">
                Free Trial
              </a>
            </li>
            <li><a href="#">
                Academic
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="footerwidget">
        <h4>
          Browse by Categories
        </h4>
        <div class="menu-course">
          <ul class="menu">
            <li><a href="#">
                All Courses
              </a>
            </li>
            <li> <a href="#">
                All Instructors
              </a>
            </li>
            <li><a href="#">
                All Members
              </a>
            </li>
            <li>
              <a href="#">
                All Groups
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-3 col-sm-6"> 
            	<div class="footerwidget"> 
                         <h4>Contact</h4> 
                        <p>Lorem reksi this dummy text unde omnis iste natus error sit volupum</p>
            <div class="contact-info"> 
            <i class="fa fa-map-marker"></i> Kerniles 416  - United Kingdom<br>
            <i class="fa fa-phone"></i>+00 123 156 711 <br>
             <i class="fa fa-envelope-o"></i> youremail@email.com
              </div> 
                </div><!-- end widget --> 
    </div>
  </div>
</div>
			<div class="social text-center">
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-dribbble"></i></a>
				<a href="#"><i class="fa fa-flickr"></i></a>
				<a href="#"><i class="fa fa-github"></i></a>
			</div>

			<div class="clear"></div>
			<!--CLEAR FLOATS-->
		</div>
		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="simplenav">
								<a href="index.jsp">Home</a> | 
								<a href="about.html">About</a> |
								<a href="courses.html">Courses</a> |
								<a href="price.html">Price</a> |
								<a href="videos.html">Videos</a> |
								<a href="Contact.jsp">Contact</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 panel">
						<div class="panel-body">
							<p class="text-right">
								Copyright &copy; 2014. Template by <a href="http://webthemez.com/" rel="develop">WebThemez.com</a>
							</p>
						</div>
					</div>

				</div>
				<!-- /row of panels -->
			</div>
		</div>
	</footer>

<%
               if(request.getParameter("login")!=null)
               {
                   String un,pw,type,sql;
                   un=request.getParameter("email");
                   pw=request.getParameter("password");
                   type=request.getParameter("type");
                   
                   DBConnection db=new DBConnection();
                   
                   if(type.contains("Author"))
                   {
                   
                       sql="select * from author_register where email='"+un+"' and password='"+pw+"' and status=1";
                   
                       db.Select(sql);
                        if(db.rs.next())
                        {
                   
                            session.setAttribute("email", db.rs.getString("email"));
                          
                            
%>
                          <script type="text/javascript">
                                  jAlert("Login sucessful","Alert");      
                                  //window.location="Login.jsp";
                            </script>
                            <%
                            
                            response.sendRedirect("Author_Profile.jsp");
                        }
                        else
                        {
                       
                            
                            %>
                        
                          <script>
                            
                                jAlert('Please enter a valid username or password', 'Alert Dialog');
                                 // window.location="Login.jsp";
                            </script>
                            <%

                        }

                   }
                   else if(type.contains("Reviewer"))
                   {
                       sql="select * from `reviewer_register` where email='"+un+"' and password='"+pw+"' and status=1";
                       db.Select(sql);
                        if(db.rs.next())
                        {
                            session.setAttribute("email", db.rs.getString("email"));
                            %>
                            <script type="text/javascript">
                                  jAlert("Login sucessful","Alert");      
                                 // window.location="Login.jsp";
                            </script>
                            <%
                            response.sendRedirect("Reviewer_Profile.jsp");
                        }
                        else
                        {
                            %>
                            <script type="text/javascript">
                                  jAlert("Please enter a valid username or password","Alert");      
                                  window.location="Login.jsp";
                            </script>
                            <%

                        }
                      
                   }
                   else if(type.contains("User"))
                   {
                         sql="select * from `user_register` where email='"+un+"' and password='"+pw+"'";
                         db.Select(sql);
                        if(db.rs.next())
                        {
                            session.setAttribute("email", db.rs.getString("email"));
                            %>
                            <script type="text/javascript">
                                  jAlert("Login sucessful","Alert");      
                                 // window.location="Login.jsp";
                            </script>
                            <%
                            response.sendRedirect("User_Profile.jsp");
                        }
                        else
                        {
                            %>
                            <script type="text/javascript">
                                  jAlert("Please enter a valid username or password","Alert");      
                                  window.location="Login.jsp";
                            </script>
                            <%

                        }
                   }
                      
               }
        %>
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="assets/js/google-map.js"></script>


</body>
</html>
