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
    </head>
    <%
        String usuario = (String) session.getAttribute("usuario");
    %>

    <body style="margin:auto">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <div class="container">
            <div class="menuu">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand"  href="index.jsp">inicio</a>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav" style="margin-left: 1070px;">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cuenta <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="formulario-mascota.jsp">formulario de mascotas</a></li>
                                        <li><a href="mascotas.jsp">Mascotas</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="index.jsp">Cerrar sesion</a></li>                         
                                    </ul>
                                </li>
                            </ul>
                            <li <a class="btn btn-link" style="margin-top: 8px;">  <%= usuario%>  </a></li>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="registro">
                <form style="height: 0;" action="RmascotaServlet" method="post" >
                    <fieldset  style="height: 750px; width: 40%; left: 40px;  top:10px;">
                        <legend style="color: #ffffff;">Registro de mascota</legend>
                        
                        <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" for="text1">Tipo
                            <br>
                            <input type="text" class="form-control" name="tipo" placeholder="Ingrese tipo de mascota" required/>
                        </label>
                        <br>
                        <br>
                        <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" for="text1">Nombre
                            <br>
                            <input type="text" class="form-control" name="nombre"  placeholder="nombre de mascota" required/>
                        </label>
                        <br>
                        <br>
                        <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" for="text1">Raza
                            <br>
                            <input type="text" class="form-control" name="raza"  placeholder="raza de mascota" required/>
                        </label>
                        <br>
                        <br>
                        <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" for="text1">Edad
                            <br>
                            <input type="text" class="form-control" name="edad" placeholder="Edad de la mascota" required/>
                        </label>
                        <br>
                        <br>
                        <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" for="text1">Color
                            <br>
                            <input type="text" class="form-control" name="color" placeholder="Color de la mascota" required/>
                        </label>
                        <br>
                        <br>
                        <label style="left: 40px; color: #ffffff;" class="col-lg-9 control-label" for="text1">Temperamento
                            <br>
                            <input type="text" class="form-control" name="temperamento"  placeholder="Temperamento" required/>
                        </label>
                        <br>
                        <br>
                        <label  style="left: 40px; color: #ffffff;"  class="col-lg-9 control-label">Vacunas
                            <br>
                             <input type="text" class="form-control" name="vacunas" placeholder="Si o No" required/>
                        </label>
                        <br>
                        <br>
                        <label  style="left: 40px; color: #ffffff;" class="col-lg-9 control-label">Esterilizado
                            <br>
                            <input type="text" class="form-control" name="esterilizado"  placeholder="Si o No" required/>
                        </label>
                        <br>
                        <br>
                        <label  style="left: 40px; color: #ffffff;" class="col-lg-9 control-label">Desparacitado
                            <br>
                            <input type="text" class="form-control" name="desparacitado"  placeholder="Si o No" required/>
                        </label>
                        <br>
                        <br>
                        <input onclick="location.href = 'index.jsp'" class="btn btn-success" type="submit" value="GUARDAR" style="position:absolute; left:620px; top:820px;"/>

                    </fieldset>

                </form>

            </div>
        </div>
    </body>
</html>
