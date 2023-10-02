
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
        <link href="admin_style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>

        <section class="add-products">

            <h1 class="heading">Añadir Producto</h1>

            <form action="AdminController" method="POST" enctype="multipart/form-data">
                        <input type="text" class="box" required maxlength="100" placeholder="Ingresa el nombre del producto" name="nombre">
                        <input type="text" class="box" required maxlength="100" placeholder="Ingresa la descripcion del producto" name="descripcion">
                        <input type="text" class="box" required maxlength="100" placeholder="Ingresa el proovedor del producto" name="proveedor">
                        <input type="number" class="box" placeholder="Ingresa el precio del producto" name="precio">
                        <select name="categoria" class="box">
                              <option value="">Selecciona la categoria</option>
                              <option value="CARNES, AVES Y PESCADOS">CARNES, AVES Y PESCADOS</option>
                              <option value="CONGELADOS">CONGELADOS</option>
                              <option value="LACTEOS">LACTEOS</option>
                              <option value="FRUTAS Y VERDURAS">FRUTAS Y VERDURAS</option>
                              <option value="PANADERIA Y PASTELERIA">PANADERIA Y PASTELERIA</option>
                              <option value="BEBIDAS">BEBIDAS</option>
                              <option value="CUIDADO PERSONAL">CUIDADO PERSONAL</option>
                              <option value="LIMPIEZA">LIMPIEZA</option>
                            </select>
                        <input type="number" min="0" class="box" required max="9999999999" placeholder="Cantidad" name="stock">
                        <input type="file" name="imagen" class="box" required>
                        <input type="submit" value="Agregar producto" class="btn" name="add_product">
                      </form>


        </section>




        <section class="show-products">

            <h1 class="heading">Productos Añadidos</h1>

            <div class="box-container">

                <% for (Producto producto : productos) {%>
                <div class="box">
                    <div class="imagen">
                        <img src="assets/img/productos/<%=producto.getImagen()%>" alt="<%=producto.getDescripcion()%>">
                    </div>
                    <p class="hidden" id="categoria"><%=producto.getCategoria()%></p>
                    <p class="nombre"><%=producto.getNombre()%></p>
                    <p class="marca"><%=producto.getProveedor()%></p>
                    <p class="stock">Stock: <%=producto.getStock()%></p>
                    <p class="precio">S/<%=String.format("%.2f", producto.getPrecio())%></p>
                    <% if (usuario != null) {; %>
                    <div class="flex-btn">
                        <button type="submit" class="option-btn">Editar</button>
                        <button type="button" class="delete-btn" >Eliminar</button>
                    </div>
                    <% } else { %>
                    <% } %>
                </div>
                <% }%>

            </div>

        </section>

    </body>
</html>