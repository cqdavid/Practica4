<%@page import="com.emergentes.utiles.registro" %>
<%@page import="com.emergentes.utiles.conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
      <%
            registro item = (registro) request.getAttribute("miRegistro");
            boolean nuevo = true;
            if (item.getId() > 0){
                nuevo = false;
            }
        %>
        <h1>Nuevo Contenido</h1>
        <form action='ServletReg' method='get'>
        <table>
            <tr>
                <td>Id</td>
                <td><input type='number' name='id' value='<%= item.getId()%>' /></td>
            </tr>
            <tr>
                <td>Fecha</td>
                <td><input type='date' name='fecha' value='<%= item.getFecha()%>' /></td>
            </tr>
            <tr>
                <td>Contenido</td>
                <td><textarea name='contenido' rows="10" cols="50" value='<%= item.getContenido()%>'> </textarea></td>
            </tr>
            <tr>
                <td>Autor</td>
                <td><input type='text' name='autor' value='<%= item.getAutor()%>' />
            </tr>
            
            <tr>
                <td><input type='hidden' name="op" value="4" />
                    <input type="hidden" name='nuevo' value='<%=nuevo%>' /></td>
                <td><input type="submit" value='Enviar'></td>
            </tr>
            
        
    </body>
</html>
