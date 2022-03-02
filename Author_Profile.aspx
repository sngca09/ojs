<%@ Page Title="" Language="C#" MasterPageFile="~/AuthorMaster.master" AutoEventWireup="true"
    CodeFile="Author_Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                    DBConnections db = new DBConnections();
                    String email = Session["email"].ToString();
                    String s = "select * from author_register where email='" + email + "'";
                    db.Select(s);
                    if (db.rs.Read())
                    {
                    
                    
                %>
                
                    <br> <br> <br> <br>
                   <!-- <img src="assets/images/about.jpg" alt="" class="img-rounded pull-right" height="200" width="250">-->
                   
               
              
                <h3 style="color: blue;"><%=db.rs.GetString(1)+"  "+db.rs.GetString(2)%></h3>
                <h5>Qualification:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.GetString(4)%></strong></h5>
                <h5>Gender:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.GetString(9)%></strong></h5>
                <h5>Date of Birth:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.GetString(3)%></strong></h5>
                <h5>Email ID:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.GetString(6)%></strong></h5>
                <h5>Phone:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.GetString(8)%></strong></h5>
                <h5>Address:&nbsp;&nbsp;&nbsp;<strong><%=db.rs.GetString(5)%></strong></h5>
            <br><br>
              <%
                    }
                %>
                <asp:Button ID="changeProfile" CssClass="btn btn-two" runat="server" 
                Text="Change Profile" onclick="changeProfile_Click"></asp:Button>
                <asp:Panel ID="Panel1" CssClass="form-light mt-20" runat="server" Visible="false">
                <div class="row">
                                                        <div class="col-md-6">
							<div class="form-group">
								<label>First Name</label>
                                <asp:TextBox ID="txtFname" CssClass="form-control" runat="server"></asp:TextBox>
                                                                
							</div>
                                                        </div>
                                                         <div class="col-md-6">
                                                        <div class="form-group">
								<label>Last Name</label>
                                                                    <asp:TextBox ID="txtLname" CssClass="form-control" runat="server"></asp:TextBox>
							</div>
                                                         </div>
                                                     </div>
                                                        <div class="row">
                                                        <div class="col-md-6">
                                                        <div class="form-group">
								<label>DOB</label>
                                                                   <asp:TextBox ID="txtDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
							</div>
                                                        </div>
                                                       <div class="col-md-6">
                                                        <div class="form-group">
								<label>Qualification</label>
                                                                    <asp:TextBox ID="txtQuli" CssClass="form-control" runat="server"></asp:TextBox>
							</div>
                                                       </div>
                                                     </div>
                                                        <div class="row">
                                                        <div class="col-md-6">
									<div class="form-group">
										<label>Phone</label>
                                                                             
                                                                                 <asp:TextBox ID="txtPhnoe" CssClass="form-control" runat="server"></asp:TextBox>
									</div>
							</div>
                                                                <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Gender </label>
                                                               <asp:DropDownList ID="drpGender" CssClass="form-control" runat="server">
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:DropDownList>
                                                                </div>
                                                            </div>
						
                                                    </div>
                                                        <div class="form-group">
								<label>Address</label>
                                                               
                                                                                 <asp:TextBox ID="txtAddress"  CssClass="form-control"  TextMode="MultiLine" runat="server"></asp:TextBox>
							</div>
                                                        
                                                     <asp:Button ID="btnUpdate" 
                        CssClass="btn btn-two" runat="server" 
                Text="Update" onclick="btnUpdate_Click" ></asp:Button>
                </asp:Panel>
        
                                                    
                                                        
				
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
                    <p> </p>
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
</asp:Content>
