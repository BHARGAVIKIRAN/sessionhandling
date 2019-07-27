<%-- 
    Document   : sessionbe
    Created on : Jul 27, 2019, 3:31:39 PM
    Author     : Bhat Sir
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Custom Home Page</title>
    </head>
    <body>
   
        <h1>Hello <%= request.getAttribute("name")%>
        </h1>
        <br/>
        <br/>
        <br/>
        <br/>
        <form action="<%= request.getContextPath()%>/logout12" method="post">
            <input type="submit" name="logout" value="Logout">
        </form>

    </body>
</html>
