<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true"
    CodeFile="Contents.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <header id="head" class="secondary">
            <div class="container">
                    <h1>Research Areas</h1>
                    <p>Nothing ever comes to one, that is worth having, except as a result of hard work.</p>
                </div>
    </header>
    <!-- container -->
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h3 class="section-title">
                    Computer Science</h3>
                <div class="form-group">
                    <ul>
                        <h4>
                            <%
                                DBConnections db = new DBConnections();
                                String sql = "select * from research_areas where field='Computer Science'";
                                db.Select(sql);
                                while (db.rs.Read())
                                {
                                                                                            %>
                            <li><a href="Research.aspx?field=Computer Science&cat=<%=db.rs.GetString(1)%>">
                                <%=db.rs.GetString(1)%></a></li><br>
                            <%
                                                                                                
                                                                                                }
                                                                                                    %>
                        </h4>
                    </ul>
                </div>
                <h3 class="section-title">
                    Physical Science</h3>
                <div class="form-group">
                    <ul>
                        <h4>
                            <%
                                                                                                
                                String sql1 = "select * from research_areas where field='Physical Sciences'";
                                db.Select(sql1);
                                while (db.rs.Read())
                                {
                                                                                            %>
                            <li><a href="Research.aspx?field=Physical Sciences&cat=<%=db.rs.GetString(1)%>">
                                <%=db.rs.GetString(1)%></a></li><br>
                            <%
                                                                                                
                                                                                                }
                                                                                                    %>
                        </h4>
                    </ul>
                </div>
                <h3 class="section-title">
                    Mathematical Science</h3>
                <div class="form-group">
                    <ul>
                        <h4>
                            <%
                                                                                                
                                String sql2 = "select * from research_areas where field='Mathematical sciences'";
                                db.Select(sql2);
                                while (db.rs.Read())
                                {
                                                                                            %>
                            <li><a href="Research.aspx?field=Mathematical sciences&cat=<%=db.rs.GetString(1)%>">
                                <%=db.rs.GetString(1)%></a></li><br>
                            <%
                                                                                                
                                                                                                }
                                                                                                    %>
                        </h4>
                    </ul>
                </div>
                <h3 class="section-title">
                    Healthcare Technologies</h3>
                <div class="form-group">
                    <ul>
                        <h4>
                            <%
                                                                                                
                                String sql3 = "select * from research_areas where field='Healthcare technologies'";
                                db.Select(sql3);
                                while (db.rs.Read())
                                {
                                                                                            %>
                            <li><a href="Research.aspx?field=Healthcare technologies&cat=<%=db.rs.GetString(1)%>">
                                <%=db.rs.GetString(1)%></a></li><br>
                            <%
                                                                                                
                                                                                                }
                                                                                                    %>
                        </h4>
                    </ul>
                </div>
                <h3 class="section-title">
                    Energy</h3>
                <div class="form-group">
                    <ul>
                        <h4>
                            <%
                                                                                                
                                String sql4 = "select * from research_areas where field='Energy'";
                                db.Select(sql4);
                                while (db.rs.Read())
                                {
                                                                                                   
                                                                                            %>
                            <li><a href="Research.aspx?field=Energy&cat=<%=db.rs.GetString(1)%>">
                                <%=db.rs.GetString(1)%></a></li><br>
                            <%
                                                                                                
                                                                                                }
                                                                                                    %>
                        </h4>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- /container -->
</asp:Content>
