
       <%@page contentType="text/html" pageEncoding="UTF-8"%> 
        <%@page import="DbPackage.DBConnection"%>
        <script src="jquery.js" type="text/javascript"></script>
        <script src="jquery.ui.draggable.js" type="text/javascript"></script>
        <script src="jquery.alerts.js" type="text/javascript"></script>        
        <link rel="stylesheet" type="text/css" href="jquery.alerts.css">
        <html>
            <body>
        <%
            out.println("1<br/>");
               if(request.getParameter("login")!=null)
               {
                   out.println("2<br/>");
                   String un,pw,type,sql;
                   un=request.getParameter("email");
                   pw=request.getParameter("password");
                   type=request.getParameter("type");
                   out.println("3<br/>");
                   DBConnection db=new DBConnection();
                   out.println(type);
                   if(type.contains("Author"))
                   {
                      out.println("4<br/>");
                       sql="select * from author_register where email='"+un+"' and password='"+pw+"' and status=1";
                      // out.println(sql);
                       db.Select(sql);
                        if(db.rs.next())
                        {
                            out.println("5<br/>");
                            session.setAttribute("email", db.rs.getString("email"));
                          
                            
%>
                          <script type="text/javascript">
                                  jAlert("alert","Alert");      
                                  window.location="Login.jsp";
                            </script>
                            <%
                            
                            response.sendRedirect("Author_Profile.jsp");
                        }
                        else
                        {
                            out.println("6<br/>");
                            
                            %>
                        
                          <script>
                                  jAlert('This is a custom alert box', 'Alert Dialog');
                                  window.location="Login.jsp";
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
                                  jAlert("alert","Alert");      
                                  window.location="Login.jsp";
                            </script>
                            <%
                            response.sendRedirect("Reviewer_Profile.jsp");
                        }
                        else
                        {
                            %>
                            <script type="text/javascript">
                                  jAlert("alert","Alert");      
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
                                  jAlert("alert","Alert");      
                                  window.location="Login.jsp";
                            </script>
                            <%
                            response.sendRedirect("User_Profile.jsp");
                        }
                        else
                        {
                            %>
                            <script type="text/javascript">
                                  jAlert("alert","Alert");      
                                  window.location="Login.jsp";
                            </script>
                            <%

                        }
                   }
                      
               }
        %>
        </body>
        </html>