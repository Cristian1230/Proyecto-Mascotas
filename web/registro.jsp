<%-- 
    Document   : registro
    Created on : 12/05/2015, 11:17:15 AM
    Author     : Cristian
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="conecta.db.ConexionDB"%>
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
        <title>Registro</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">       
    </head>

    <body>

         <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Inicio</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">                      
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Acerca</a></li>
                        <li><a href="#">Ayuda</a></li>
                    </ul>
                </div>
            </div>
        </nav>

    <center style="margin-top: 78px;">
                <form style="height: 0;" action="RegistroServlet" method="post" >
                    <fieldset  style="height: 400px; width: 28%; left: 50px;  top:70px;">
                        <legend style="color: #ffffff;">Registro</legend>
                        <br>
                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn"  for="focusedInput">Nombre de usuario</label>
                            <input class="form-control" name="usuario" type="text" placeholder="Ingrese su nombre" pattern="^[a-z\\d_]{4,15}$" >
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn"  for="focusedInput">Email</label>
                            <input class="form-control" name="email" type="text" placeholder="Ingrese su correo"  required/><!-- pattern="^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"-->
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn"  for="focusedInput">Contraseña</label>
                            <input class="form-control" name="password" type="text" placeholder="Ingrese su contraseña" required>
                        </div>          
                        <br>
                        <br>
                        <input  class="btn btn-success" type="submit" value="GUARDAR" style=""/>
                    </fieldset>
                </form>
    </center>
    </body>
</html>
