<%-- 
    Document   : cerrarsession
    Created on : 8/07/2015, 01:59:36 PM
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% session.invalidate();%>
<html>
    <head>
        <!-- bootstrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- bootstrap-->

        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cerrar Session</title>
    </head>
    <body>
    <center>
        <h1 style="color: #ffffff;" >Estas seguro de cerrar sesión? </h1>
        <h1><a href="index.jsp">Si</a> </h1>
    </center>

</body>
</html>
