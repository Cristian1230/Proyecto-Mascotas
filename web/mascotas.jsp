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
        <!-- KICKSTART -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/kickstart.js"></script> 
        <link rel="stylesheet" href="css/kickstart.css" media="all" />
        <!-- KICKSTART -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">

    </head>
    <%
        String g = (String) session.getAttribute("name");
    %>
  <body style="margin:auto">

        <ul class="menu">          
            <li><a class="fa fa-home" href="index.jsp">inicio</a></li>          


            <div class="fa fa-inbox" style=" margin-left:1090px;">

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

            <div class="tabla" >
            <table cellspacing="0" cellpadding="0" >
                <thead><tr>
                        <th>usuario</th>
                        <th>Tipo</th>
                        <th>Nombre</th>
                        <th>Raza</th>
                        <th>Edad</th>
                    </tr></thead>


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
