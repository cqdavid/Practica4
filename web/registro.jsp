<%@page import="com.emergentes.utiles.conexion" %>
<%@page import="com.emergentes.utiles.registro" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
       <%
        if (session.getAttribute("listaest") == null){
        ArrayList<registro> listaux = new ArrayList<registro>();
        session.setAttribute("listaest", listaux);
        }
        ArrayList<registro> lista = (ArrayList<registro>) session.getAttribute("listaest");
        %>
        <p>Participante: Univ. DAVID CARANI QUISPE</p>
        <p>C.I.        : 6001668 L.P.   </p> 
        
        <p align='right'><a href="loginControlador? action=logout">Salir [x]</a></p>
        <center><h1>BLOG DE ROBOTICA</h1></center>
        
        <a href="ServletReg?op=1" method="GET">Nueva Publicacion</a>
       
            <%
                if (lista != null){
                    for (registro item : lista){
            %>
                
                <br>
                <%= item.getId()%>
                <br>
                <td><%= item.getFecha()%></td>
                <br><br>
            
                <%= item.getContenido()%>
                
          <table>
               <tr>
                <th>Autor : </th>             
                <td><%= item.getAutor()%></td>
               </tr>
          </table>
                <p align='right'><a href="ServletReg?op=2&id=<%= item.getId()%>">Editar</a>
                   <a href="ServletReg?op=3&id=<%= item.getId()%>"
                        onclick='return confirm("Esta seguro de eliminar el registro ?");' >Eliminar</a>
                </p>
        <p>---------------------------------------------------------------------------------------------------------</p> 
            <%
                    }
                }  
            %>
    </body>
</html>
