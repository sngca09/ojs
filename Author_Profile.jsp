<%-- 
    Document   : Author_Profile
    Created on : Jan 28, 2017, 3:20:13 PM
    Author     : Asha
--%>

<%@page import="DbPackage.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="free-educational-responsive-web-template-webEdu">
    <meta name="author" content="webThemez.com">
    <title>free-educational-responsive-web-template-webEdu</title>
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
</head>

<body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <!-- Button for smallest screens -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a class="navbar-brand" href="rate.html.html">
                    <img src="assets/images/logo.png" alt="Techro HTML5 template"></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav pull-right mainNav">
                                        <li class="active"> <a href="Author_Profile.jsp">My Home</a></li>
                                        <li ><a href="Research_Areas.jsp">Research Areas</a></li>
                                       	<li><a href="History.jsp">History</a></li>
                                        <li><a href="Contact1.jsp">Contact</a></li>
                                        <li><a href="Logout.jsp">Log Out</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
    <!-- /.navbar -->

 	<header id="head" class="secondary">
            <div class="container">
                    <h1>About Me</h1>
                    <p>Success depends upon previous preparation, and without such preparation there is sure to be failure.</p>
                </div>
    </header>


    <!-- container -->
    <section class="container">
        <div class="row">
            <!-- main content -->
            <section class="col-sm-8 maincontent">
               
                
                <%
                    DBConnection db=new DBConnection();
                    String email=session.getAttribute("email").toString();
                    String s="select * from author_register where email='"+email+"'";
                    db.Select(s);
                    if(db.rs.next())
                    {
                    
                    
                %>
                
                    <br> <br> <br> <br>
                   <!-- <img src="assets/images/about.jpg" alt="" class="img-rounded pull-right" height="200" width="250">-->
                   
               
              
                <h3 style="color: blue;"><%=db.rs.getString("fname")+"  "+db.rs.getString("lname")%></h3>
                <h5>Qualification:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.getString("quali")%></strong></h5>
                <h5>Gender:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.getString("gender")%></strong></h5>
                <h5>Date of Birth:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.getString("dob")%></strong></h5>
                <h5>Email ID:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.getString("email")%></strong></h5>
                <h5>Phone:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.getString("phone")%></strong></h5>
                <h5>Address:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.getString("address")%></strong></h5>
            <br><br>
              <%
                    }
                %>
                 <form>
                     <button type="submit" class="btn btn-two" name="profile">Change Profile</button><p><br/></p>
                </form>
                <%
                    if(request.getParameter("profile")!=null)
                    {
                         String s1="select * from author_register where email='"+email+"'";
                         db.Select(s1);
                    if(db.rs.next())
                    {
                        
                    %>
                        <form class="form-light mt-20" role="form" action="#">
                                                    <div class="row">
                                                        <div class="col-md-6">
							<div class="form-group">
								<label>First Name</label>
                                                                <input type="text" class="form-control" value="<%=db.rs.getString("fname")%>" name="fname">
							</div>
                                                        </div>
                                                         <div class="col-md-6">
                                                        <div class="form-group">
								<label>Last Name</label>
                                                                <input type="text" class="form-control" value="<%=db.rs.getString("lname")%>" name="lname">
							</div>
                                                         </div>
                                                     </div>
                                                        <div class="row">
                                                        <div class="col-md-6">
                                                        <div class="form-group">
								<label>DOB</label>
                                                                <input type="text" class="form-control" value="<%=db.rs.getString("dob")%>" name="dob">
							</div>
                                                        </div>
                                                       <div class="col-md-6">
                                                        <div class="form-group">
								<label>Qualification</label>
                                                                <input type="text" class="form-control" value="<%=db.rs.getString("quali")%>" name="quali">
							</div>
                                                       </div>
                                                     </div>
                                                        <div class="row">
                                                        <div class="col-md-6">
									<div class="form-group">
										<label>Phone</label>
                                                                                <input type="text" class="form-control" value="<%=db.rs.getString("phone")%>" name="phone">
									</div>
							</div>
                                                                <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Gender </label>
                                                                    <select name="gender" class="form-control">
                                                                        <option value="<%=db.rs.getString("gender")%>" selected><%=db.rs.getString("gender")%></option>
                                                                        <option value="Male">Male</option>
                                                                        <option value="Female">Female</option>
                                                                        <option value="Others">Others</option>
                                                                       
                                                                    </select>
                                                                </div>
                                                            </div>
						
                                                    </div>
                                                        <div class="form-group">
								<label>Address</label>
                                                                <textarea class="form-control" id="message"  name="address" style="height:100px;"><%=db.rs.getString("address")%></textarea>
							</div>
                                                        
                                                    <button type="submit" class="btn btn-two" name="update">Update</button><p><br/></p>
                                                        
						</form>
                 <%
                    }
                    }
                    if(request.getParameter("update")!=null)
                    {
                        String fname=request.getParameter("fname");
                        String lname=request.getParameter("lname");
                        String dob=request.getParameter("dob");
                        String quali=request.getParameter("quali");
                        String phone=request.getParameter("phone");
                        String gender=request.getParameter("gender");
                        String addr=request.getParameter("address");
                        String s2="update author_register set fname='"+fname+"',lname='"+lname+"',dob='"+dob+"',quali='"+quali+"',phone='"+phone+"',gender='"+gender+"',address='"+addr+"' where email='"+email+"'";
                        db.Insert(s2);
                        %>
                        <script>
                            alert("Profile Details Updated");
                        </script>
                        <%
                        response.sendRedirect("Author_Profile.jsp");
                    }
                %>
            </section>
            <!-- /main -->
           
            <!-- Sidebar -->
            <aside class="col-sm-4 sidebar sidebar-right">

               <img src="assets/images/about.jpg" alt="" class="img-rounded pull-right" height="600" width="600">

            </aside>
            <!-- /Sidebar -->

        </div>
    </section>
    <!-- /container -->
    <section class="team-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Our Team</h3>
                    <p>Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.Voluptate minus illo tenetur sint ab in culpa cumque impedit quibusdam. Saepe, molestias quia.</p>
                    <br />
                </div>
            </div>
            <div class="row">

                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="assets/images/photo-1.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>John Doe</h4>
                        <!-- Designation -->
                        <span class="pos">CEO</span>
                        <div class="team-socials">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="assets/images/photo-2.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>Larry Doe</h4>
                        <!-- Designation -->
                        <span class="pos">Director</span>
                        <div class="team-socials">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="assets/images/photo-3.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>Ranith Kays</h4>
                        <!-- Designation -->
                        <span class="pos">Manager</span>
                        <div class="team-socials">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Team Member -->
                    <div class="team-member pDark">
                        <!-- Image Hover Block -->
                        <div class="member-img">
                            <!-- Image  -->
                            <img class="img-responsive" src="assets/images/photo-4.jpg" alt="">
                        </div>
                        <!-- Member Details -->
                        <h4>Joan Ray</h4>
                        <!-- Designation -->
                        <span class="pos">Creative</span>
                        <div class="team-socials">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-github"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
								<a href="rate.html.html">Home</a> | 
								<a href="about.html">About</a> |
								<a href="courses.html">Courses</a> |
								<a href="price.html">Price</a> |
								<a href="videos.html">Videos</a> |
								<a href="contact.html">Contact</a>
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

    <!-- JavaScript libs are placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
