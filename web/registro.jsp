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
        <!-- KICKSTART -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/kickstart.js"></script> 
        <link rel="stylesheet" href="css/kickstart.css" media="all" />
        <!-- KICKSTART -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">       
    </head>

    <body style="margin:auto">

        <ul class="menu">          
            <li><a href="index.jsp">inicio</a></li>          
            <li ><a class="active" href="#" style="left: 1130px;">Acerca</a></li>  
            <li ><a class="active" href="#" style="left: 1130px;" >Ayuda</a></li>
        </ul>


        <div class="registro"   >


            <form style="height: 0;" >
                <fieldset  style="height: 400px; width: 40%; left: 50px;  top:50px;">
                    <legend>Registro</legend>

                    <label  class="regis" style="color: #000000;">Nombre usuario
                        <br>
                        <input type="text" name="usuario" placeholder="Ingrese su nombre" required/>
                        <br>
                        <br>
                        <label  style="color: #000000;">Email
                            <br>
                            <input type="text"  placeholder="Ingrese su correo" required/>                                           
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Contraseña
                            <br>
                            <input type="password"  placeholder="Ingrese su contraseña" required/> 
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Confimar Contraseña
                            <br>
                            <input type="password"  placeholder="confirme su contraseña" required/> 

                        </label>
                    </label>
                    <input onclick="location.href = 'index.jsp'" class="medium green" type="submit" value="GUARDAR" style="position:absolute; left:120px; top:335px;"/>

                </fieldset>
            </form>
        </div>



    </body>
</html>
