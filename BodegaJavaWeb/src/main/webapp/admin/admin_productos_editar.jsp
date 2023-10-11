<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Administrador</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

        <style>
            body {
                background-image: url('https://cloudappi-web.s3.eu-west-1.amazonaws.com/wp-content/uploads/2022/02/02090502/imagenes-blog.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
                background-attachment: fixed;
            }
        </style>
    </head>
    <body>
        <%@include file="admin_header.jsp" %>
        <div class="container">
            <br>
            <div class="row">
                <div class="col-md-12 rounded p-4 mb-4" style="background: rgba(255,255,255, 0.85);backdrop-filter: blur(5px)">
                    <div class="text-center mb-3">
                        <h2 class="mb-3">Modificando Registro</h2>
                        <!-- CAMBIAR RUTA DE IMAGEN DE PRODUCTO -->
                        <img width="180" src="/Web_Proyect/assets/images/<?= $producto['imagen']?>" alt="">
                    </div>
                    <form action="" method="POST" autocomplete="off" enctype="multipart/form-data">
                        <div class="mb-3 row">
                            <label for="txtId" class="col-sm-2 col-form-label">ID</label>
                            <div class="col-sm-10">
                                <input type="text" name="txtId" readonly class="form-control-plaintext" id="txtId"
                                       value="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="txtNameProd" class="col-sm-2 col-form-label">Nombre</label>
                            <div class="col-sm-10">
                                <input type="text" name="txtNameProd" class="form-control" id="txtNameProd"
                                       value="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="txtImgProd" class="col-sm-2 col-form-label">Imagen</label>
                            <div class="col-sm-10">
                                <input type="file" name="txtImgProd" class="form-control" id="txtImgProd">
                                <input type="hidden" name="imagenRuta" value="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="txtDescProd" class="col-sm-2 col-form-label">Descripción</label>
                            <div class="col-sm-10">
                                <input type="text" name="txtDescProd" required class="form-control" id="txtDescProd"
                                       value="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="txtCateProd" class="col-sm-2 col-form-label">Categoría</label>
                            <div class="col-sm-10">
                                <select class="form-select" aria-label="Default select example" id="txtCateProd" name="txtCateProd">
                                    <?php
                                    $categorias = array(
                                    'BEBIDAS', 'CARNES, AVES Y PESCADOS', 'CONGELADOS', 'CUIDADO PERSONAL',
                                    'FRUTAS Y VERDURAS', 'LACTEOS', 'LIMPIEZA', 'PANADERIA Y PASTELERIA');

                                    foreach ($categorias as $categoria) {
                                        $selected = ($producto['categoria'] == $categoria) ? 'selected' : '';
                                        echo "<option value='$categoria' $selected>$categoria</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="txtProvProd" class="col-sm-2 col-form-label">Proveedor</label>
                            <div class="col-sm-10">
                                <input type="text" name="txtProvProd" class="form-control" id="txtProvProd"
                                       value="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="txtCostProd" class="col-sm-2 col-form-label">Precio</label>
                            <div class="col-sm-10">
                                <input type="text" name="txtCostProd" class="form-control" id="txtCostProd"
                                       pattern="[0-9]+(\.[0-9]+)?" value="">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="txtCantProd" class="col-sm-2 col-form-label">Stock</label>
                            <div class="col-sm-10">
                                <input type="number" name="txtCantProd" class="form-control" id="txtCantProd"
                                       min="0" max="100" value="">
                            </div>
                        </div>
                        <div>
                            <input type="submit" class="btn btn-success mt-3" value="Modificar">
                            <a class="btn btn-secondary ms-2 mt-3" href="admin_productos.jsp">Cancelar</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
    </body>
</html>
