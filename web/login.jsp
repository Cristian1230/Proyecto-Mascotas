<%-- 
    Document   : login
    Created on : 12/05/2015, 11:10:55 AM
    Author     : Cristian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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

        <div class="ingreso">
            <div class="small-5 columns">
     
                <form action="usuarioServlet" method="post">
                   
                    <fieldset>
                        <legend>Ingresar</legend>
                        
                     

                        <label style="color: #ffffff;">Usuario
                            <input type="text" name="usuario" placeholder="Ingrese su nombre de usuario" required/>
                        </label>

                        <label style="color: #ffffff;">password
                            <input  type="password" name="password" placeholder="Ingrese su contraseña" required/>
                            
                        </label>
                        
                        
                        <a style="color: #ffffff;" href="olvidopassword.jsp">Olvidastes tu contraseña?</a>
                        <br>
                        <a style="color: #ffffff;" href="registro.jsp">Registrarse?</a>
                        
                        <input type="submit" value="INGRESAR" class="button round" style="position:absolute; left:110px; top:290px;" />

                    </fieldset>
                </form>

            </div>
        </div>
      



    </body>
</html>
