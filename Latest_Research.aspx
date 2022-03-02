<%@ Page Title="" Language="C#" MasterPageFile="~/ReviewerMaster.master" AutoEventWireup="true" CodeFile="Latest_Research.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h3 class="section-title">Available Research Papers</h3>
					   <div class="box-body">
                                                <table id="example1" class="table table-bordered table-striped">
                                                  <thead>
                                                    <tr>
                                                      <th>NO</th>
                                                      <th>COMMENT</th>
                                                      <th>TOPIC</th>
                                                      <th>RESEARCH AREA</th>
                                                      <th>RESEARCH FIELD</th>
                                                      <th>DESCRIPTION</th>
                                                      <th>ABSTRACT</th>
                                                      <th>DOWNLOAD</th>

                                                    </tr>
                                                  </thead>
                                                  <tbody>

                                                <% 
                                                    DBConnections db=new DBConnections();
                                                    String email=Session["email"].ToString();
                                                    int c=0;
                                                    String sql1="select * from tbl_reviews r,research_paper p,research_areas a where r.status=0 and r.reviewer='"+email+"' and r.rp_id=p.rp_id and p.rid=a.rid and p.status=0";
                                                    db.Select(sql1);
                                                    while(db.rs.Read())
                                                    {   
                                                       
                                                        c=c+1;
                                                        %>
                                                        
                                                       
                                                                <!--<img src="../Research_Paper/" alt=" " class="img-responsive">-->
                                                                `
                                                           <tr>    
                                                                <td><%=c%></td>
                                                                <td><a href="Comment.aspx?id=<%=db.rs.GetInt32(1)%>&topic=<%=db.rs.GetString(5)%>">Comments</a></td>
                                                                <td><%=db.rs.GetString(5)%></td>
                                                                <td><%=db.rs.GetString(13)%></td>
                                                                <td><%=db.rs.GetString(14)%></td>
                                                                <td><%=db.rs.GetString(9)%></td>
                                                                <td><%=db.rs.GetString(7)%></td>
                                                                <td><a href="Research_Paper/<%=db.rs.GetString(8)%>">Download</a></td>
                                                               
                                                                
                                                           </tr>
                                                        <%
                                                    }
                                   
                                                %>	
                                                 
                                             </tbody>
                                            </table>
                                           </div>
                                                
                                        </div>
					
				</div>
			</div>
	<!-- /container -->
</asp:Content>

