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
@WebServlet(name = "AdminController", urlPatterns = {"/AdminController"})
public class AdminController extends HttpServlet {

    ProductoModel model = new ProductoModel();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Producto> listaProductos = model.obtenerProductos();
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaProductos", listaProductos);
        request.getRequestDispatcher("admin_productos.jsp").forward(request, response);

        int id = Integer.parseInt(request.getParameter("id"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        List<Producto> productos = model.obtenerProductos();
        HttpSession session = request.getSession();

        switch (action) {
            case "create":
                Part file = request.getPart("imagen");
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                String proveedor = request.getParameter("proveedor");
                double precio = Integer.parseInt(request.getParameter("precio"));
                String categoria = request.getParameter("categoria");
                int stock = Integer.parseInt(request.getParameter("stock"));
                String imagen = file.getSubmittedFileName();
                String imagenPath = "C:/Users/PC/Documents/GitHub/BodegaJavaWeb/BodegaJavaWeb/src/main/webapp/assets/img/productos/" + imagen;
                try {
                    FileOutputStream fos = new FileOutputStream(imagenPath);
                    InputStream is = file.getInputStream();

                    byte[] data = new byte[is.available()];
                    is.read(data);
                    fos.write(data);
                    fos.close();
                    // Add the new product to the database
                    model.addProducto(nombre, descripcion, proveedor, precio, categoria, stock, imagen);
                    session.setAttribute("productos", productos);
                    response.setHeader("Refresh", "1.5");
                    request.getRequestDispatcher("admin_productos.jsp").forward(request, response);
                } catch (SQLException ex) {
                    Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                }

            case "delete":
                
                try {
                int id = Integer.parseInt(request.getParameter("id"));
                model.deleteProducto(id);
                session.setAttribute("productos", productos);
                response.setHeader("Refresh", "0.5");
                request.getRequestDispatcher("admin_productos.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
            }
            break;
            case "update": {
                file = request.getPart("imagen");
                nombre = request.getParameter("nombre");
                descripcion = request.getParameter("descripcion");
                proveedor = request.getParameter("proveedor");
                precio = Integer.parseInt(request.getParameter("precio"));
                categoria = request.getParameter("categoria");
                stock = Integer.parseInt(request.getParameter("stock"));
                imagen = file.getSubmittedFileName();
                try {
                    model.addProducto(nombre, descripcion, proveedor, precio, categoria, stock, imagen);
                    int id = Integer.parseInt(request.getParameter("id"));
                    model.deleteProducto(id);
                    request.getRequestDispatcher("admin_productos.jsp").forward(request, response);
                } catch (SQLException ex) {
                    Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            break;

        }

    }
}
