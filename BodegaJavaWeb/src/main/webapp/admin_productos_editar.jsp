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

        <form action="EditarProductoController" method="POST" enctype="multipart/form-data">
            <input hidden type="text" name="id" value="<%=producto.getId()%>">
            <input type="text" class="box" required maxlength="100" placeholder="Ingresa el nombre del producto" name="nombreEdit" value="<%=producto.getNombre()%>">
            <input type="text" class="box" required maxlength="100" placeholder="Ingresa la descripcion del producto" name="descripcionEdit" value="<%=producto.getDescripcion()%>">
            <input type="text" class="box" required maxlength="100" placeholder="Ingresa el proovedor del producto" name="proveedorEdit" value="<%=producto.getProveedor()%>">
            <input type="number" class="box" placeholder="Ingresa el precio del producto" name="precioEdit" value="<%=producto.getPrecio()%>">
            <select name="categoriaEdit" class="box">
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
            <input type="number" min="0" class="box" required max="9999999999" placeholder="Cantidad" name="stockEdit" value="<%=producto.getStock()%>">
            <input type="file" name="imagenEdit" class="box">
            <input type="submit" value="Guardar producto" class="btn" name="save_product">
        </form>
    </section>

</body>
</html>
