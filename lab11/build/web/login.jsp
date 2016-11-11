<%-- 
    Document   : login
    Created on : Nov 11, 2016, 9:31:13 AM
    Author     : greatwmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Boolean secure = ((HttpServletRequest) pageContext.getRequest()).isSecure();
    if (!secure) {
        String protocol = request.getProtocol();
        out.println(protocol); // prints out HTTP/1.1 on self signed servers
        out.println("not secure. Please use HTTPS on port 443 or 8443 in tomcat <br>");  // always fails
        out.print("<a href=");
        out.print("https://" + request.getServerName() + ":8443" + request.getContextPath() + "/login.jsp");
        out.println(">link to HTTPS secure page</a>");
        return;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="login">
            <p>CS347 Lab 11</p>
            <p>Userid: <input name="userid" size="15" type="text"></p>
            <p>Password:<input name="password" size="15" type="password"></p>
            <p> <input value="Submit" name="login" type="submit"></p>
        </form>
    </body>
</html>
