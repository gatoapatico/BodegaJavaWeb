package Controller;

import Entity.Producto;
import Model.ProductoModel;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AdminController", urlPatterns = {"/AdminController"})
public class AdminController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Get the product data from the request
        String nombre = request.getParameter("nombre");
        int precio = Integer.parseInt(request.getParameter("precio"));
        String categoria = request.getParameter("categoria");
        String descripcion = request.getParameter("descripcion");
        String proveedor = request.getParameter("proveedor");
        int stock = Integer.parseInt(request.getParameter("stock"));

        // Create a new product object
        Producto producto = new Producto();
        producto.setNombre(nombre);
        producto.setPrecio(precio);
        producto.setCategoria(categoria);
        producto.setDescripcion(descripcion);
        producto.setProveedor(proveedor);
        producto.setStock(stock);

        // Create a product model object
        ProductoModel model = new ProductoModel();

        try {
            // Add the new product to the database
            model.addProducto(producto);

            // Get the products from the database
            List<Producto> productos = model.obtenerProductos();

            // Add the products to the session
            HttpSession session = request.getSession();
            session.setAttribute("productos", productos);
        } catch (SQLException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Redirect the user to the products page
        response.sendRedirect("admin_productos.jsp");
    }


}
