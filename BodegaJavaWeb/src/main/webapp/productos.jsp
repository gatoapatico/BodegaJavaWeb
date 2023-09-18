
<%@page import="java.util.List"%>
<%@page import="com.utp.bodegajavaweb.entidades.Producto"%>
<%
    List<Producto> productos = (List<Producto>) request.getSession().getAttribute("listaProductos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="_header.jsp" %>
        <main class="main-productos">
            <nav class="categorias">
                <button data-categoria="CARNES, AVES Y PESCADOS">CARNES, AVES Y PESCADOS</button>
                <button data-categoria="CONGELADOS">CONGELADOS</button>
                <button data-categoria="LACTEOS">LACTEOS</button>
                <button data-categoria="FRUTAS Y VERDURAS">FRUTAS Y VERDURAS</button>
                <button data-categoria="PANADERIA Y PASTELERIA">PANADERIA Y PASTELERIA</button>
                <button data-categoria="BEBIDAS">BEBIDAS</button>
                <button data-categoria="CUIDADO PERSONAL">CUIDADO PERSONAL</button>
                <button data-categoria="LIMPIEZA">LIMPIEZA</button>
            </nav>
            <h1>PRODUCTOS</h1>
            <div class="catalogo">
                <% for(Producto producto : productos) {%>
                    <div class="producto">
                        <div class="imagen">
                            <img src="assets/img/productos/<%=producto.getRutaImagen()%>" alt="<%=producto.getDescripcion()%>">
                        </div>
                        <p class="hidden" id="categoria"><%=producto.getCategoria()%></p>
                        <p class="nombre"><%=producto.getNombre()%></p>
                        <p class="marca"><%=producto.getProveedor()%></p>
                        <p class="precio">S/<%=String.format("%.2f", producto.getPrecio())%></p>
                        <button class="btn-agregar" data-agregar="agregar" data-productoid="<%=producto.getId()%>">AGREGAR</button>
                    </div>
                <% } %>
            </div>
        </main>
        <div class="fixed" id="fixed">
            <!-- AQUÍ VAN LOS POPUPS CUANDO SE AGREGA UN PRODUCTO AL CARRITO -->
        </div>       
            
<%@include file="_footer.jsp" %>
