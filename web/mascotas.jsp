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
                            <th>foto</th>
                            <th>Usuario</th>
                            <th>Tipo</th>
                            <th>Nombre</th>
                            <th>Raza</th>
                            <th>Edad</th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                boolean buscar = false;
                                String foto = "";
                                String usu = "";
                                String tipo = "";
                                String nombre = "";
                                String raza = "";
                                String edad = "";

                                ConexionDB sqlite = new ConexionDB();
                                java.sql.Connection cn = sqlite.Conectar();
                                Statement st = cn.createStatement();
                                ResultSet rs;

                                String consulta = "Select * from vistamascota";

                                rs = st.executeQuery(consulta);

                                while (rs.next()) {
                                    foto = rs.getString(1);
                                    usu = rs.getString(2);
                                    tipo = rs.getString(3);
                                    nombre = rs.getString(4);
                                    raza = rs.getString(5);
                                    edad = rs.getString(6);
                                    buscar = true;

                        %>

                        <tr>
                            <td><img src="<%= foto%>" height="100px;"></td>
                            <td><%= usu%></td>
                            <td><%= tipo%></td>
                            <td><%= nombre%></td>
                            <td><%= raza%></td>
                            <td><%= edad%></td>                        
                            <td>
                                <form method="post"  action="showMascotas.jsp">
                                    <input type="hidden" value="<%=usu%>" name="usuario">
                                    <input type="hidden" value="<%=nombre%>" name="mascota">            
                                    <input class="btn btn-success" type="submit" value="mostrar">
                                </form>                               
                            </td>
                             <td>
                                <form method="post" action="editMascotas.jsp">
                                    <input type="hidden" value="<%=usu%>" name="usuario">
                                    <input type="hidden" value="<%=nombre%>" name="mascota">            
                                    <input class="btn btn-warning" type="submit"   value="Editar">
                                </form>                               
                            </td>
                             <td>
                               
                                <form  method="post"  action="deleteMascota">
                                    <input type="hidden" value="<%=usu%>" name="usuario">
                                    <input type="hidden" value="<%=nombre%>" name="mascota">            
                                    <input class="btn btn-danger" type="submit" value="Eliminar">
                                </form>  
                                  
                            </td>
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
        </div>
    </body>
</html>
