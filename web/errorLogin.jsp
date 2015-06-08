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
        <!-- KICKSTART -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/kickstart.js"></script> 
        <link rel="stylesheet" href="css/kickstart.css" media="all" />
        <!-- KICKSTART -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <title>Error</title>
    </head>
     <body style="margin:auto">
        <ul class="menu">          
            <li><a class="fa fa-home" href="index.jsp">inicio</a></li>          
        </ul>

    <center>

        <div class="img_error" style="margin-top: 50px;">
            <img src="imagenes/error.jpg">
        </div>

        <h1>Por favor vuelva a loguearse</h1>
       <input  onclick="location.href =  'login.jsp'"  type="submit"  value="INICIO" class="large red" >
       

    </center>

</body>
</html>
