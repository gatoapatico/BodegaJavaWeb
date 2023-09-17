
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Productos</title>
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
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/bisteck.png" alt="bisteck">
                    </div>
                    <p class="hidden" id="categoria">CARNES, AVES Y PESCADOS</p>
                    <p class="nombre">Bisteck de Tapa x Kg</p>
                    <p class="marca">San Fernando</p>
                    <p class="precio">S/13.90</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="bisteck">AGREGAR</button>
                </div>
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/crema_leche.png" alt="Crema de Leche">
                    </div>
                    <p class="hidden" id="categoria">LACTEOS</p>
                    <p class="nombre">Crema de Leche</p>
                    <p class="marca">Nestle</p>
                    <p class="precio">S/8.90</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="cremaLeche">AGREGAR</button>
                </div>
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/queso_fresco.png" alt="Queso Fresco">
                    </div>
                    <p class="hidden" id="categoria">LACTEOS</p>
                    <p class="nombre">Queso Fresco</p>
                    <p class="marca">Bonle</p>
                    <p class="precio">S/34.50</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="queso">AGREGAR</button>
                </div>
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/guiso_cerdo.png" alt="guiso">
                    </div>
                    <p class="hidden" id="categoria">CARNES, AVES Y PESCADOS</p>
                    <p class="nombre">Guiso de Cerdo x Kg.</p>
                    <p class="marca">San Fernando</p>
                    <p class="precio">S/26.90</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="guisoCerdo">AGREGAR</button>
                </div>



                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/bisteck.png" alt="bisteck">
                    </div>
                    <p class="hidden" id="categoria">CARNES, AVES Y PESCADOS</p>
                    <p class="nombre">Bisteck de Tapa x Kg</p>
                    <p class="marca">San Fernando</p>
                    <p class="precio">S/13.90</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="bisteck">AGREGAR</button>
                </div>
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/crema_leche.png" alt="Crema de Leche">
                    </div>
                    <p class="hidden" id="categoria">LACTEOS</p>
                    <p class="nombre">Crema de Leche</p>
                    <p class="marca">Nestle</p>
                    <p class="precio">S/8.90</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="cremaLeche">AGREGAR</button>
                </div>
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/queso_fresco.png" alt="Queso Fresco">
                    </div>
                    <p class="hidden" id="categoria">LACTEOS</p>
                    <p class="nombre">Queso Fresco</p>
                    <p class="marca">Bonle</p>
                    <p class="precio">S/34.50</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="queso">AGREGAR</button>
                </div>
                <div class="producto">
                    <div class="imagen">
                        <img src="assets/img/productos/guiso_cerdo.png" alt="guiso">
                    </div>
                    <p class="hidden" id="categoria">CARNES, AVES Y PESCADOS</p>
                    <p class="nombre">Guiso de Cerdo x Kg.</p>
                    <p class="marca">San Fernando</p>
                    <p class="precio">S/26.90</p>
                    <button class="btn-agregar" data-agregar="agregar" data-productoid="guisoCerdo">AGREGAR</button>
                </div>

            </div>



        </main>
        <div id="fixed">
            <!-- AQUÍ VAN LOS POPUPS CUANDO SE AGREGA UN PRODUCTO AL CARRITO -->
        </div>
        <script src="script.js"></script>
    </body>
</html>
