<%@ Page Title="" Language="C#" MasterPageFile="~/AuthorMaster.master" AutoEventWireup="true" CodeFile="New_research.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">Upload Your New Research</h3>
						<p>
						Publishing a research paper in a journal or conference is an important activity within the academic community. It allows you to network with other scholars and to further refine your ideas and research. Academic journals are probably the most common place for scholars to publish their research.
						</p>
						
                                                
							<div class="form-group">
								<label>Topic</label>
    <asp:TextBox ID="txtTopicName" placeholder="Topic name" CssClass="form-control" runat="server" reqired=""></asp:TextBox>

                                                                	</div>
							
							<div class="form-group">
								<label>Abstract</label>
        <asp:TextBox ID="txtDis" runat="server"  CssClass="form-control" placeholder="Description"></asp:TextBox>
                                                             
							</div>
                                                       
                                                        <div class="form-group">
                                                        	<label>Main content</label>
            <asp:TextBox ID="txtAbstract" CssClass="form-control" TextMode="MultiLine"  Height="200px" runat="server" placeholder="Write your journal..."></asp:TextBox>
                                                              
							</div>
								
							<div class="form-group">
                                                                            <label>Research Paper</label>
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                                                                            
                                                        </div>
                                                      
                                                      
                                                   
<asp:Button ID="btnAddResearch" CssClass="btn btn-two" runat="server" Text="Add" onclick="btnAddResearch_Click" />
					
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

