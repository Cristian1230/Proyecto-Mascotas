<%-- 
    Document   : formu-postulacion
    Created on : 12/08/2015, 11:42:49 AM
    Author     : Cristian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conecta.db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- bootstrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- bootstrap-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <title> Datos</title>
    </head>

    <%
       
         String usuario = (String) session.getAttribute("usuario");
        String email = (String) session.getAttribute("email");
    %>
    <body>

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="bienvenida.jsp">inicio</a>
                </div>

                <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">

                        <li class="dropdown" >
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Cuenta <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="formulario-mascota.jsp">Ingresar mascotas</a></li>
                                <li><a href="mascotas.jsp">Mascotas</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="cerrarsesion.jsp" >Cerrar sesion</a></li>   
                            </ul>
                        </li>
                        <li><a class="btn btn-link">  <%= usuario%>  </a></li>
                    </ul>
                </div>
            </div>
        </nav>

                        <% 
                        String nombre_mascota = request.getParameter("mascota");
                        String dueño_mascota = request.getParameter("dueno");
                        %>
    <center>
        <form style="height: 0;"  action="postulacion" method="post" >
            <fieldset  style="position: relative; height: 750px; width: 27%; left: 8px;  top:12px;">
                <legend style="color: #ffffff;">Registro de postulación</legend>

                <input type="hidden"   name="usuario" value="<%= usuario%>"/>

                <div class="form-group" style="left: 40px; color: #ffffff;">
                    <label class="nav navbar-nav navbar-btn" for="focusedInput">Nombre completo</label>
                    <input class="form-control" name="nombre" type="text" placeholder="Ingrese su nombre" required>
                </div>

                <div class="form-group" style="left: 40px; color: #ffffff;">
                    <label class="nav navbar-nav navbar-btn" for="focusedInput">Email</label>
                    <input class="form-control" name="email"  readonly="readonly" value="<%= email %>" type="text" placeholder="Ingrese su correo" required>
                </div>

                <div class="form-group" style="left: 40px; color: #ffffff;">
                    <label class="nav navbar-nav navbar-btn" for="focusedInput">Mascota</label>
                    <input class="form-control" name="mascota" readonly="readonly" value="<%= nombre_mascota %>" type="text" placeholder="Ingrese la mascota" required>
                </div>

                <div class="form-group" style="left: 40px; color: #ffffff;">
                    <label class="nav navbar-nav navbar-btn" for="focusedInput">Dueño</label>
                    <input class="form-control" name="due" readonly="readonly" value="<%= dueño_mascota %>" type="text" placeholder="Ingrese el nombre del dueño" required>
                </div>
                
                 <div class="form-group" style="left: 40px; color: #ffffff;">
                    <label class="nav navbar-nav navbar-btn" for="focusedInput">Telefono</label>
                    <input class="form-control" name="telefono" type="text" placeholder="Ingrese su telefono" required>
                </div>
                
                 <div class="form-group" style="left: 40px; color: #ffffff;">
                    <label class="nav navbar-nav navbar-btn" for="focusedInput">Direccion</label>
                    <input class="form-control" name="direccion" type="text" placeholder="Ingrese su direccion" required>
                </div>

                <br>
                <br>
                <input  class="btn btn-success" type="submit" value="GUARDAR"/>

            </fieldset>

        </form>
    </center>