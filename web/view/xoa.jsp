<%-- 
    Document   : xoa
    Created on : Oct 19, 2021, 7:33:25 PM
    Author     : Admin
--%>

<%@page import="controller.ConnectDataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% int id = Integer.parseInt(request.getParameter("id"));
        ConnectDataBase ob = new ConnectDataBase();
        ob.delete(id);
        response.sendRedirect("display.jsp");
        %>
    </body>
</html>
