<%-- 
    Document   : display
    Created on : Oct 19, 2021, 5:35:03 PM
    Author     : admin
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
    <style>
        .image{
            height: 80px;
            width: 120px;
        }
    </style>
    <body>
        <h1>Hien thi thong tin</h1>
        <%
            ConnectDataBase ob = new ConnectDataBase();
            ResultSet re = ob.getData();
        %>
        <a href="create.jsp">Them</a><br><br>
        <a href="finds.jsp">Tìm kiếm</a><br><br>
        <table border="1" style="text-align: center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name Procduct</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Ảnh</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(re.next()){
                %>
                <tr>
                    <td>
                        <% out.print(re.getInt(1));%>
                    </td>
                    <td>
                        <% out.println(re.getString(2));%>
                    </td>
                    <td>
                        <% out.println(re.getInt(3));%>
                    </td>
                    <td>
                        <% out.println(re.getInt(4));%>
                    </td>
                    <td>
                        <image class="image" src="../anh/80635478_1455674667914298_3853063230515576832_n.jpg" />
                    </td>
                    <td>
                        <a href="xoa.jsp?id=<%=re.getInt("id")%>">X</a>
                    </td>
                    <td>
                        <a href="update.jsp?id=<%=re.getInt("id")%>">U</a>
                    </td>
                    
                </tr>
                
                
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
