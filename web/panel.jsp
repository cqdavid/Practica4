<%@page import="com.emergentes.utiles.conexion" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel</title>
    </head>
    <body> 
        <h1>Bloq de Publicaciones</h1>
        <ul>
            <li><a href="registro.jsp">Nueva Entrada</a></li>
        </ul>  
            
            <c:forEach var="item" items="${registro}">
                    <tr>
                        <td>${item.titulo}</td>
                        <td>${item.contenido}</td> 
                        <th>Autor</th>
                        <td>${item.autor}</td>
                        
                    </tr>
                </c:forEach>
            
            <table border="1">
                <tr>
                    <th>Titulo</th>
                   
                  
                </tr>
                
            </table>
        
        
        <a href="LoginControla?action=logout">Salir [x]</a>
               
    </body>
</html>
