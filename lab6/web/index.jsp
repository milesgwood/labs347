<%-- 
    Document   : index.jsp
    Created on : Oct 7, 2016, 9:20:10 AM
    Author     : greatwmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Boolean loggedin =  (Boolean)session.getAttribute("loggedIn");
            String userid =     (String)session.getAttribute("userid");
            if(loggedin == null || loggedin == false)
            {
                %><p>Please login</p><%
            }
            else
            {
                %><p>Hello</p><%
                out.print(userid);
            }            
        %>
        <ul>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="users.jsp">List Users</a></li>
            <li><a href="logout">Logout</a></li>
        </ul>
    </body>
</html>
