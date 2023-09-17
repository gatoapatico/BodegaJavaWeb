
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pedido</title>
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
        <main class="main-pedido">
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
            <h1>PROCESO DE PEDIDO</h1>
            <div class="paneles">
                <div class="usuario">
                    <div class="identificacion">
                        <div class="titulo">
                            <div class="icono">
                                <i class="bi bi-person-fill"></i>
                            </div>
                            <h1>Identificación</h1>
                        </div>
                        <p>Solicitamos únicamente la información esencial para la finalización de la compra</p>
                        <div class="ux">
                            <div class="dato-input whole">
                                <label for="correo">Correo*</label>
                                <input type="text" id="correo">
                            </div>
                            <div class="dato-input">
                                <label for="nombre">Nombre*</label>
                                <input type="text" id="nombre">
                            </div>
                            <div class="dato-input">
                                <label for="apellidos">Apellidos*</label>
                                <input type="text" id="apellidos">
                            </div>
                            <div class="dato-input">
                                <label for="tipo-documento">Tipo del documento</label>
                                <select name="" id="tipo-documento">
                                    <option selected value="dni">dni</option>
                                    <option value="pasaporte">pasaporte</option>
                                </select>
                            </div>
                            <div class="dato-input">
                                <label for="documento">Documento</label>
                                <input type="text" id="documento">
                            </div>
                            <div class="dato-input">
                                <label for="telefono">Telefono celular*</label>
                                <input type="text" id="telefono">
                            </div>
                        </div>
                        <button>IR A MÉTODO DE ENTREGA</button>
                    </div>

                    <div class="envio">
                        <div class="titulo">
                            <div class="icono">
                                <i class="bi bi-house-door-fill"></i>
                            </div>
                            <h1>Dirección de envío</h1>
                        </div>
                        <p>Indicanos tu modo de entrega:</p>
                        <div class="metodos">
                            <div class="metodo">
                                <img src="assets/img/pedido/img_delivery.png" alt="delivery">
                                <p>Despacho a domicilio</p>
                            </div>
                            <div class="metodo">
                                <img src="assets/img/pedido/logo_tienda.png" alt="tienda">
                                <p>Recojo en tienda</p>
                            </div>
                        </div>
                        <div class="ui-envio">
                            <p>
                                Los despachos a domicilio solo son válidos para direcciones que
                                se encuentran en la misma urbanización de la bodega MARISOL
                            </p>
                            <div class="direccion">
                                <i class="bi bi-geo-alt-fill"></i>
                                <div class="info">
                                    <p class="titulo">bodega MARISOL</p>
                                    <p>Calle García Rada 341</p>
                                    <p>Lima</p>
                                    <p>Lima, Lima</p>
                                    <button>Ver más detalles</button>
                                </div>
                            </div>
                            <div class="fecha">
                                <button>ELIJA UNA FECHA DE ENTREGA<i class="bi bi-calendar-week-fill"></i></button>
                            </div>
                        </div>
                        <div class="recojo">
                            <p>Responsable de recoger</p>
                            <p class="datos">
                                <i class="bi bi-person-fill"></i>
                                <span>48527293 - Álvaro Fernández - </span>
                                <span class="cambiar">CAMBIAR</span>
                            </p>
                        </div>
                        <button class="btn-pago">IR A MÉTODO DE PAGO<i class="bi bi-arrow-right"></i></button>
                    </div>

                    <div class="pago">
                        <div class="titulo">
                            <div class="icono">
                                <i class="bi bi-credit-card-2-back-fill"></i>
                            </div>
                            <h1>Método de pago</h1>
                        </div>
                        <div class="secciones">
                            <div class="metodo">
                                <p>Tarjeta de crédito</p>
                                <div class="icono">
                                    <i class="bi bi-credit-card-2-back-fill"></i>
                                </div>
                            </div>
                            <div class="info">
                                <div class="dato-input">
                                    <label for="numero">Número</label>
                                    <input type="text" id="numero">
                                </div>
                                <div class="dato-input">
                                    <div class="tipo-tarjeta">
                                        <img src="assets/img/pedido/visa.png" alt="visa">
                                        <img src="assets/img/pedido/mastercard.png" alt="mastercard">
                                    </div>
                                    <input type="text" id="total" value="Total - S/ 45.84" readonly>
                                </div>
                                <div class="dato-input">
                                    <label for="nombre-tarjeta">Nombre y Apellido como figura en la tarjeta</label>
                                    <input type="text" id="nombre-tarjeta">
                                </div>
                                <div class="dato-input">
                                    <p for="fecha-vencimiento">Fecha de Vencimiento</p>
                                    <div class="listas">
                                        <select name="mes" id="mes">
                                            <option value="">MM</option>
                                            <option value="">01</option>
                                            <option value="">02</option>
                                            <option value="">03</option>
                                            <option value="">04</option>
                                            <option value="">05</option>
                                            <option value="">06</option>
                                            <option value="">07</option>
                                            <option value="">08</option>
                                            <option value="">09</option>
                                            <option value="">10</option>
                                            <option value="">11</option>
                                            <option value="">12</option>
                                        </select>
                                        <select name="year" id="year">
                                            <option value="">AA</option>
                                            <option value="">23</option>
                                            <option value="">24</option>
                                            <option value="">25</option>
                                            <option value="">26</option>
                                            <option value="">27</option>
                                            <option value="">28</option>
                                            <option value="">29</option>
                                            <option value="">30</option>
                                            <option value="">31</option>
                                            <option value="">32</option>
                                            <option value="">33</option>
                                            <option value="">34</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="dato-input">
                                    <label for="codigo-tarjeta">Código de seguridad</label>
                                    <input class="small" type="text" id="codigo-tarjeta">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="resumen">
                    <div class="titulo">
                        <div class="icono">
                            <i class="bi bi-file-earmark-text-fill"></i>
                        </div>
                        <h1>Resumen de la compra</h1>
                    </div>
                    <div class="productos">

                        <div class="producto">
                            <div class="imagen">
                                <img src="assets/img/productos/bisteck.png" alt="bisteck">
                            </div>
                            <div class="info">
                                <p class="nombre">Bisteck de Tapa x Kg.</p>
                                <p class="cantidad">1</p>
                                <p class="precio">S/13.90</p>
                            </div>
                        </div>
                        <div class="producto">
                            <div class="imagen">
                                <img src="assets/img/productos/crema_leche.png" alt="crema de leche">
                            </div>
                            <div class="info">
                                <p class="nombre">Crema de Leche</p>
                                <p class="cantidad">1</p>
                                <p class="precio">S/8.90</p>
                            </div>
                        </div>
                        <div class="producto">
                            <div class="imagen">
                                <img src="assets/img/productos/queso_fresco.png" alt="queso freco">
                            </div>
                            <div class="info">
                                <p class="nombre">Queso Fresco</p>
                                <p class="cantidad">1</p>
                                <p class="precio">S/34.50</p>
                            </div>
                        </div>

                    </div>

                    <div class="total-resumen">
                        <p>Subtotal<span>S/ 57.30</span></p>
                        <p>Descuento (-20%)<span class="color">-S/ 11.46</span></p>
                        <p>Costo de envío<span>Gratis</span></p>
                        <p class="total">Total<span>S/ 45.84</span></p>
                    </div>

                    <button class="btn-finalizar" data-finalizar="finalizar"><i class="bi bi-cart-fill"></i>FINALIZAR PEDIDO</button>
                    <button class="btn-regresar" data-carrito="carrito"><i class="bi bi-arrow-left"></i>VOLVER AL CARRITO</button>
                </div>
            </div>

        </main>
        <div class="bg-black-wall hidden" id="bg-black-wall" data-black="black">

        </div>
        <div class="popup popup-star hidden" id="popup-star">
            <img src="assets/img/pedido/Star.png" alt="star">
            <h1>¡Muchas gracias!</h1>
            <p>tu pedido está siendo procesado</p>
        </div>
        <script src="script.js"></script>
    </body>
</html>