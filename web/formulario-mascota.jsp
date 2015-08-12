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
        <!-- bootstrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- bootstrap-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mascota</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <%
        String usuario = (String) session.getAttribute("usuario");
    %>

     <body>

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="bienvenida.jsp">inicio</a>
                </div>

                <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                     
                        <li class="dropdown" >
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Cuenta <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="formulario-mascota.jsp">Ingresar mascotas</a></li>
                                <li><a href="mascotas.jsp">Mascotas</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="cerrarsesion.jsp" >Cerrar sesion</a></li>   
                            </ul>
                        </li>
                           <li><a class="btn btn-link">  <%= usuario%>  </a></li>
                    </ul>
                </div>
            </div>
        </nav>

     <center>
                <form style="height: 0;"  action="Rmascota" method="post" >
                    <fieldset  style="position: relative; height: 750px; width: 27%; left: 8px;  top:12px;">
                        <legend style="color: #ffffff;">Registro de mascota</legend>

                        <input type="hidden"   name="usuario" value="<%= usuario%>"/>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Tipo</label>
                            <input class="form-control" name="tipo" type="text" placeholder="Ingrese tipo de mascota" required>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Nombre de la mascota</label>
                            <input class="form-control" name="nombre" type="text" placeholder="nombre de la mascota" required>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Raza</label>
                            <input class="form-control" name="raza" type="text" placeholder="raza de la mascota" required>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Edad</label>
                            <input class="form-control" name="edad" type="text" placeholder="Ingrese edad de la mascota" required>
                        </div>
                        
                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Color de la mascota</label>
                            <input class="form-control" name="color" type="text" placeholder="Color de la mascota" required>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Temperamento</label>
                            <input class="form-control" name="temperamento" type="text" placeholder="Ingrese el temperamento" required>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Vacunas</label>
                            <br>
                            <select class="form-control" name="vacunas">
                                <option value="Si" >Si  </option>
                                <option value="No" >No  </option>
                            </select>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Esterilizado</label>
                             <br>
                            <select class="form-control" name="esterilizado">
                                <option value="Si" >Si  </option>
                                <option value="No" >No  </option>
                            </select>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Desparacitado</label>
                             <br>
                            <select class="form-control" name="desparacitado">
                                <option value="Si" >Si  </option>
                                <option value="No" >No  </option>
                            </select>
                        </div>

                        <div class="form-group" style="left: 40px; color: #ffffff;">
                            <label class="nav navbar-nav navbar-btn" for="focusedInput">Foto</label>
                            <input class="form-control" name="foto" type="text" placeholder="Ingrese la URL de la imagen" >
                        </div>
                        <br>
                        <br>
                        <input  class="btn btn-success" type="submit" value="GUARDAR"/>

                    </fieldset>

                </form>
     </center>
             
            
        
    </body>
</html>
