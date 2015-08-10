<%-- 
    Document   : errorLogin
    Created on : 25/05/2015, 09:34:53 AM
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
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/npm.js"></script>
        <!-- bootstrap-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <title>Error</title>
    </head>
    <nav class="navbar navbar-default">
        <div class="container-fluid"> 
            <div class="navbar-header">
                <a class="navbar-brand"  href="index.jsp">inicio</a>
                <a class="navbar-brand"  href="#" style="margin-left:1100px;">Acerca</a>
                <a class="navbar-brand"  href="#" style="left: 1000px;">Ayuda</a>
            </div>
        </div>
    </nav>

    <center>

        <div class="ima_error">
            <img src="imagenes/error.jpg">
        </div>

        <h1 style="margin-top: 400px; color: #ffffff">Por favor vuelva a loguearse</h1>
        <input  onclick="location.href = 'login.jsp'"  type="submit"  value="INICIO" class="btn btn-info">


    </center>

</body>
</html>
