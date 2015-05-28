<%-- 
    Document   : bienvenida
    Created on : 25/05/2015, 09:34:27 AM
    Author     : Cristian
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="conecta.db.ConexionDB"%>
<!DOCTYPE html>
<% 
   String g = (String) session.getAttribute("name");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/foundation.css" type="text/css">
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <!-- carrusel-->
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
        <!-- carrusel -->
       
        <title>Bienvenido</title>
    </head>
    <body>
        <nav class="top-bar" data-topbar="" role="navigation">
            <ul class="title-area">
                <li class="name">
                    <h1><a href="index.jsp">Inicio</a></h1>
                </li>
                <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
            </ul>

            <section class="top-bar-section">

                <ul class="right">
                    <li> <a style="left: 800px;">  <%= g%>  </a></li>
                    <li class="has-dropdown">
                        <a href="#">cerrar sesion</a>
                        <ul class="dropdown">
                            <li><a href ="formulario.jsp">formulario</a></li>
                            <li  class="active"><a href="index.jsp">salir</a></li>
                        </ul>
                    </li>
                </ul>           
            </section>
        </nav>

        <!-- CARRUSEL-->
        <div class="carrucel" >
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
        <!-- CARRUSEL-->


    <center>
        <h1> Bienvenido: <%= g%> a love my pet</h1>
    </center>

</body>

</html>
