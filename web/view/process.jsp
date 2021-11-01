<%-- 
    Document   : process
    Created on : Oct 19, 2021, 10:40:31 PM
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
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String ten = request.getParameter("ten");
            int so_luong = Integer.parseInt(request.getParameter("so_luong"));
            int don_gia = Integer.parseInt(request.getParameter("don_gia"));
            ConnectDataBase ob = new ConnectDataBase();
            ob.insertDate(id, ten, so_luong, don_gia);
            response.sendRedirect("display.jsp");
        %>
    </body>
</html>
