package Controller;

import Entity.*;
import Model.PedidoModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "PedidoController", value = "/PedidoController")
public class PedidoController extends HttpServlet {

    PedidoModel model = new PedidoModel();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Carrito carrito = (Carrito) request.getSession().getAttribute("carrito");
        ProductoController cProductos = new ProductoController();
        HttpSession session = request.getSession();

        String fechaPedido = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        int usuarioId = Integer.parseInt((String) request.getParameter("usuario-id"));
        int metodoEnvio = Integer.parseInt((String) request.getParameter("metodo-envio"));
        String direccionEntrega = (metodoEnvio == 1) ? "bodega Marisol, Calle García Rada 341" : (String) request.getParameter("direccion-entrega");
        String fechaEntrega = (String) request.getParameter("fecha-entrega");
        String horaEntrega = (String) request.getParameter("hora-entrega");
        String responsableDocumento = (String) request.getParameter("responsable-documento");
        String responsableNombre = (String) request.getParameter("responsable-nombre");
        String numeroTarjetaPago = (String) request.getParameter("numero-tarjeta-pago");
        double totalPago = Double.parseDouble((String) request.getParameter("total-pago"));
        String codigoUnico = UUID.randomUUID().toString().replace("-","").substring(0, 10);

        if(model.crearPedido(fechaPedido, usuarioId, metodoEnvio, direccionEntrega, fechaEntrega, horaEntrega,
                responsableDocumento, responsableNombre, numeroTarjetaPago, totalPago, codigoUnico)) {

            int idPedido = model.obtenerIdPedido(codigoUnico);

            for(CarritoItem item : carrito.obtenerItems()) {
                Producto producto = cProductos.obtenerProducto(item.getId());
                int productoId = producto.getId();
                int cantidad = item.getCantidad();
                double productoPrecio = producto.getPrecio();
                double subtotal = cantidad * productoPrecio;
                model.crearDetallePedido(idPedido, productoId, cantidad, productoPrecio, subtotal);
            }

            request.getSession().removeAttribute("carrito");

            Pedido pedido = new Pedido(idPedido, fechaPedido, usuarioId, metodoEnvio, direccionEntrega, fechaEntrega,
                    horaEntrega, responsableDocumento, responsableNombre, numeroTarjetaPago, totalPago, codigoUnico);

            session.setAttribute("pedido", pedido);

            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
        else {
            request.getRequestDispatcher("pedido.jsp").forward(request, response);
        }
    }

    public List<DetallePedido> obtenerDetalles(int pedidoId) {
        return model.obtenerDetalles(pedidoId);
    }
}