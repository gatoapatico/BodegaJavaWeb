<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.UUID" %>
<%@ page import="Entity.Carrito" %>
<%@ page import="Controller.ProductoController" %>
<%@ page import="Entity.CarritoItem" %>
<%@ page import="Entity.Producto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Carrito carrito = (Carrito) request.getSession().getAttribute("carrito");
    ProductoController cProductos = new ProductoController();

    int usuarioId = Integer.parseInt((String) request.getParameter("usuario-id"));
    String usuarioCorreo = (String) request.getParameter("usuario-correo");
    String usuarioNombre = (String) request.getParameter("usuario-nombre");
    String usuarioApellido = (String) request.getParameter("usuario-apellido");
    int usuarioDocumentoTipo = Integer.parseInt((String) request.getParameter("usuario-documento-tipo"));
    String usuarioDocumentoNumero = (String) request.getParameter("usuario-documento-numero");
    String usuarioTelefono = (String) request.getParameter("usuario-telefono");

    int metodoEnvio = Integer.parseInt((String) request.getParameter("metodo-envio"));
    String direccionEntrega = (metodoEnvio == 1) ? "bodega Marisol, Calle García Rada 341" : (String) request.getParameter("direccion-entrega");
    String fechaEntrega = (String) request.getParameter("fecha-entrega");
    String horaEntrega = (String) request.getParameter("hora-entrega");
    String responsableDocumento = (String) request.getParameter("responsable-documento");
    String responsableNombre = (String) request.getParameter("responsable-nombre");
    String numeroTarjetaPago = (String) request.getParameter("numero-tarjeta-pago");
    String totalPago = (String) request.getParameter("total-pago");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <p>La Fecha y Hora actual es: <%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%></p>
        <p>El usuario id es: <%=usuarioId%></p>
        <p>El usuario correo es: <%=usuarioCorreo%></p>
        <p>El usuario nombre es: <%=usuarioNombre%></p>
        <p>El usuario apellido es: <%=usuarioApellido%></p>
        <p>El usuario tipo de documento es: <%=usuarioDocumentoTipo%></p>
        <p>El usuario numero documento es: <%=usuarioDocumentoNumero%></p>
        <p>El usuario telefono es: <%=usuarioTelefono%></p>
        <p>El metodo de envio es: <%=metodoEnvio%></p>
        <p>La direccion de entrega es: <%=direccionEntrega%></p>
        <p>La fecha de entrega es: <%=fechaEntrega%></p>
        <p>La hora de entrega es: <%=horaEntrega%></p>
        <p>El numero de documento del responsable a recoger es: <%=responsableDocumento%></p>
        <p>El nombre del responsable a recoger es: <%=responsableNombre%></p>
        <p>El numero de tarjeta pago es: <%=numeroTarjetaPago%></p>
        <p>El total a pagar es: <%=totalPago%></p>
        <p>El código único de venta es: <%=UUID.randomUUID().toString().replace("-","").substring(0, 10)%></p>

        <% for(CarritoItem item : carrito.obtenerItems()) {%>
            <% Producto producto = cProductos.obtenerProducto(item.getId()); %>
                <br>
                <p>El pedido id es: </p>
                <p>El producto id es: <%=producto.getId()%></p>
                <p>La cantidad comprada es: <%=item.getCantidad()%></p>
                <p>El precio del producto es: <%=producto.getPrecio()%></p>
                <p>El subtotal es: <%=String.format("%.2f", producto.getPrecio() * item.getCantidad())%></p>
                <br>
        <% } %>

        <div class="bg-black-wall" id="bg-black-wall-finalizacion" data-compraexito="compraexito">

        </div>
        <div class="popup popup-star" id="popup-star">
            <img src="assets/img/pedido/Star.png" alt="star">
            <h1>¡Muchas gracias!</h1>
            <p>tu pedido está siendo procesado</p>
        </div>

<%@include file="_footer.jsp" %>
