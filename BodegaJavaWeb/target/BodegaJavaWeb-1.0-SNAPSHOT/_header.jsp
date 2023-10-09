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
            <% if(usuario.getUsuarioTipo().equals("ADMINISTRADOR")) {%>
                <a href="adminHome.jsp">Ir a pagina de Administracion</a>
            <% } else{ %>
                <a class="nombre-usuario">Bienvenido <%=usuario.getNombre()%>!</a>
            <% } %>
            <a href="UsuarioController?action=logout">Cerrar Sesion</a>
        <% } %>
    </div>
    <div class="header-right">
        <div class="buscador">
            <a href=""><i class="bi bi-search"></i></a>
            <input type="text" name="buscador-txt" placeholder="Buscar productos...">
        </div>
        <% if(usuario != null) {%>
            <a href="carrito.jsp" class="carrito" id="carrito-header" ><i class="bi bi-cart2"></i></a>
            <a href="perfil.jsp" class="user"><i class="bi bi-person-circle"></i></a>
        <% } else { %>
            <button class="carrito" id="carrito-header" data-login="login"><i class="bi bi-cart2" data-login="login"></i></button>
            <button class="user" data-login="login"><i class="bi bi-person-circle" data-login="login"></i></button>
        <% } %>


    </div>
</header>
