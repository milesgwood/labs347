<%-- 
    Document   : users.jsp
    Created on : Oct 7, 2016, 9:34:44 AM
    Author     : greatwmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean class="bean.UserList" id="uList" scope="session" />
        <title>JSP Page</title>
    </head>
    <% Boolean loggedin = (Boolean)session.getAttribute("loggedIn");
       if(loggedin == null || loggedin == false)
       {
           %><jsp:forward page="login.jsp" /><%
       }
       else{
    %>
    <body>
        <% String[] users = uList.getUsers(); %>
        <ul>
            
        <% for(int i = 0 ; i < users.length ; i++)
        {
            %>
            <li><%out.println(users[i]);%></li>
            <%
        }
        %>
        </ul>
    </body>
    <%}%>
</html>
