<%-- 
    Document   : processUpdate
    Created on : Oct 21, 2021, 8:25:39 PM
    Author     : Admin
--%>

<%@page import="controller.Product"%>
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
            String newname = request.getParameter("newten");
            int newso_luong = Integer.parseInt(request.getParameter("newso_luong"));
            int newdon_gia = Integer.parseInt(request.getParameter("newdon_gia"));
            ConnectDataBase obj = new ConnectDataBase();
            Product newpro = new Product(id, newname, newso_luong, newdon_gia);
            obj.update(id, newpro);
            response.sendRedirect("display.jsp");
        %>
    </body>
</html>
