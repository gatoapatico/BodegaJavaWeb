<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedido</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <%@include file="_header.jsp" %>
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
            <form>
                <div class="paneles">
                    <div class="usuario">
                        <div class="identificacion" id="identificacion">
                            <div class="titulo">
                                <div class="icono">
                                    <i class="bi bi-person-fill"></i>
                                </div>
                                <h1>Identificación</h1>
                            </div>
                            <div class="contenido1">
                                <p>Solicitamos únicamente la información esencial para la finalización de la compra</p>
                                <div class="ux" id="ux-identificacion">
                                    <div class="dato-input whole">
                                        <label for="correo">Correo*</label>
                                        <input type="email" id="correo" required>
                                        <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                    </div>
                                    <div class="dato-input">
                                        <label for="nombre">Nombre*</label>
                                        <input type="text" id="nombre" required>
                                        <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                    </div>
                                    <div class="dato-input">
                                        <label for="apellidos">Apellidos*</label>
                                        <input type="text" id="apellidos" required>
                                        <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                    </div>
                                    <div class="dato-input">
                                        <label for="tipo-documento">Tipo del documento</label>
                                        <select name="" id="tipo-documento" required>
                                            <option selected value="dni">dni</option>
                                            <option value="pasaporte">pasaporte</option>
                                        </select>
                                    </div>
                                    <div class="dato-input">
                                        <label for="documento">Documento</label>
                                        <input type="text" pattern="[0-9]{8,10}" id="documento" required>
                                        <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                    </div>
                                    <div class="dato-input">
                                        <label for="telefono">Telefono celular*</label>
                                        <input type="text" pattern="[0-9]{7,}" id="telefono" required>
                                        <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                    </div>
                                </div>
                                <button type="button" data-envio="envio">IR A MÉTODO DE ENTREGA</button>
                            </div>
                            <div class="contenido2 hidden">
                                <p class="correo"><span id="correo-resumen">afernandez@gmail.com</span><span class="btn-cerrar"> - no soy yo, cerrar sesión</span></p>
                                <p class="nombre-completo"><span id="nombre-resumen">Álvaro</span> <span id="apellidos-resumen">Fernández</span></p>
                                <p class="documento-telefono"><span id="documento-resumen">48527293</span> - <span id="telefono-resumen">943802609</span></p>
                            </div>
                        </div>

                        <div class="envio" id="envio">
                            <div class="titulo">
                                <div class="icono">
                                    <i class="bi bi-house-door-fill"></i>
                                </div>
                                <h1>Dirección de envío</h1>
                            </div>
                            <div class="contenido1 hidden">
                                <p>Indicanos tu modo de entrega:</p>
                                <b class="campo-fail hidden" id="campo-fail-metodos">*Es obligatorio este campo</b>
                                <div class="metodos" id="envio-metodos">
                                    <div class="metodo" id="metodo-domicilio" data-metodo="domicilio">
                                        <img src="assets/img/pedido/img_delivery.png" alt="delivery" data-metodo="domicilio">
                                        <p data-metodo="domicilio">Despacho a domicilio</p>
                                    </div>
                                    <div class="metodo" id="metodo-tienda" data-metodo="tienda">
                                        <img src="assets/img/pedido/logo_tienda.png" alt="tienda" data-metodo="tienda">
                                        <p data-metodo="tienda">Recojo en tienda</p>
                                    </div>
                                </div>
                                <div class="ui-envio">
                                    <div class="contenido-domicilio hidden" id="contenido-domicilio">
                                        <p>
                                            Los despachos a domicilio solo son válidos para direcciones que
                                            se encuentran en la misma urbanización de la bodega MARISOL
                                        </p>
                                        <div class="dato-input whole">
                                            <label for="direccion-domicilio">Ingresar dirección de entrega a domicilio*</label>
                                            <input type="text" id="direccion-domicilio">
                                            <b class="campo-fail hidden" id="direccion-domicilio-fail">*Es obligatorio este campo</b>
                                        </div>
                                    </div>
                                    <div class="contenido-tienda hidden" id="contenido-tienda">
                                        <div class="direccion">
                                            <i class="bi bi-geo-alt-fill"></i>
                                            <div class="info">
                                                <p class="titulo">bodega MARISOL</p>
                                                <p>Calle García Rada 341</p>
                                                <p>Lima</p>
                                                <p>Lima, Lima</p>
                                                <button type="button" data-mapa="mapa">Ver más detalles</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fecha" id="fecha">
                                        <button type="button" data-fecha="fecha">ELIJA UNA FECHA DE ENTREGA<i class="bi bi-calendar-week-fill" data-fecha="fecha"></i></button>
                                        <input type="date" class="input-fecha-entrega" id="input-fecha-entrega" data-inputfecha="inputfecha" required>
                                        <b class="campo-fail hidden" id="fecha-entrega-fail">*Debes elegir una fecha de entrega</b>
                                    </div>
                                    <div class="fecha-resumen hidden" id="fecha-resumen">
                                        <b>Fecha de entrega</b>
                                        <p><span id="fecha-formateada">Domingo, 27 de agosto del 2023</span> - <span class="btn-cambiar-fecha" data-cambiarfecha="cambiarfecha">Cambiar</span></p>
                                        <b>Horario de entrega</b>
                                        <select class="hora" name="hora" id="hora">
                                            <option value="de 09:00 a 10:00">De 09:00 AM a 10:00 AM - Gratis</option>
                                            <option value="de 10:00 a 11:00">De 10:00 AM a 11:00 AM - Gratis</option>
                                            <option value="de 11:00 a 12:00">De 11:00 AM a 12:00 PM - Gratis</option>
                                            <option value="de 12:00 a 13:00">De 12:00 PM a 13:00 PM - Gratis</option>
                                            <option value="de 13:00 a 14:00">De 13:00 PM a 14:00 PM - Gratis</option>
                                            <option value="de 14:00 a 15:00">De 14:00 PM a 15:00 PM - Gratis</option>
                                            <option value="de 15:00 a 16:00">De 15:00 PM a 16:00 PM - Gratis</option>
                                            <option value="de 16:00 a 17:00">De 16:00 PM a 17:00 PM - Gratis</option>
                                            <option value="de 17:00 a 18:00">De 17:00 PM a 18:00 PM - Gratis</option>
                                            <option value="de 18:00 a 19:00">De 18:00 PM a 19:00 PM - Gratis</option>
                                            <option value="de 19:00 a 20:00">De 19:00 PM a 20:00 PM - Gratis</option>
                                            <option value="de 20:00 a 21:00">De 20:00 PM a 21:00 PM - Gratis</option>
                                            <option value="de 21:00 a 22:00">De 21:00 PM a 22:00 PM - Gratis</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="recojo">
                                    <p>Responsable de recoger</p>
                                    <p class="datos">
                                        <i class="bi bi-person-fill"></i>
                                        <span><span id="dni-responsable-actual">48527293</span> - <span id="nombre-responsable-actual">Álvaro Fernández</span> - </span>
                                        <span class="cambiar" data-abrircambioresponsable="abrircambioresponsable">CAMBIAR</span>
                                    </p>
                                </div>
                                <button type="button" class="btn-pago" data-pago="pago">IR A MÉTODO DE PAGO<i class="bi bi-arrow-right" data-pago="pago"></i></button>
                            </div>
                            <div class="contenido2 hidden">
                                <p class="modalidad" id="modalidad-resumen">RECOGER EN LA TIENDA</p>
                                <p class="direccion" id="direccion-resumen">bodega MARISOL</p>
                                <p class="subtitulo">Programado</p>
                                <p class="fecha"><span id="fecha-dia-resumen">Lunes, 4 de septiembre del 2023</span>, <span id="fecha-hora-resumen">de 19:00 y 20:00</span></p>
                                <button type="button" class="btn-cambiar" data-cambiarenvio="canbiarenvio">Cambiar opciones de entrega</button>
                            </div>
                        </div>

                        <div class="pago" id="pago">
                            <div class="titulo">
                                <div class="icono">
                                    <i class="bi bi-credit-card-2-back-fill"></i>
                                </div>
                                <h1>Método de pago</h1>
                            </div>
                            <div class="contenido1 hidden">
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
                                            <input type="text" pattern="[0-9]+" id="numero" required>
                                            <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                        </div>
                                        <div class="dato-input">
                                            <div class="tipo-tarjeta">
                                                <img src="assets/img/pedido/visa.png" alt="visa">
                                                <img src="assets/img/pedido/mastercard.png" alt="mastercard">
                                            </div>
                                            <input type="text" id="total" value="Total - S/ 45.84" readonly>
                                            <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                        </div>
                                        <div class="dato-input">
                                            <label for="nombre-tarjeta">Nombre y Apellido como figura en la tarjeta</label>
                                            <input type="text" id="nombre-tarjeta" required>
                                            <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                        </div>
                                        <div class="dato-input">
                                            <p for="fecha-vencimiento">Fecha de Vencimiento</p>
                                            <div class="listas">
                                                <select name="mes" id="mes" required>
                                                    <option value="">MM</option>
                                                    <option value="01">01</option>
                                                    <option value="02">02</option>
                                                    <option value="03">03</option>
                                                    <option value="04">04</option>
                                                    <option value="05">05</option>
                                                    <option value="06">06</option>
                                                    <option value="07">07</option>
                                                    <option value="08">08</option>
                                                    <option value="09">09</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                </select>
                                                <select name="year" id="year">
                                                    <option value="">AA</option>
                                                    <option value="23">23</option>
                                                    <option value="24">24</option>
                                                    <option value="25">25</option>
                                                    <option value="26">26</option>
                                                    <option value="27">27</option>
                                                    <option value="28">28</option>
                                                    <option value="29">29</option>
                                                    <option value="30">30</option>
                                                    <option value="31">31</option>
                                                    <option value="32">32</option>
                                                    <option value="33">33</option>
                                                    <option value="34">34</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="dato-input">
                                            <label for="codigo-tarjeta">Código de seguridad</label>
                                            <input class="small" type="text" pattern="[0-9]{3,4}" id="codigo-tarjeta">
                                            <b class="campo-fail hidden">*Es obligatorio este campo</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="contenido2">
                                <p>Aún faltan llenar datos</p>
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

                        <button type="submit" id="btn-finalizar" class="btn-finalizar hidden" data-finalizar="finalizar"><i class="bi bi-cart-fill"></i>FINALIZAR PEDIDO</button>
                        <button type="button" class="btn-regresar" data-carrito="carrito"><i class="bi bi-arrow-left"></i>VOLVER AL CARRITO</button>
                    </div>
                </div>
            </form>
        </main>
        <div class="bg-black-wall hidden" id="bg-black-wall" data-black="black">

        </div>
        <div class="popup popup-star hidden" id="popup-star">
            <img src="assets/img/pedido/Star.png" alt="star">
            <h1>¡Muchas gracias!</h1>
            <p>tu pedido está siendo procesado</p>
        </div>
        <div class="popup popup-mapa hidden" id="popup-mapa">
            <img src="assets/img/pedido/mapa.png" alt="mapa-marisol">
        </div>
        <div class="popup popup-cambio-responsable hidden" id="popup-cambio-responsable">
            <h1>Cambio de responsable de recojo</h1>
            <input id="nombre-responsable-nuevo" type="text" placeholder="Nombre de responsable">
            <input id="dni-responsable-nuevo" type="text" placeholder="N° de documento">
            <button data-cambiarresponsable="cambiarresponsable">CAMBIAR RESPONSABLE</button>
        </div>

<%@include file="_footer.jsp" %>
