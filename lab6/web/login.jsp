<%-- 
    Document   : login
    Created on : Oct 7, 2016, 9:43:54 AM
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
        <form method="post" action="login">
            <p>
                <label>User ID:</label>
                <input type="text" name="userid" required>
            </p>
            <p>
                <label>Password:</label>
                <input type="password" name="password" required>
            </p>
            <p>
                <input type="submit" value="Login" name="submit">
            </p>
        </form>
    </body>
</html>
