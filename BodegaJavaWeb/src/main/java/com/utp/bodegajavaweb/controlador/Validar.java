package com.utp.bodegajavaweb.controlador;

import com.utp.bodegajavaweb.modelo.Usuario;
import com.utp.bodegajavaweb.modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    UsuarioDAO udao = new UsuarioDAO();
    Usuario usuario = new Usuario();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("Hola Get");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        System.out.println("Hola POST");
        
        /*String correo = request.getParameter("correo");
        String password = request.getParameter("password");*/
        
        //usuario = udao.validar(correo, password);
        /*if(usuario.getNombre() != null){
            
            request.getRequestDispatcher("Controlador?accion=Principal").forward(request, response);
        }
        else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }*/
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
