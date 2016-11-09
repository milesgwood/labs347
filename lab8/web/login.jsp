<%-- 
    Document   : login
    Created on : Oct 21, 2016, 9:38:36 AM
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
        <h1>Logged In</h1>
        <% session.setAttribute("logged_in", true); %>
    </body>
</html>
