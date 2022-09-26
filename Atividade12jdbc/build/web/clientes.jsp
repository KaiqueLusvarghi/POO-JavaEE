<%-- 
    Document   : index
    Created on : 9 de mai. de 2022, 21:23:50
    Author     : Fatec
--%>
<%@page import="model.Artist"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Artist> list = new ArrayList<>();
    int count = 0;
    try{
        count = Artist.getCount();
        list = Artist.getList();
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index - JDBC | Clientes</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <h2>Lista de Clientes fiéis (<%= count%> registros)</h2>
         <br>
         <a href="index.jsp"><-- VOLTAR</a>
        <br>
        <br>
        
        <%if(requestEx!=null){%>
        <h3 style="color: red"><%= requestEx.getMessage() %></h3>
        <%}%>
        <table border="1">
            <tr><th>id</th><th>Nome</th> <th>Sobrenome</th></tr>
            <%for(Artist a: list){%>
            <tr>
                <td><%= a.getId() %></td>
                <td><%= a.getName() %></td>
                <td><%= a.getSnome() %></td>
            </tr>
            <%}%>
        </table>
       
    </body>
</html>
