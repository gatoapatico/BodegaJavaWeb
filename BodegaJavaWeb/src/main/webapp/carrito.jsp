<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="_header.jsp" %>
        <main class="main-carrito">
            <nav class="categorias">
                <a href="ProductoController">CARNES, AVES Y PESCADOS</a>
                <a href="ProductoController">CONGELADOS</a>
                <a href="ProductoController">LACTEOS</a>
                <a href="ProductoController">FRUTAS Y VERDURAS</a>
                <a href="ProductoController">PANADERIA Y PASTELERIA</a>
                <a href="ProductoController">BEBIDAS</a>
                <a href="ProductoController">CUIDADO PERSONAL</a>
                <a href="ProductoController">LIMPIEZA</a>
            </nav>
            <h1>TU CARRITO</h1>
            <div class="paneles">
                <div class="productos">
                    <div class="producto">
                        <div class="imagen">
                            <img src="assets/img/productos/bisteck.png" alt="bisteck">
                        </div>
                        <div class="info">
                            <p class="nombre">Bisteck de Tapa x Kg.</p>
                            <p class="marca">San Fernando</p>
                            <p class="precio">S/13.90</p>
                        </div>
                        <div class="ux">
                            <button class="btn-remove"><i class="bi bi-trash3-fill" data-remove="remove"></i></button>
                            <div class="quantity">
                                <button class="btn-sub" data-sub="sub">-</button>
                                <p class="num">1</p>
                                <button class="btn-add" data-add="add">+</button>
                            </div>
                        </div>
                    </div>

                    <div class="producto">
                        <div class="imagen">
                            <img src="assets/img/productos/crema_leche.png" alt="bisteck">
                        </div>
                        <div class="info">
                            <p class="nombre">Crema de Leche</p>
                            <p class="marca">Nestle</p>
                            <p class="precio">S/8.90</p>
                        </div>
                        <div class="ux">
                            <button class="btn-remove"><i class="bi bi-trash3-fill" data-remove="remove"></i></button>
                            <div class="quantity">
                                <button class="btn-sub" data-sub="sub">-</button>
                                <p class="num">1</p>
                                <button class="btn-add" data-add="add">+</button>
                            </div>
                        </div>
                    </div>

                    <div class="producto">
                        <div class="imagen">
                            <img src="assets/img/productos/queso_fresco.png" alt="bisteck">
                        </div>
                        <div class="info">
                            <p class="nombre">Queso Fresco</p>
                            <p class="marca">Bonle</p>
                            <p class="precio">S/34.50</p>
                        </div>
                        <div class="ux">
                            <button class="btn-remove"><i class="bi bi-trash3-fill" data-remove="remove"></i></button>
                            <div class="quantity">
                                <button class="btn-sub" data-sub="sub">-</button>
                                <p class="num">1</p>
                                <button class="btn-add" data-add="add">+</button>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="resumen">
                    <div class="info">
                        <p class="titulo">Resumen de Compra</p>
                        <p class="subtotal">Subtotal<span>S/57.30</span></p>
                        <p class="descuento">Descuento (-20%)<span>-S/11.46</span></p>
                        <p class="total">Total<span>-S/11.46</span></p>
                    </div>
                    <div class="ux">
                        <a href="pedido.jsp">IR A PAGAR<i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </main>

<%@include file="_footer.jsp" %>
