<%-- 
    Document   : showMascotas
    Created on : 10/08/2015, 07:36:45 AM
    Author     : Cristian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conecta.db.ConexionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title> Datos</title>
    </head>
    <body>
        <div class="container">
            <div class="njksn" style="position: absolute; top: 30px;">
            </div>
            <table class=" table table-striped ">
                <thead>
                    <tr class="active">
                        <%
                            String nombre = request.getParameter("mascota");
                            String usuario = request.getParameter("usuario");

                            ConexionDB sqlite = new ConexionDB();
                            java.sql.Connection cn = sqlite.Conectar();
                            Statement st = cn.createStatement();
                            ResultSet rs;

                            String tipo = "";
                            String raza = "";
                            String edad = "";
                            String color = "";
                            String temperamento = "";
                            String vacunas = "";
                            String esterilizado = "";
                            String desparacitado = "";
                            String foto = "";

                            String consulta = "Select * from mascotas where usuario='" + usuario + "' and nombre='" + nombre + " ' ;";

                            rs = st.executeQuery(consulta);

                            while (rs.next()) {
                                usuario = rs.getString(1);
                                tipo = rs.getString(2);
                                nombre = rs.getString(3);
                                raza = rs.getString(4);
                                edad = rs.getString(5);
                                color = rs.getString(6);
                                temperamento = rs.getString(7);
                                vacunas = rs.getString(8);
                                esterilizado = rs.getString(9);
                                desparacitado = rs.getString(10);
                                foto = rs.getString(11);

                            }
                        %>

                        <td> <%=  usuario%> </td>
                        <td> <%=  tipo%></td>
                        <td> <%=  nombre%></td>
                        <td> <%=  raza%></td>
                        <td> <%=  edad%></td>
                        <td> <%=  color%></td>
                        <td> <%=  temperamento%></td>
                        <td> <%=  vacunas%></td>
                        <td> <%=  esterilizado%></td>
                        <td> <%=  desparacitado%></td>
                        <td> <%=  foto%></td>

                </thead>
            </table>
        </div>


    </body>
</html>
