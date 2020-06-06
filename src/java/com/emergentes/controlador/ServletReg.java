package com.emergentes.controlador;

import com.emergentes.utiles.registro;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletReg", urlPatterns = {"/ServletReg"})
public class ServletReg extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession ses = request.getSession();
        ArrayList<registro> lista = (ArrayList<registro>) ses.getAttribute("listaest");
        
        registro obj1 = new registro();
        int id, pos;
        int opcion = Integer.parseInt(request.getParameter("op"));
        
        switch (opcion){
            case 1:
                request.setAttribute("miRegistro", obj1);
                request.getRequestDispatcher("salidaRegistro.jsp").forward(request, response);
                break;
            case 2:
                id = Integer.parseInt(request.getParameter("id"));
                pos = buscarIndice(request, id);
                obj1 = lista.get(pos);
                request.setAttribute("miRegistro", obj1);
                request.getRequestDispatcher("salidaRegistro.jsp").forward(request, response);
                break;
            case 3:
                pos = buscarIndice(request, Integer.parseInt(request.getParameter("id")));
                lista.remove(pos);
                ses.setAttribute("listaest", lista);
                response.sendRedirect("registro.jsp");
                break;
            case 4:
                String nuevo = request.getParameter("nuevo");
                id = Integer.parseInt(request.getParameter("id"));
                
                
                obj1.setId(id);
                obj1.setFecha(request.getParameter("fecha"));
                obj1.setContenido(request.getParameter("contenido"));
                obj1.setAutor(request.getParameter("autor"));
               
                 
                if (nuevo.equals("true")){
                    lista.add(obj1);
                } else{
                    pos = buscarIndice(request, id);
                    lista.set(pos, obj1);
                }
                ses.setAttribute("listaest", lista);
                response.sendRedirect("registro.jsp");
                break;
            default:
                response.sendRedirect("registro.jsp");
            
         }
        }
    
    private int buscarIndice(HttpServletRequest request, int id){
        HttpSession ses = request.getSession();
        ArrayList<registro> lista = (ArrayList<registro>) ses.getAttribute("listaest");
    
        int i = 0;
        if (lista.size() > 0){
          while (i < lista.size()){
            if (lista.get(i).getId() == id){
            break;
            } else i++;
          }
        }
        return i;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
