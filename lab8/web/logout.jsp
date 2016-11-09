<%-- 
    Document   : logout
    Created on : Oct 21, 2016, 9:41:05 AM
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
        <h1>Logged Out</h1>
        <% session.setAttribute("logged_in", false); %>
    </body>
</html>
