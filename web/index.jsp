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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" href="css/foundation.css" type="text/css">
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <!-- carrusel-->
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
        <!-- carrusel -->
    </head>

    <body style="margin:auto">


        <nav class="top-bar" data-topbar="" role="navigation">
            <ul class="title-area">
                <li class="name">
                    <h1><a href="index.jsp">Inicio</a></h1>
                </li>
                <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
            </ul>

            <section class="top-bar-section">                         

                <%
                    ConexionDB mysql = new ConexionDB();
                    Connection cn = mysql.Conectar();

                    String confir = "No conectado";

                    if (cn != null) {

                        confir = "Conectado";
                    }

                %>

                <button type="button" onclick="alert('<%= confir%>')">Conectar!</button>


                <ul class="right">
                    <li class="active"><a href="#">Acerca</a></li>
                </ul>
                <ul class="right">
                    <li class="active"><a href="#">Ayuda</a></li>
                </ul>
            </section>
        </nav>

        <p><img src="imagenes/logo9.png" style="position:absolute; left:530px; top:30px;" width="250" height="200" alt="logo8"></p>


        <div class="img_rotar">
            <img src="imagenes/pg.jpg" style="position:absolute; left:10px; top:-50px;" width="320" border="4">
        </div>
        <div class="img_ado">
            <img src="imagenes/ad.jpg" style="position:absolute; left:1020px; top:-50px;" width="300">
        </div>

        <div class="text" style="position:absolute; left:400px; top:220px;">
            <p>
                Bienvenios a la pagina donde todos amamos nuestros animales
                aca encontraremos hermosos animales con busca de un hogar
                y tambien recibiremos mascotas que no tengan un hogar
                para brindarles un mejor cuidado y asi donarlos a un hogar con amor.
            </p>  
        </div> 

        <input onclick="location.href = 'registro.jsp'" type="submit" class="button round" style="position:absolute; left:680px; top:340px;"value="Registrarse">
        <input onclick="location.href = 'login.jsp'" type="submit" class="button round" style="position:absolute; left:500px; top:340px;" value="Ingresar">


        <!-- CARRUSEL-->
        <div class="carru" >
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

    </body>
</html>
