<%@page import="Entity.Usuario"%>
<%
    Usuario usuario = (Usuario)session.getAttribute("usuario");
%>
<header>
    <div class="header-left">
        <div class="logo-contenedor">
            <a href="index.jsp" id="logo-header"><img src="assets/img/Marisol_Logo.png" alt="logo Marisol"></a>
        </div>
        <a href="ProductoController">Productos<i class="bi bi-caret-down-fill"></i></a>
        <% if(usuario != null) {%>
            <a>Bienvenido <%=usuario.getNombre()%>!</a>
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