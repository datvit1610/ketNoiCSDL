<%-- 
    Document   : find
    Created on : Oct 24, 2021, 1:30:49 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="controller.ConnectDataBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tìm kiếm !</h1>
        <%
        int id = Integer.parseInt(request.getParameter("id"));
        ConnectDataBase obj = new ConnectDataBase();
        ResultSet result = obj.find(id);
        %>
        <table border="1" style="text-align: center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name Procduct</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Ảnh</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(result.next()){
                %>
                <tr>
                    <td>
                        <% out.print(result.getInt(1));%>
                    </td>
                    <td>
                        <% out.println(result.getString(2));%>
                    </td>
                    <td>
                        <% out.println(result.getInt(3));%>
                    </td>
                    <td>
                        <% out.println(result.getInt(4));%>
                    </td>
                    <td>
                        <image class="image" src="../anh/80635478_1455674667914298_3853063230515576832_n.jpg" />
                    </td>
                   
                    
                </tr>
                
                
                <%
                    }
                %>
                <a href="display.jsp">Quay về</a><br><br>
            </tbody>
    </body>
</html>
