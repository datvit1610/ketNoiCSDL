<%-- 
    Document   : create
    Created on : Oct 19, 2021, 8:53:42 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Thêm</h1>
        <form action="process.jsp" method="post" name="them">
            Id: <input type="text" name="id" /><br>
            Ten <input type="text" name="ten" /><br>
            So luong: <input type="text" name="so_luong" /><br>
            Gia: <input type="text" name="don_gia" /><br>
            <input type="submit" value="ADD" name="btadd" />
            <input type="submit" value="RESET" />
        </form>
    </body>
</html>
