<%--
    Document   : index
    Created on : 12/05/2015, 11:20:25 AM
    Author     : Cristian
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="conecta.db.ConexionDB"%>

<!DOCTYPE html>
<%
    session.invalidate();
%>
<html>
    <head>
        <!-- KICKSTART -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/kickstart.js"></script> 
        <link rel="stylesheet" href="css/kickstart.css" media="all" />
        <!-- KICKSTART -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <!-- carrusel-->
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
        <!-- carrusel -->
    </head>

    <body style="margin:auto">


        <ul class="menu">
            <%
                ConexionDB mysql = new ConexionDB();
                Connection cn = mysql.Conectar();

                String confir = "No conectado";

                if (cn != null) {

                    confir = "Conectado";
                }

            %>

            <li ><a class="fa fa-home" href="">inicio</a></li>        
            <button type="button" onclick="alert('<%= confir%>')"  >Conectar!</button>         

            <li ><a class="active" href="#" style="left: 1000px;">Acerca</a></li>  
            <li ><a class="active" href="#" style="left: 1000px;" >Ayuda</a></li>

        </ul>

        <p><img src="imagenes/logo9.png" style="position:absolute; left:510px; top:50px;" width="270" height="250" alt="logo8"></p>

        <div class="img_rotar">
            <img src="imagenes/pg.jpg"  width="320" border="4">
        </div>
        <div class="img_ado">
            <img src="imagenes/ad.jpg"  width="300">
        </div>

        <div class="text" style="position:absolute; left:390px; top:250px;">
            <p>
                Bienvenios a la pagina donde todos amamos nuestros animales
                aca encontraremos hermosos animales con busca de un hogar
                y tambien recibiremos mascotas que no tengan un hogar
                para brindarles un mejor cuidado y asi donarlos a un hogar con amor.
            </p>  
        </div> 

        <input onclick="location.href = 'registro.jsp'" type="submit" class="blue" style="position:absolute; left:670px; top:375px;"value="Registrarse">
        <input onclick="location.href = 'login.jsp'" type="submit" class="blue" style="position:absolute; left:520px; top:375px;" value="Ingresar">


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
