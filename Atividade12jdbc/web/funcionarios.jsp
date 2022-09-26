
<%@page import="model.Artist1"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
    ArrayList<Artist1> list = new ArrayList<>();
    int count = 0;
    try{
        count = Artist1.getCount();
        list = Artist1.getList();
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Funcionarios da loja</title>
    </head>
    <body>
        <h1>JDBC</h1>
        <h2>Lista dos Funcionarios (<%= count%> registros)</h2>
        
        <%if(requestEx!=null){%>
        <h3 style="color: red"><%= requestEx.getMessage() %></h3>
        <%}%>
        <a href="index.jsp"><-- VOLTAR</a>
        <br>
        <br>
        <table border="1">
            <tr><th>id</th><th>Nome</th><th>Sobrenome</th></tr>
            <%for(Artist1 a: list){%>
            <tr>
                <td><%= a.getId() %></td>
                <td><%= a.getName() %></td>
                <td><%= a.getSnome()%></td>
            </tr>
            <%}%>
        </table>
         
    </body>
</html>
