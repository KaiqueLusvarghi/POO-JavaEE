<%-- 
    Document   : index
    Created on : 9 de mai. de 2022, 21:22:28
    Author     : Fatec
--%>
<%@page import="model.Artist1"%>
<%@page import="model.Artist"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Exception requestEx = null;
 
    int count = 0;
    int count1 = 0;
    try{
        count = Artist1.getCount();
        count1 = Artist.getCount();
      
    }catch(Exception e){
        requestEx = e;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Atividade 12 POO</title>
    </head>
    <body>
        
        
        <h3>Nome:---Kaique Ortolani Lusvarghi  RA: 1290482023041</h3>
        <h3>Nome:--- Edhoni Bergue Gois Oliveira  RA:1290482023033 </h3>
        <h3>Nome:--- Ivo Antonio Esteves Coelho  RA:1290482023006 </h3>
        
         <br>
         <a href="clientes.jsp">CLIENTES </a> (<%= count1%> Clientes)
        <br>
        <br>
        
        <a href="funcionarios.jsp">FUNCIONÁRIOS</a> (<%= count%> Funcionários)
        
        </table>
    </body>
</html>