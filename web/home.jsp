<%-- 
    Document   : home
    Created on : Jul 27, 2019, 3:18:37 PM
    Author     : Bhat Sir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign IN Home Page</title>
    </head>
    <style>
        div{background-color: lightgreen}
        table{border: 2px;}
    </style>
    </head>
    
    <body bgcolor="lightblue">
        
        
        <h1><centre>Kindly Login To begin your sessions</centre></h1>
        <br />
        <br />
        <br />
        <div>
            <form action="<%= request.getContextPath()%>/Validate12" method="post">
                <table >
                    <tr><td>Username</td><td><input type="text" name="user" id="user"></td></tr>
                    <tr><td>Password</td><td><input type="password" name="pass"></td></tr>
                    <tr><td></td><td><input type="submit" name="submit" value="submit"></td></tr>
                </table>
       
        </form>
        </div>
    </body>
</html>
