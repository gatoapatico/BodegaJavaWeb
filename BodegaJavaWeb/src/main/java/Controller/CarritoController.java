package Controller;

import Entity.Carrito;
import Entity.CarritoItem;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CarritoController", value = "/CarritoController")
public class CarritoController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        Carrito carrito = (Carrito) session.getAttribute("carrito");

        if(carrito == null) {
            carrito = new Carrito();
            session.setAttribute("carrito", carrito);
        }

        int idProducto = Integer.parseInt(request.getParameter("id"));
        carrito.add(new CarritoItem(idProducto));
    }
}