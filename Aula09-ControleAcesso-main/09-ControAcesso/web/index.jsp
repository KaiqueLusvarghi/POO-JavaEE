<%-- 
     Document   : index
    Created on : 19 de abr. de 2022, 15:20:10
    Author     : Kaique
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entrar</title>
    </head>
    <body>
        <h2>LOGIN</h2>
        <%if(session.getAttribute("username")==null){%>
        <div>Identifique-se para ter acesso ao site</div>
        <form action="about.jsp">
        <input type="text" name="username" required/>
        <input type="submit" name="logon" value="Entrar"/>
        </form>
        <% }else{ %>
        <a href="about.jsp">Voltar</a>
        <% } %>
    </body>
</html>
