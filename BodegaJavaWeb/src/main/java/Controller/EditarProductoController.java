/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Producto;
import Model.ProductoModel;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "EditarProductoController", urlPatterns = {"/EditarProductoController"})
public class EditarProductoController extends HttpServlet {

    ProductoModel model = new ProductoModel();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            // Get the ID of the product from the request.
            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            // Get the product from the database using the ID.
            Producto producto = model.getProductoById(id);

            // Set the product as a request attribute.
            request.setAttribute("producto", producto);
            request.setAttribute("id", id);

            // Redirect the user to the edit product JSP page.
            request.getRequestDispatcher("admin_productos_editar.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditarProductoController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
