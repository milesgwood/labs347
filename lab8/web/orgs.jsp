<%-- 
    Document   : orgs
    Created on : Oct 21, 2016, 9:25:34 AM
    Author     : greatwmc
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Organizations</h1>
        <s:bean name="bean.OrganizationList">
            <ul>
            <s:iterator value="clubs">
                <li>
                    <s:property value="toString()"/>
                </li>
            </s:iterator>
            </ul>
        </s:bean>
    </body>
</html>
