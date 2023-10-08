<%@ page import="Entity.Pedido" %>
<%@ page import="java.util.List" %>
<%@ page import="Entity.DetallePedido" %>
<%@ page import="Controller.PedidoController" %>
<%@ page import="Controller.ProductoController" %>
<%@ page import="Entity.Producto" %>
<%@ page import="Config.DateFormats" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Pedido pedido = (Pedido) request.getSession().getAttribute("pedido");
    PedidoController cPedido = new PedidoController();
    ProductoController cProducto = new ProductoController();
    List<DetallePedido> detallesPedido = cPedido.obtenerDetalles(pedido.getId());

%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Boleta Resumen</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="_header.jsp" %>
        <main class="main-resumen">
            <nav class="categorias">
                <a href="">CARNES, AVES Y PESCADOS</a>
                <a href="">CONGELADOS</a>
                <a href="">LACTEOS</a>
                <a href="">FRUTAS Y VERDURAS</a>
                <a href="">PANADERIA Y PASTELERIA</a>
                <a href="">BEBIDAS</a>
                <a href="">CUIDADO PERSONAL</a>
                <a href="">LIMPIEZA</a>
            </nav>
            <h1>PEDIDO CONFIRMADO</h1>
            <div class="paneles">
                <div class="panel panel1">
                    <b class="txt-confirmacion">¡Hemos confirmado tu pedido con éxito!</b>
                    <p class="txt-envio-email">Enviaremos para el email los detalles de su compra</p>
                </div>
                <div class="panel panel2">
                    <p class="tarjeta-pedido">Pedido Confirmado: <span class="tarjeta-pedido-codigo"><%=pedido.getCodigoUnico()%></span> | <span class="tarjeta-pedido-fecha"><%=DateFormats.formatoFechaTexto(pedido.getFecha())%></span></p>
                    <div class="tarjetas">
                        <div class="tarjeta datos-personales">
                            <b>DATOS PERSONALES</b>
                            <p>NOMBRE: <span class="tarjeta-nombre"><%=usuario.getNombre() + " " + usuario.getApellido()%></span></p>
                            <p>DNI: <span class="tarjeta-dni"><%=usuario.getDocumento()%></span></p>
                            <p>CORREO: <span class="tarjeta-correo"><%=usuario.getCorreo()%></span></p>
                            <p>TELÉFONO: <span class="tarjeta-telefono"><%=usuario.getTelefono()%></span></p>
                        </div>
                        <div class="tarjeta medio-pago">
                            <b>MEDIO DE PAGO</b>
                            <p>PEDIDO: <span class="bold"><%=pedido.getCodigoUnico()%></span></p>
                            <p class="no-bold">Pago con tarjeta de Crédito (Visa)</p>
                            <p class="no-bold">S/ <span><%=String.format("%.2f", pedido.getTotalPago())%></span></p>
                        </div>
                        <div class="tarjeta info-resumen">
                            <b>RESUMEN</b>
                            <p class="no-bold">Subtotal <span>S/ <span><%=String.format("%.2f", pedido.getTotalPago())%></span></span></p>
                            <p class="no-bold">Envío <span>S/ <span>0.00</span></span></p>
                            <p class="no-bold tarjeta-total">Total <span>S/ <span><%=String.format("%.2f", pedido.getTotalPago())%></span></span></p>
                        </div>
                    </div>
                </div>
                <div class="panel panel3">
                    <div class="info-pedido">
                        <p>PEDIDO: <span><%=pedido.getCodigoUnico()%></span></p>
                        <p>MÉTODO DE ENTREGA: <span><%=(pedido.getMetodoEnvio() == 1) ? "Retiro en bodega MARISOL" : "Entrega a domicilio"%></span></p>
                        <p>FECHA: <span><%=DateFormats.formatoFechaDiaTexto(pedido.getFechaEntrega())%></span></p>
                        <p>HORA: <span><%="Entre las " + DateFormats.formatoHora(pedido.getHoraEntrega()) + " y las " + DateFormats.sumarHora(pedido.getHoraEntrega())%></span></p>
                        <p>DIRECCIÓN: <span><%=pedido.getDireccionEntrega()%></span></p>
                    </div>
                    <table class="tabla-productos">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                <th class="big-space"></th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                                <th>Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(DetallePedido detalle : detallesPedido) {%>
                                <% Producto producto = cProducto.obtenerProducto(detalle.getProductoId()); %>
                                <tr>
                                    <td><img src="assets/img/productos/<%=producto.getImagen()%>" alt="<%=producto.getDescripcion()%>"></td>
                                    <td><%=producto.getNombre()%></td>
                                    <td class="tabla-precio">S/ <%=String.format("%.2f", detalle.getPrecio())%></td>
                                    <td class="tabla-cantidad"><div class="cuadro-cantidad"><%=detalle.getCantidad()%></div></td>
                                    <td class="tabla-precio">S/ <%=String.format("%.2f", detalle.getSubtotal())%></td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
                <a href="ProductoController" class="btn-seguir-comprando"><i class="bi bi-arrow-left"></i>SEGUIR COMPRANDO<i class="bi bi-cart-fill"></i></a>
            </div>
        </main>

<%@include file="_footer.jsp" %>
