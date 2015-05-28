<%-- 
    Document   : olvidopassword
    Created on : 19/05/2015, 07:52:42 AM
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>password</title>
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
        
               
        <div class="olvidopass">
            <div class="small-5 columns">

                <form>
                    <fieldset>
                        <legend>Enviar</legend>

                        <label style="color: #ffffff;">Ingrese correo
                            <input type="email" placeholder="Ingrese su correo electronico" required/>
                        </label>
                       
                       
                        <input type="submit" value="ENVIAR" class="button round" style="position:absolute; left:110px; top:200px;" />

                    </fieldset>
                </form>

            </div>
        </div>
        
        
        
    </body>
</html>
