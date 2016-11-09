<%-- 
    Document   : welcome
    Created on : Oct 19, 2016, 10:08:26 AM
    Author     : greatwmc
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome!</h1>
        <p>You have successfully registered as: </p>
        <p>Name: <s:property value="%{name}"/></p>
        <p>Student Id: <s:property value="%{student_id}"/></p>
        <p>Email: <s:property value="%{email}"/></p>
        <p>Age: <s:property value="%{age}"/></p>
        <p>Phone: <s:property value="%{phone}"/></p>
        <p>Over 18: <s:property value="%{over18}"/></p>
        <p>Organization: <s:property value="%{organization}"/></p>
    </body>
</html>
