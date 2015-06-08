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
        <!-- KICKSTART -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/kickstart.js"></script> 
        <link rel="stylesheet" href="css/kickstart.css" media="all" />
        <!-- KICKSTART -->
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
    <%
        String g = (String) session.getAttribute("name");
    %>


    <body style="margin:auto">

        <ul class="menu">          
            <li><a class="fa fa-home" href="index.jsp">inicio</a></li>          


            <div class="fa fa-inbox" style=" margin-left:1100px;">

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
