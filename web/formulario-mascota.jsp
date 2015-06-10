<%-- 
    Document   : formulario-mascota
    Created on : 8/06/2015, 02:47:25 PM
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
        <title>mascota</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <%
        String g = (String) session.getAttribute("name");
    %>

    <body style="margin:auto">

        <ul class="menu">          
            <li><a class="fa fa-home" href="index.jsp">inicio</a></li>          


            <div class="fa fa-inbox" style=" margin-left:1080px;">

                <li><a class="fa fa-user" href="#">cuenta</a>
                    <ul>
                        <li><a href="formulario-mascota.jsp"><i class="fa fa-folder-open"></i>formulario de mascotas</a></li>
                        <li><a href="mascotas.jsp"><i class="fa fa-paw"></i>mascotas</a></li>
                        <li><a href="index.jsp"><i class="fa fa-power-off"></i> cerrar sesion</a></li>
                    </ul>
                </li>
                <li> <a>  <%= g%>  </a></li>
            </div>

        </ul>

        <div class="registro">


            <form style="height: 0;" >
                <fieldset  style="height: 750px; width: 40%; left: 50px;  top:10px;">
                    <legend>Registro de mascota</legend>

                    <label  class="regis" style="color: #000000;">Tipo
                        <br>
                        <input type="text"  placeholder="Ingrese tipo de mascota" required/>
                        <br>
                        <br>
                        <label  style="color: #000000;">Nombre
                            <br>
                            <input type="text"  placeholder="nombre de mascota" required/>                                           
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Raza
                            <br>
                            <input type="text"  placeholder="raza de mascota" required/> 
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Edad
                            <br>
                            <input type="text"  placeholder="Edad de la mascota" required/> 
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Color
                            <br>
                            <input type="text"  placeholder="Color de la mascota" required/> 
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Temperamento
                            <br>
                            <input type="text"  placeholder="Temperamento" required/> 
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Vacunas
                            <br>
                            <input type="radio" name="group1" value="Si"> Si<br>
                            <input type="radio" name="group1" value="No"> No<br>
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Esterilizado
                            <br>
                            <input type="radio" name="group1" value="Si"> Si<br>
                            <input type="radio" name="group1" value="No"> No<br>
                        </label>
                        <br>
                        <br>
                        <label  style="color: #000000;">Desparacitado
                            <br>
                            <input type="radio" name="group1" value="Si"> Si<br>
                            <input type="radio" name="group1" value="No"> No<br>
                        </label>
                        <br>
                        <br>
                    </label>
                    <input onclick="location.href = 'index.jsp'" class="medium green" type="submit" value="GUARDAR" style="position:absolute; left:120px; top:670px;"/>

                </fieldset>
            </form>
        </div>
    </body>
</html>
