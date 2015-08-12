<%--
    Document   : index
    Created on : 12/05/2015, 11:20:25 AM
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

        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>

        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <!-- carrusel-->
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
        <!-- carrusel -->

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>

    <body >


        <%
            ConexionDB mysql = new ConexionDB();
            Connection cn = mysql.Conectar();

            String confir = "No conectado";

            if (cn != null) {

                confir = "Conectado";
            }

        %>



        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Inicio</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">                      
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Acerca</a></li>
                        <li><a href="#">Ayuda</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <button type="button" class="btn btn-info" onclick="alert('<%= confir%>');">Conectar!</button> 

    <center>
        <p><img src="imagenes/logo9.png"  width="270" height="250" alt="logo8"></p>
    </center>
    
    <div class="img_rotar">
        <img src="imagenes/pg.jpg"  width="320">
    </div>
    <div class="img_ado">
        <img src="imagenes/ad.jpg"  width="300">
    </div>

    
    <center>
        <div class="text" style="position:relative;  color: #ffffff; font-family: Comic Sans MS, Arial, MS Sans Serif; width: 40%;">
            <p>
                Bienvenios a la pagina donde todos amamos nuestros animales
                aca encontraremos hermosas mascotas en busca de un hogar,
                y tambien recibiremos mascotas que se encuentren abandonadas 
                para brindarles un mejor cuidado y asi donarlos a un hogar con amor.
            </p>  
        </div> 
    </center>

    <center>
        <input onclick="location.href = 'login.jsp'" type="submit" class="btn btn-info" value="Ingresar">
        <input onclick="location.href = 'registro.jsp'" type="submit" style="margin-left: 40px;"  class="btn btn-info" value="Registrarse">   
    </center>


    <!-- CARRUSEL-->
    <center>
        <div class="carru" style="position: relative; top: 77px;">
            <div id="wowslider-container1" >
                <div class="ws_images"><ul>
                        <li><img src="data1/images/noalmaltratoanimal.jpg" alt="" title="" id="wows1_0"/></li>
                        <li><a href="http://wowslider.com"><img src="data1/images/portada.jpg" alt="simple jquery slider" title="" id="wows1_1"/></a></li>
                        <li><img src="data1/images/catdoggrooming960x360.jpg" alt="ADOPTAME" title="ADOPTAME" id="wows1_2"/></li>
                    </ul></div>
                <div class="ws_bullets"><div>
                        <a href="#" title=""><span><img src="data1/tooltips/noalmaltratoanimal.jpg" alt=""/>1</span></a>
                        <a href="#" title=""><span><img src="data1/tooltips/portada.jpg" alt=""/>2</span></a>
                        <a href="#" title="ADOPTAME"><span><img src="data1/tooltips/catdoggrooming960x360.jpg" alt="ADOPTAME"/>3</span></a>
                    </div></div><div class="ws_script" style="position:absolute;left:-99% "><a href="http://wowslider.com/vi">jquery image slider</a> by WOWSlider.com v8.0</div>
                <div class="ws_shadow"></div>
            </div>	
            <script type="text/javascript" src="engine1/wowslider.js"></script>
            <script type="text/javascript" src="engine1/script.js"></script>
        </div>
    </center>
    <!-- CARRUSEL-->


</body>

</html>
