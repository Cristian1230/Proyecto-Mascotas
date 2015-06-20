<%-- 
    Document   : formulario
    Created on : 14/05/2015, 11:15:33 AM
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
        <title>Formulario</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">

    </head>
    <%
        String g = (String) session.getAttribute("name");
    %>
    <body style="margin:auto">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>


        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand"  href="index.jsp">inicio</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav" style="margin-left: 1090px;">
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
                    <li <a class="btn btn-link" style="margin-top: 8px;">  <%= g%>  </a></li>
                </div>
            </div>
        </nav>

            <div class="container">
        <table class=" table table-striped table-hover ">
            <thead>
                <tr class="active">
                    <th>usuario</th>
                    <th>Tipo</th>
                    <th>Nombre</th>
                    <th>Raza</th>
                    <th>Edad</th>
                </tr>
            </thead>

                    <%
                        try {
                            boolean buscar = false;

                            String usuario = "";
                            String tipo = "";
                            String nombre = "";
                            String raza = "";
                            String edad = "";

                            ConexionDB sqlite = new ConexionDB();
                            java.sql.Connection cn = sqlite.Conectar();
                            Statement st = cn.createStatement();
                            ResultSet rs;

                            String consulta = "Select * from vistamascota where usuario='" + g + "' ;";

                            rs = st.executeQuery(consulta);

                            while (rs.next()) {
                                usuario = rs.getString(1);
                                tipo = rs.getString(2);
                                nombre = rs.getString(3);
                                raza = rs.getString(4);
                                edad = rs.getString(5);
                                buscar = true;

                    %>
                    <tbody>
                        <tr>
                            <td><%= usuario%></td>
                            <td><%= tipo%></td>
                            <td><%= nombre%></td>
                            <td><%= raza%></td>
                            <td><%= edad%></td>
                        </tr>      
                        <%
                                }

                                if (buscar) {

                                } else {

                                }
                                out.close();
                            } catch (SQLException ex) {
                                out.println(ex.toString());
                            }

                        %>
                    </tbody>

                </table>

            </div>



    </body>
</html>
