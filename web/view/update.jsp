<%-- 
    Document   : update
    Created on : Oct 21, 2021, 8:09:57 PM
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
        <h1>Update sản phẩm!</h1>

        <form action="processupdate.jsp"  name="update">

            Id: <input type="text" name="id" value=""/><br>
            Ten <input type="text" name="newten" /><br>
            So luong: <input type="text" name="newso_luong" /><br>
            Gia: <input type="text" name="newdon_gia" /><br>
            <input type="submit" value="UPDATE" />
        </form>
    </body>
    <%--
            ConnectDataBase ob = new ConnectDataBase();
            ResultSet re = ob.getData();
            <%=re.getInt("id") %>
    --%>
</html>
