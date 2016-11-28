<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP Page</title>
     </head>
     <body>
         <h1>Test</h1>

         
         <s:url var="url" action="param_page">
             <s:param name="paramx">1</s:param>
         </s:url>

         <s:a href="%{url}">link to param.jsp?paramx=1</s:a>

     </body>
</html>
