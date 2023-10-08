/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Entity.Producto;
import Model.ProductoModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "EditarProductoController", urlPatterns = {"/EditarProductoController"})
public class EditarProductoController extends HttpServlet {

  ProductoModel productoModel = new ProductoModel();
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try {
            // Get the ID of the product from the request.
            int id = Integer.parseInt(request.getParameter("id"));
            
            // Get the product from the database using the ID.
            Producto producto = productoModel.getProductoById(id);

        // Set the product as a request attribute.
        request.setAttribute("producto", producto);
            
            // Redirect the user to the edit product JSP page.
            request.getRequestDispatcher("admin_productos_editar.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EditarProductoController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   HttpSession session = request.getSession();
        try {
            // Get the product information from the request.
            
            String nombre = request.getParameter("nombreEdit");
            String descripcion = request.getParameter("descripcionEdit");
            String proveedor = request.getParameter("proveedorEdit");
            double precio = Double.parseDouble(request.getParameter("precioEdit"));
            String categoria = request.getParameter("categoriaEdit");
            int stock = Integer.parseInt(request.getParameter("stockEdit"));
            
           
            
            session.setAttribute("nombreEdit", nombre);
            session.setAttribute("descripcionEdit", descripcion);
            session.setAttribute("proveedorEdit", proveedor);
            session.setAttribute("precioEdit", precio);
            session.setAttribute("categoriaEdit", categoria);
            session.setAttribute("stockEdit", stock);
            
            
            
            
            productoModel.updateProducto(nombre, descripcion, proveedor, precio, categoria, stock);
            System.out.println(nombre);
            
            // Redirect the user to the list products JSP page.
            response.sendRedirect("admin_productos.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(EditarProductoController.class.getName()).log(Level.SEVERE, null, ex);
        }
    
}


    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
