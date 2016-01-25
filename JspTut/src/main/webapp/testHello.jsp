<%-- 
    Document   : testHello
    Created on : Jan 24, 2016, 8:58:28 AM
    Author     : Chase
--%>

<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:declaration>
            String getMessage() {
            return "Hi There";
        }
        </jsp:declaration>
        <strong><jsp:expression>getMessage()</jsp:expression></strong>
        <jsp:forward page="index.html"/>
    </body>
</html>
