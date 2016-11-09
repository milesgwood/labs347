<%-- 
    Document   : register
    Created on : Oct 19, 2016, 9:53:13 AM
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
        <h1>Registration Form</h1>
        <s:bean name="bean.OrganizationList">
            <s:form action="register">
                <s:textfield name="name" label="name" />
                <s:textfield name="student_id" label="student id"/>
                <s:textfield name="email" label="email address"/>
                <s:textfield name="age" label="age"/>
                <s:textfield name="phone" label="phone number"/>
                <s:checkbox name="over18" label="I am over 18"/>
                <s:select label="Organization" name="organization" list="clubs" />
                <s:submit value="submit"/>
            </s:form>
        </s:bean>
    </body>
</html>
