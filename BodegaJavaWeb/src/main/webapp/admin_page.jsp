<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, java.io.*, java.util.*" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Inicio</title>

   <!-- Include your CSS and Font Awesome -->
   <link href="admin_style.css" rel="stylesheet" type="text/css"/>
</head>
<body>


<section class="dashboard">
   <h1 class="heading">dashboard</h1>

   <div class="box-container">

      <div class="box">
         <h3><!-- Box 1 Text Here --></h3>
         <p>Usuarios</p>
         <a href="admin_user.jsp" class="btn">Ver usuarios</a>
      </div>

      <div class="box">
         <h3><!-- Box 2 Text Here --></h3>
         <p>Admin</p>
         <a href="" class="btn">Ver admins</a>
      </div>

      <div class="box">
         <h3><!-- Box 3 Text Here --></h3>
         <p>Productos</p>
         <a href="admin_productos.jsp" class="btn">Ver productos</a>
      </div>

   </div>
</section>

<!-- Include your JavaScript -->
<script src="../js/admin_script.js"></script>

</body>
</html>
