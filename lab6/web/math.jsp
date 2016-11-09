<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page errorPage="errorHandler.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>math.jsp</h1>

        <%-- this part of the JSP handles input from the form --%>
        <%
            // get the form parameters
            String param1 = request.getParameter("input1");
            String param2 = request.getParameter("input2");

            // if the parameters exist, convert them and do the addition
            if (param1 != null && param2 != null) {
                int integer1 = Integer.parseInt(param1);
                int integer2 = Integer.parseInt(param2);
                int sum = integer1 + integer2;
               
                out.print("<p>" + integer1 + " + " + integer2 + " = "
                    + sum + "</p>");

                // store the parameters and sum in the session
                session.setAttribute("input1", param1);
                session.setAttribute("input2", param2);
                session.setAttribute("sum", new Integer(sum));
            }
        %>
       
        <hr />
       
        <%-- This part of the JSP displays a form for adding two numbers --%>
        <p>Add two numbers:</p>
        <form method="post" action="math.jsp" >
            <p>
                <input type="text" name="input1" />
                +
                <input type="text" name="input2" />
                <input type="submit" value="Add" />
            </p>
        </form>

    </body>
</html>