<%@page import="Entity.Usuario"%>
<%
    Usuario usuario = (Usuario)session.getAttribute("usuario");
%>
<header>
    <div class="header-left">
        <div class="logo-contenedor">
            <a href="index.jsp" id="logo-header"><img src="assets/img/Marisol_Logo.png" alt="logo Marisol"></a>
        </div>
        <a href="ProductoController" id="productos-header">Productos<i class="bi bi-caret-down-fill"></i></a>
        <% if(usuario != null) {%>
            <% if(usuario.getCorreo().equals("admin@gmail.com")) {%>
                <a href="adminHome.jsp">Ir a pagina de Administración</a>
            <% } else{ %>
                <a class="nombre-usuario">Bienvenido <%=usuario.getNombre()%>!</a>
            <% } %>
            <a href="UsuarioController?action=logout">Cerrar Sesión</a>
        <% } %>
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
