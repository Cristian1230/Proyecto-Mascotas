<%-- 
    Document   : olvidopassword
    Created on : 19/05/2015, 07:52:42 AM
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
        <title>password</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>

    <body style="margin:auto">
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="container-fluid"> 
                    <div class="navbar-header">
                        <a class="navbar-brand"  href="index.jsp">inicio</a>
                    </div>
                </div>
            </nav>


            <div class="ingreso2" style="margin-left: 419px;">
                <form action="usuarioServlet" method="post">
                    <fieldset  style=" height:90px; width: 30%; left: 50px;">
                        <legend style=" color: #ffffff;" >Recuperar contraseña</legend>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="control-label" for="focusedInput">Correo</label>
                            <input class="form-control" name="usuario" type="text" placeholder="Ingrese su correo"requiere/>
                        </div>

                        <input type="submit" value="ENVIAR" class="btn btn-success" style="position:absolute; left:599px; top:310px;" />

                    </fieldset>
                </form>
            </div>
        </div>
    </body>
</html>
