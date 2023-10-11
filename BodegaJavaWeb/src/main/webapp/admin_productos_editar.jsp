<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="Entity.Producto"%>

<%
    // Get the product from the request.
    Producto producto = (Producto) request.getAttribute("producto");
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar Producto</title>
    <link href="admin_style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

    <section class="add-products">

        <h1 class="heading">Editar Producto</h1>

        <form action="AdminController" method="POST" enctype="multipart/form-data">
            <input hidden type="text" name="action" value="update">
            <div class="imagen">
                        <img src="assets/img/productos/<%=producto.getImagen()%>" alt="<%=producto.getDescripcion()%>">
                    </div>
            <input hidden type="text" name="id" value="<%=producto.getId()%>">
            <input type="text" class="box"  placeholder="Ingresa el nombre del producto" name="nombre" value="<%=producto.getNombre()%>">
            <input type="text" class="box"  placeholder="Ingresa la descripcion del producto" name="descripcion" value="<%=producto.getDescripcion()%>">
            <input type="text" class="box"  placeholder="Ingresa el proovedor del producto" name="proveedor" value="<%=producto.getProveedor()%>">
            <input type="number" class="box" placeholder="Ingresa el precio del producto" name="precio" value="<%=producto.getPrecio()%>">
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
            <input type="number" class="box" placeholder="Cantidad" name="stock" value="<%=producto.getStock()%>">
            <input type="file" name="imagen" class="box">
            <input type="submit" value="Guardar producto" class="btn" name="save_product">
        </form>
    </section>

</body>
</html>
