<%-- 
    Document   : registro
    Created on : 12/05/2015, 11:17:15 AM
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="css/foundation.css" type="text/css">
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">       
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
                    <li class="active"><a href="#">Acerca</a></li>
                </ul>
                <ul class="right">
                    <li class="active"><a href="#">Ayuda</a></li>
                </ul>

            </section>
        </nav>

        <div class="registro">
            <div class="small-5 columns">

                <form>
                    <fieldset>
                        <legend>Registro</legend>
                  
                        <label style="color: #ffffff;">Nombre Usuario
                            <input type="text" placeholder="Ingrese su nombre completo">
                        </label>                                                   

                        <label style="color: #ffffff;">Email
                            <input type="text" placeholder="Ingrese su nombre con el que ingresara">
                        </label>

                        <label  style="color: #ffffff;">Contraseña
                            <input type="password" placeholder="Ingrese su contraseña">
                        </label>

                        <label style="color: #ffffff;">Confimar Contraseña
                            <input type="password" placeholder="confirme su contraseña">
                        </label>
                        
                         <input onclick="location.href = 'index.jsp'" class="button radius" type="submit" value="GUARDAR" style="position:absolute; left:120px; top:420px;"/>

                    </fieldset>
                </form>
            </div>
        </div>


    </body>
</html>
