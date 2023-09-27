
<%@page import="Model.UsuarioModel"%>
<%@page import="Entity.Usuario"%>
<%@page import="Entity.Producto"%>
<%@page import="java.util.List"%>
<%
    UsuarioModel model = new UsuarioModel();
    List<Usuario> usuario = model.obtenerUsuarios();
    List<Producto> productos = (List<Producto>) request.getSession().getAttribute("listaProductos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link rel="stylesheet" href="styles.css">
        <link href="admin_style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
            
            
            
            <h1>PRODUCTOS</h1>
            <div class="catalogo">
                <% for(Producto producto : productos) {%>
                    <div class="producto">
                        <div class="imagen">
                            <img src="assets/img/productos/<%=producto.getImagen()%>" alt="<%=producto.getDescripcion()%>">
                        </div>
                        <p class="hidden" id="categoria"><%=producto.getCategoria()%></p>
                        <p class="nombre"><%=producto.getNombre()%></p>
                        <p class="marca"><%=producto.getProveedor()%></p>
                        <p class="precio">S/<%=String.format("%.2f", producto.getPrecio())%></p>
                        <% if(usuario != null) { ; %>
                        <div class="flex-btn">
                                <button type="submit" class="option-btn">Editar</button>
                                <button type="button" class="delete-btn" >Eliminar</button>
                        </div>
                        <% } else{ %>
                        <% } %>
                    </div>
                <% } %>
            </div>
        </main>
        
