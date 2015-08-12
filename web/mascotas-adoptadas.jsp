<%-- 
    Document   : mascotas-adoptadas
    Created on : 12/08/2015, 01:19:09 PM
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <%
        String usuario = (String) session.getAttribute("usuario");
        String rol = (String) session.getAttribute("rol");
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
                                <li><a href="GenerarPDF">Descargar PDF</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="cerrarsesion.jsp" >Cerrar sesion</a></li>   
                            </ul>
                        </li>
                        <li><a class="btn btn-link">  <%= usuario%>  </a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="njksn" style="position: absolute; top: 30px;">
            </div>
            <table class=" table table-striped ">
                <thead>
                    <tr class="active">
                        <th>Nombre de la mascota</th>
                        <th>Dueño de la mascota</th>
                        <th>Usuario que la adopta</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        try {
                            boolean buscar = false;
                            String nombre_mascota = "";
                            String dueño_mascota = "";
                            String usu = "";

                            ConexionDB sqlite = new ConexionDB();
                            java.sql.Connection cn = sqlite.Conectar();
                            Statement st = cn.createStatement();
                            ResultSet rs;

                            String consulta = "Select * from adoptadas";

                            rs = st.executeQuery(consulta);

                            while (rs.next()) {
                                nombre_mascota = rs.getString(1);
                                dueño_mascota = rs.getString(2);
                                usu = rs.getString(3);

                                buscar = true;

                    %>

                    <tr>

                        <td><%= nombre_mascota%></td>
                        <td><%= dueño_mascota%></td>
                        <td><%= usu%></td>

                        <td>


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

            </table>
        </div>





    </body>
</html>
