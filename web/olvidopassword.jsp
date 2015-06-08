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
          <!-- KICKSTART -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/kickstart.js"></script> 
        <link rel="stylesheet" href="css/kickstart.css" media="all" />
        <!-- KICKSTART -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>password</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    
 <body style="margin:auto">

        <ul class="menu">          
            <li><a href="index.jsp">inicio</a></li>          
        </ul>
        
               
         <div class="ingreso">
            <form action="usuarioServlet" method="post">

                <fieldset  style=" height: 200px; width: 30%; left: 50px;">
                    <legend>Recuperar contraseña</legend>

                    <label style="top: 20px; left: 30px">Correo
                        <br>
                        <input  type="text" name="usuario" placeholder="Ingrese su correo" required/>
                    </label>
                       
                        <input type="submit" value="ENVIAR" class="medium green" style="position:absolute; left:90px; top:120px;" />

                    </fieldset>
                </form>

            </div>
        </div>
        
        
        
    </body>
</html>
