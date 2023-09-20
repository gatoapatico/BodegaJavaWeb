
<%@page import="Model.UsuarioModel"%>
<%@page import="java.util.List"%>
<%@page import="Entity.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UsuarioModel model = new UsuarioModel();
    List<Usuario> usuarios = model.obtenerUsuarios();
    int cont = 0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
    </head>
    <body style="margin:70px;">
        
        <main>
            <h1>Pagina Administración!</h1>
            <h2 style="margin-bottom: 50px;">Gestión de Usuarios de la tienda MARISOL</h2>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Contraseña</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody id="table-body">
                    <% for (Usuario usu : usuarios) { %>
                    <% cont++;%>
                    <tr>
                        <th scope="row"><%=usu.getId()%></th>
                        <td><%=usu.getNombre()%></td>
                        <td><%=usu.getApellido()%></td>
                        <td><%=usu.getCorreo()%></td>
                        <td><%=usu.getPassword()%></td>
                        <td>
                            <form action="" method="POST">
                                <input type="hidden" name="accion" id="accion" value="ver" />
                                <input type="hidden" name="usuario-codigo" id="usuario-codigo" value="<%=usu.getId()%>" />
                                <button type="submit" class="btn btn-success">Editar</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal<%=usu.getCorreo()%>">Eliminar</button>
                            </form>
                        </td>
                    </tr>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal<%=usu.getCorreo()%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Advertencia: Está opción no podrá deshacerse!</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    ¿Seguro que deseas eliminar el producto <%=usu.getNombre()%>?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                    <form action="" method="POST">
                                        <input type="hidden" name="accion" id="accion" value="eliminar" />
                                        <input type="hidden" name="usuario-codigo" id="usuario-codigo" value="<%=usu.getId()%>" />
                                        <button type="submit" class="btn btn-danger">Eliminar Producto</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <% }%>
                </tbody>
            </table>
        </main>
    </body>
</html>
