<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
     <head>
         <title>JSP Page</title>
     </head>
     <body>
         <h1>Parameter</h1>
         <p>Parameter: <s:property value="%{#parameters.paramx}"/></p>

         <s:form action="form_action">
             <s:hidden name="paramx" value="%{#parameters.paramx}"/>
             <s:submit value="Submit"/>
         </s:form>
     </body>
</html>