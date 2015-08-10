<%-- 
    Document   : bienvenida
    Created on : 25/05/2015, 09:34:27 AM
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
        <link rel="stylesheet" href="css/foundation.css" type="text/css">
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- carrusel-->
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
        <!-- carrusel -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bienvenido</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <%
        String usuario = (String) session.getAttribute("usuario");
        String email = (String) session.getAttribute("email");
    %>


    <body style="margin:auto">
        <div class="container">
            
            <nav class="navbar navbar-default">
                <div class="container-fluid" style="height: 1px;">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="bienvenida.jsp">inicio</a>
                    </div>
                </div>
                <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" aria-expanded="false" style="height: 1px;">
                    <ul class="nav navbar-nav">
                        <li class="dropdown" style="margin-left: 840px;">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Cuenta <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="formulario-mascota.jsp">Ingresar mascotas</a></li>
                                <li><a href="mascotas.jsp">Mascotas</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="cerrarsesion.jsp" >Cerrar sesion</a></li>   
                            </ul>
                        </li>
                    </ul>
                    <li <a class="btn btn-link" style="margin-top: 8px;">  <%= usuario%>  </a></li>
                </div>
            </nav>

            <div class="bien" style="color: #ffffff; font-size: 37px; margin-left: 261px;">
                <font face="Comic Sans MS,Arial,Verdana" > Bienvenido: <%= usuario %> a love my pet</font>
            </div>

            <!-- CARRUSEL-->
            <div class="carrucel">
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

        </div>
        <!-- CARRUSEL-->


    </body>

</html>
