
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Carrito</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <header>
            <div class="header-left">
                <div class="logo-contenedor">
                    <a href="index.jsp" id="logo-header"><img src="assets/img/Marisol_Logo.png" alt="logo Marisol"></a>
                </div>
                <a href="productos.jsp">Productos<i class="bi bi-caret-down-fill"></i></a>
                <a href="">Ofertas</a>
            </div>
            <div class="header-right">
                <div class="buscador">
                    <a href=""><i class="bi bi-search"></i></a>
                    <input type="text" name="buscador-txt" placeholder="Buscar productos...">
                </div>
                <a href="carrito.jsp" class="carrito" id="carrito-header"><i class="bi bi-cart2"></i></a>
                <a href="" class="user"><i class="bi bi-person-circle"></i></a>
            </div>
        </header>
        <main class="main-carrito">
            <nav class="categorias">
                <a href="productos.jsp">CARNES, AVES Y PESCADOS</a>
                <a href="productos.jsp">CONGELADOS</a>
                <a href="productos.jsp">LACTEOS</a>
                <a href="productos.jsp">FRUTAS Y VERDURAS</a>
                <a href="productos.jsp">PANADERIA Y PASTELERIA</a>
                <a href="productos.jsp">BEBIDAS</a>
                <a href="productos.jsp">CUIDADO PERSONAL</a>
                <a href="productos.jsp">LIMPIEZA</a>
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
        <script src="script.js"></script>
    </body>
</html>
