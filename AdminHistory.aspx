<%@ Page Title="" Language="C#" MasterPageFile="~/AuthorMaster.master" AutoEventWireup="true" CodeFile="AdminHistory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<header id="head" class="secondary">
            <div class="container">
                    <h1>History</h1>
                    <p>Success depends upon previous preparation, and without such preparation there is sure to be failure.</p>
                </div>
    </header>


    <!-- container -->
    <section class="container">
        <div class="row">
            <!-- main content -->
            <section class="col-sm-8 maincontent">
                <h3>My Contributions</h3>
                 <div class="box-body">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>TOPIC</th>
                        <th>RESEARCH AREA</th>
                        <th>RESEARCH FIELD</th>
                        <th>ABSTRACT</th>
                        <th>DESCRIPTION</th>
                        <th>STATUS</th>
                        <th>CONTENTS</th>
			
                      </tr>
                    </thead>
                    <tbody>
                 <%
                    DBConnections db=new DBConnections();
                    String email = Session["email"].ToString();
                    String s="select * from research_paper p,research_areas a where p.rid=a.rid and p.email='"+email+"' order by rp_id desc";
                    db.Select(s);
                    while(db.rs.Read())
                    {
                    
                    
                %>
                 <tr>
                        <td><%=db.rs.GetString(9)%></td>
                        <td><%=db.rs.GetString(10)%></td>
                        <td><%=db.rs.GetString(1)%></td>
                        <td><%=db.rs.GetString(3)%></td>
                        <td><%=db.rs.GetString(5)%></td>
                       
                       
                        <%
                        if(db.rs.GetInt32(6)==1)
                        {
                         %>
                         <td><label style="color: #15c008;">APPROVED</label></td>
                        <%   
                        }
                        else if(db.rs.GetInt32(6)==0)
                        {
                        %>
                        <td><label style="color: #F00;">NOT APPROVED</label></td>
                        <% 
                        }
                         else if(db.rs.GetInt32(6)==2)
                        {
                        %>
                        <td><label style="color: #F00;"><a href="#">PAYMENT</a></label></td>
                        <% 
                        }
                        %>
                        <td><a href="Research_Paper/<%=db.rs.GetString(4)%>" title="<%=db.rs.GetString(4)%>">Download</a></td>
                      </tr>
                      <%
                      
                        }
                      %>
                    </tbody>
                  </table>
                 </div>
            </section>
            <!-- /main -->
</asp:Content>

