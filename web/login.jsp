<%-- 
    Document   : login
    Created on : 12/05/2015, 11:10:55 AM
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
        <title>Login</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>

    <body style="margin:auto">
        <nav class="navbar navbar-default">
            <div class="container-fluid"> 
                <div class="navbar-header">
                    <a class="navbar-brand"  href="index.jsp">inicio</a>
                </div>
            </div>
        </nav>
   
        <div class="ingreso">
            <form action="usuarioServlet" method="post">

                <fieldset  style=" height: 400px; width: 40%; left: 50px;">
                    <legend style="color: #ffffff;">Ingresar</legend>
                    <br>
                    <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" for="text1">Usuario
                        <br>
                        <input type="text" class="form-control" name="usuario" placeholder="Ingrese su usuario" required/>
                    </label>
                    <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" >password
                        <br>
                        <input type="password" class="form-control" name="password" placeholder="Ingrese su contraseña" required/>
                        <br>
                        <a style="color: #ffffff;" href="olvidopassword.jsp">Olvidastes tu contraseña?</a>
                        <br>
                        <a style="color: #ffffff;" href="registro.jsp">Registrarse?</a>                  
                    </label>
      
                    <input type="submit" value="INGRESAR" class="btn btn-success" style="position:absolute; left:610px; top:440px;">
                    

                </fieldset>

            </form>

        </div>
    </body>
</html>
