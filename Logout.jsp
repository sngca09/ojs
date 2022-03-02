<%-- 
    Document   : Logout
    Created on : Jan 29, 2017, 7:47:30 PM
    Author     : Asha
--%>

<%

session.invalidate();
response.sendRedirect("index.jsp");

%>