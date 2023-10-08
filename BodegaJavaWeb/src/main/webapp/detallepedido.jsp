<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detalle Pedido</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="_header.jsp" %>
        <main class="main-detalle-pedido">
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
            <h1>DETALLE PEDIDO</h1>
            <div class="paneles">

                <div class="panel panel1">
                    <div class="info">
                        <p class="tarjeta-pedido">Código de pedido: <span class="bold">v7410072mafp</span></p>
                        <p class="tarjeta-pedido">Medio de Pago: <span class="bold">Visa</span></p>
                        <p class="tarjeta-pedido">Pago total: <span>S/ <span class="bold">57.30</span></span></p>
                    </div>
                    <div class="codigo-barras">
                        <img src="assets/img/codigo-barras.png" alt="codigo de barras">
                    </div>
                </div>
                <div class="panel panel2">
                    <div class="info-pedido">
                        <p>MÉTODO DE ENTREGA: <span>Retiro en bodega MARISOL</span></p>
                        <p>FECHA: <span>Lunes, 4 de septiembre del 2023</span></p>
                        <p>HORA: <span>Entre las 07:00 PM y las 08:00 PM</span></p>
                        <p>DIRECCIÓN: <span>Calle García Rada 341, Lima</span></p>
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
                        <tr>
                            <td><img src="assets/img/productos/bisteck.png" alt="bisteck"></td>
                            <td>Bisteck de tapa x Kg.</td>
                            <td class="tabla-precio">S/ 13.90</td>
                            <td class="tabla-cantidad"><div class="cuadro-cantidad">1</div></td>
                            <td class="tabla-precio">S/ 13.90</td>
                        </tr>
                        <tr>
                            <td><img src="assets/img/productos/crema_leche.png" alt="crema"></td>
                            <td>Crema de Leche</td>
                            <td class="tabla-precio">S/ 8.90</td>
                            <td class="tabla-cantidad"><div class="cuadro-cantidad">1</div></td>
                            <td class="tabla-precio">S/ 8.90</td>
                        </tr>
                        <tr>
                            <td><img src="assets/img/productos/queso_fresco.png" alt="queso"></td>
                            <td>Queso Fresco</td>
                            <td class="tabla-precio">S/ 34.50</td>
                            <td class="tabla-cantidad"><div class="cuadro-cantidad">1</div></td>
                            <td class="tabla-precio">S/ 34.50</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <a href="perfil.jsp" class="btn-volver-perfil"><i class="bi bi-arrow-left"></i>VOLVER AL PERFIL</a>
            </div>
        </main>

<%@include file="_footer.jsp" %>
