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

    <body style="margin:auto">

        <div class="container">

            <div class="menuu">
                <nav class="navbar navbar-default">
                    <div class="container-fluid"> 
                        <div class="navbar-header">
                            <a class="navbar-brand"  href="index.jsp">inicio</a>
                            <a class="navbar-brand"  href="#" style="margin-left:1100px;">Acerca</a>
                            <a class="navbar-brand"  href="#" style="left: 1000px;">Ayuda</a>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="registro">
                <form style="height: 0;" action="RegistroServlet" method="post" >
                    <fieldset  style="height: 400px; width: 40%; left: 50px;  top:70px;">
                        <legend style="color: #ffffff;">Registro</legend>
                        <br>
                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="control-label" for="focusedInput">Nombre de usuario</label>
                            <input class="form-control" name="usuario" type="text" placeholder="Ingrese su nombre" required>
                        </div>
                                         
                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="control-label" for="focusedInput">Email</label>
                            <input class="form-control" name="email" type="text" placeholder="Ingrese su correo" required/>
                        </div>
                                              
                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="control-label" for="focusedInput">Contraseña</label>
                            <input class="form-control" name="password" type="text" placeholder="Ingrese su contraseña" required/>
                        </div>          
                        <br>
                        <br>
                        <input  class="btn btn-success" type="submit" value="GUARDAR" style="position:absolute; left:600px; top:450px;"/>

                    </fieldset>
                </form>
            </div>
        </div>
    </body>
</html>
