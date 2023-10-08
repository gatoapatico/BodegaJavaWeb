<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfil</title>
        <link rel="stylesheet" href="styles.css">
        <!-- ICON CDN (BOOTSTRAP ICON) -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <%-- LIBRERÍA JQUERY PARA USO DE AJAX --%>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="_header.jsp" %>
        <main class="main-perfil">
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
            <h1>Mi Perfil</h1>
            <div class="perfil-campos">
                <div class="perfil-campo">
                    <label for="perfil-nombre">NOMBRE</label>
                    <p class="perfil-input" id="perfil-nombre"><%=usuario.getNombre()%></p>
                </div>
                <div class="perfil-campo">
                    <label for="perfil-apellido">APELLIDO</label>
                    <p class="perfil-input" id="perfil-apellido"><%=usuario.getApellido()%></p>
                </div>
                <div class="perfil-campo">
                    <label for="perfil-correo">CORREO</label>
                    <p class="perfil-input" id="perfil-correo"><%=usuario.getCorreo()%></p>
                </div>
                <div class="perfil-campo">
                    <label for="perfil-documento">DOCUMENTO</label>
                    <p class="perfil-input" id="perfil-documento"><%=(usuario.getDocumento() != null) ? usuario.getDocumento() : ""%></p>
                </div>
                <div class="perfil-campo">
                    <label for="perfil-telefono">TELEFONO</label>
                    <p class="perfil-input" id="perfil-telefono"><%=(usuario.getTelefono() != null) ? usuario.getTelefono() : ""%></p>
                </div>
                <div class="perfil-campo">
                    <button class="btn-editar-datos" data-abrireditardatos="abrireditardatos">EDITAR DATOS</button>
                </div>
            </div>
            <h2>PEDIDOS REALIZADOS</h2>
            <table class="tabla-pedidos-perfil">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Fecha</th>
                    <th>Codigo</th>
                    <th>Pago Total</th>
                    <th>Estado</th>
                    <th>Acción</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>2023-10-15</td>
                    <td>afpqqqnf5</td>
                    <td>S/ 70.50</td>
                    <td>ENTREGADO</td>
                    <td><a href="detallepedido.jsp"><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>2023-10-17</td>
                    <td>eee8789q</td>
                    <td>S/ 34.00</td>
                    <td>LISTO PARA RECOJER</td>
                    <td><a href="detallepedido.jsp"><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>2023-11-01</td>
                    <td>sdg556gs</td>
                    <td>S/ 15.49</td>
                    <td>EN PROCESO</td>
                    <td><a href="detallepedido.jsp"><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>2023-12-09</td>
                    <td>qwer1234</td>
                    <td>S/ 25.15</td>
                    <td>ENTREGADO</td>
                    <td><a href="detallepedido.jsp"><i class="bi bi-arrow-right-square-fill"></i>Ver</a></td>
                </tr>
                </tbody>
            </table>
        </main>
        <div class="bg-black-wall hidden" id="bg-black-wall" data-black="black">

        </div>
        <div class="popup popup-editar-datos hidden" id="popup-editar-datos">
            <h1>Datos de Usuario</h1>
            <input class="hidden" id="id-editar-datos" type="text" value="<%=usuario.getId()%>">
            <input class="hidden" id="correo-editar-datos" type="text" value="<%=usuario.getCorreo()%>">
            <input id="documento-editar-datos" type="text" placeholder="Número de DNI" value="<%=(usuario.getDocumento() != null) ? usuario.getDocumento() : ""%>">
            <input id="telefono-editar-datos" type="text" placeholder="Número de Teléfono" value="<%=(usuario.getTelefono() != null) ? usuario.getTelefono() : ""%>">
            <input class="password-editar-datos" id="password-editar-datos" type="password" placeholder="Contraseña">
            <p class="password-fail hidden">*Contraseña incorrecta</p>
            <button data-editardatos="editardatos">EDITAR DATOS</button>
            <p class="ad-editar-datos">*Para editar tus datos es necesario que ingreses tu contraseña</p>
        </div>

<%@include file="_footer.jsp" %>
