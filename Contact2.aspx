<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Contact2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-	<header id="head" class="secondary">
            <div class="container">
                    <h1>Contact Us</h1>
                    <p>Write a message</p>
                </div>
    </header>
   


	<!-- container -->
	<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">Your Message</h3>
						<p>
						 
						</p>
						
                                                <form class="form-light mt-20" role="form" action="#">
							<div class="form-group">
								<label>Name</label>
                                                               <asp:TextBox ID="txtName" CssClass="form-control" runat="server" required=""></asp:TextBox>
                                                              	</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>Email</label>
                                         <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" required=""></asp:TextBox>
                                                                             
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Phone</label>
                                          <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" required=""></asp:TextBox>
                                                                              
									</div>
								</div>
							</div>
							<div class="form-group">
								<label>Subject</label>
                                  <asp:TextBox ID="txtSubject" CssClass="form-control" runat="server" required=""></asp:TextBox>
                                                                <
							</div>
							<div class="form-group">
								<label>Message</label>
 <asp:TextBox ID="txtMessage" CssClass="form-control" runat="server" TextMode="MultiLine" Height="100 px" required=""></asp:TextBox>
                                                                
							</div>
                                                <asp:Button ID="Button1" CssClass="btn btn-two" runat="server" 
                                                    Text="Send message" onclick="Button1_Click" />
						
						</form>
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

