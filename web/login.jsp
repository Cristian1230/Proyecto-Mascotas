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
        <!-- KICKSTART -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/kickstart.js"></script> 
        <link rel="stylesheet" href="css/kickstart.css" media="all" />
        <!-- KICKSTART -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>

    <body style="margin:auto">

        <ul class="menu">          
            <li><a href="index.jsp">inicio</a></li>          
        </ul>


        <div class="ingreso">
            <form action="usuarioServlet" method="post">

                <fieldset  style=" height: 400px; width: 40%; left: 50px;">
                    <legend>Ingresar</legend>

                    <label class="logi" for="text1">Usuario
                        <br>
                        <input type="text" name="usuario" placeholder="Ingrese su usuario" required/>

                        <br>
                        <br>
                    
                        <label style="color: #000000;">password
                            <br>
                            <input  type="password" name="password" placeholder="Ingrese su contraseña" required/>       

                            <br>
                            <br>

                            <a style="color: #000000;" href="olvidopassword.jsp">Olvidastes tu contraseña?</a>
                            <br>
                            
                            <a style="color: #000000;" href="registro.jsp">Registrarse?</a>
                        </label>
                    </label>
                    <input type="submit" value="INGRESAR" class="medium green" style="position:absolute; left:120px; top:300px;">

                </fieldset>

            </form>

        </div>


    </body>
</html>
