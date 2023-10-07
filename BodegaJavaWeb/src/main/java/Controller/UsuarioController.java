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
        
        String action = (String)request.getParameter("action");
        
        switch(action){
            case "logout":
                request.getSession().removeAttribute("usuario");
                request.getSession().removeAttribute("carrito");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");

        String id = request.getParameter("id");
        String correo = request.getParameter("correo");
        String pass = request.getParameter("password");
        String documento = request.getParameter("documento");
        String telefono = request.getParameter("telefono");

        HttpSession misesion = request.getSession();

        switch(action){
            case "login":
                Usuario usuario = model.login(correo, pass);

                if(usuario.getCorreo() != null){
                    misesion.setAttribute("usuario", usuario);
                    request.getRequestDispatcher("productos.jsp").forward(request, response);
                }
                else {
                    request.getRequestDispatcher("productos.jsp?login=fail").forward(request, response);
                }
                break;
            case "register":
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                if(model.registrar(nombre, apellido, correo, pass)){
                    request.getRequestDispatcher("productos.jsp").forward(request, response);
                }
                else{
                    request.getRequestDispatcher("productos.jsp").forward(request, response);
                }
                break;
            case "editar-datos":
                response.setContentType("text/plain");
                if (model.passValidation(Integer.parseInt(id), pass)) {
                    response.getWriter().write("success");
                    if(model.editarDatosPerfil(Integer.parseInt(id), documento, telefono, pass)) {
                        Usuario usuarioEditar = model.login(correo, pass);
                        misesion.setAttribute("usuario", usuarioEditar);
                    }
                }
                else {
                    response.getWriter().write("fail");
                }
                break;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
