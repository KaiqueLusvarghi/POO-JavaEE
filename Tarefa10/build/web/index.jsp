<%-- 
    Document   : index
    Created on : 25 de abr. de 2022, 21:43:10
    Author     : Fatec
--%>
<%@page import="demo.Horario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Horario agora;
    Horario intervalo;
    
    agora = new Horario();
    intervalo = new Horario(20, 40, 0);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atividade Horário</title>
    </head>
    <body>
        <h1>Horário</h1>
        
        <div>
            <h3>Horário atual: <%= agora.getHorario() %></h3>
            <h3>Horário do intervalo: <%= intervalo.getHorario() %> </h3>
            
        <hr/>
        </div>
        
        <h5>Kaique Lusvarghi</h5>
        <h5>Edhoni Bergue</h5>
        <h5>Ivo Coelho</h5>
        <h5>Victória Santos</h5>
    </body>
</html>