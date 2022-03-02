<%@ Page Title="" Language="C#" MasterPageFile="~/AuthorMaster.master" AutoEventWireup="true" CodeFile="AuthorContact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<header id="head" class="secondary">
            <div class="container">
                    <h1>Contact Us</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing eliras scele!</p>
                </div>
    </header>


	<!-- container -->
	<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">Your Message</h3>
						<p>
						Lorem Ipsum is inting and typesetting in simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the is dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
						</p>
						
                                               
							<div class="form-group">
								<label>Name</label>
                                <asp:TextBox ID="txtName" CssClass="form-control" runat="server" placeholder="Your name" ></asp:TextBox>
                                                       
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Email</label>
                                           <asp:TextBox ID="txtEmail" CssClass="form-control" TextMode="Email" runat="server" placeholder="Email address" ></asp:TextBox>
                                                        
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Phone</label>
                                                                                   <asp:TextBox ID="txtPhone" CssClass="form-control" TextMode="Phone" runat="server" placeholder="Phone number" ></asp:TextBox>
                                           
                                        
                                                                              </div>
								</div>
							</div>
							<div class="form-group">
								<label>Subject</label>
                                   <asp:TextBox ID="txtSubject" CssClass="form-control" TextMode="Phone" runat="server" placeholder="Subject" ></asp:TextBox>
                                           
                                                               
							</div>
							<div class="form-group">
								<label>Message</label>
                                                                   <asp:TextBox ID="txtMessage" CssClass="form-control" TextMode="MultiLine" Height="100px" runat="server" placeholder="Write you message here..." ></asp:TextBox>
                                  
                                                           
							</div>
                        <asp:Button ID="txtSend"  CssClass="btn btn-two" runat="server" 
                            Text="Send message" onclick="txtSend_Click" />
						
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
								<h3 class="section-title">Office Address</h3>
								<div class="contact-info">
									<h5>Address</h5>
									<p>5th Street, Carl View - United States</p>
									
									<h5>Email</h5>
									<p>info@webthemez.com</p>
									
									<h5>Phone</h5>
									<p>+09 123 1234 123</p>
								</div>
							</div> 
						</div> 						
					</div>
				</div>
			</div>
	<!-- /container -->
</asp:Content>

