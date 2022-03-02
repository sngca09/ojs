<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="_Default" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                <h3 class="section-title">
                    Enter Your Login Details</h3>
           
                <div class="col-md-7 center-block">
                    <label>
                        Email</label>

                    <asp:TextBox ID="txtEmail"  CssClass="form-control" placeholder="Email address" TextMode="Email"  runat="server" required=""></asp:TextBox>
                  
                </div>
                <div class="col-md-7 center-block">
                    <label>
                        Password</label>
                    <asp:TextBox ID="txtPassword"  CssClass="form-control" placeholder="Password" TextMode="Password"  runat="server" required=""></asp:TextBox>
                  
                </div>
                <div class="col-md-7 center-block">
                    <div class="form-group">
                        <label>
                            Login Type
                        </label>
                        <asp:DropDownList ID="drpLogin"  CssClass="form-control" runat="server">
                         <asp:ListItem Selected="True">Author</asp:ListItem>
                                <asp:ListItem>Reviewer</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>


                        </asp:DropDownList>

                    </div>
                </div>
                <div class="col-md-7 center-block">
                  <asp:Button ID="btnOk" runat="server" CssClass="btn btn-two" Text="Login" onclick="btnOk_Click" 
                     />
                   <p>
                            <br />
                        </p>
                </div>
          
            </div>
        </div>
    </div>
    <!-- /container -->
</asp:Content>
