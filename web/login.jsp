<%@page import="com.emergentes.utiles.registro" %>
<%@page import="com.emergentes.utiles.conexion" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <p>Participante: Univ. DAVID CARANI QUISPE</p>
    <p>C.I.        : 6001668 L.P.   </p>     
        
        <h1>Iniciar Sesion</h1>
        <form action="loginControlador" method="Post">
            <table>
                <tr>
                    <td><label>Usuario</label></td>
                    <td><input type="text" name="usuario"></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input type="password" name="password"></td>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Ingresar"></td>
                </tr>
        </form>
    </body>
</html>
