<%-- 
    Document   : userhome
    Created on : Nov 11, 2016, 11:13:30 AM
    Author     : greatwmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% Boolean loggedin = (Boolean) session.getAttribute("loggedIn");
    if (loggedin == null || loggedin == false) {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        //String url = "https://" + request.getServerName() + ":8443" + request.getContextPath() + "/login.jsp";
        //response.sendRedirect(url);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>User Home Page. Login Success</h1>
    </body>
</html>
