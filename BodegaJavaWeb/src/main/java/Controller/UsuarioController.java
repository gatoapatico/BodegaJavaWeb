package Controller;

import Entity.Usuario;
import Model.UsuarioModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UsuarioController", urlPatterns = {"/UsuarioController"})
public class UsuarioController extends HttpServlet {

    UsuarioModel model = new UsuarioModel();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        switch(action){
            case "login":
                String correo = request.getParameter("correo");
                String pass = request.getParameter("password");
                Usuario usuario = model.login(correo, pass);

                if(usuario.getCorreo() != null){
                    HttpSession misesion = request.getSession();
                    misesion.setAttribute("usuario", usuario);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}