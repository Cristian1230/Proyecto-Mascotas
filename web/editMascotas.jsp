<%-- 
    Document   : editMascotas
    Created on : 10/08/2015, 09:01:31 AM
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
        <title>mascota</title>
        <link rel="icon" type="image/x-icon" href="imagenes/logo7.jpg"> 
        <link rel="stylesheet" type="text/css" href="estilos.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
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



    <body>
        <div class="registro">
            <form style="height: 0;"  action="editMascotas" method="post" >
                <fieldset  style="position: relative; height: 750px; width: 40%; left: 8px;  top:-73px;">
                    <legend style="color: #ffffff;">Registro de mascota</legend>

                    <input type="hidden"   name="usuario" value="<%= usuario%>"/>
                    <input type="hidden"   name="mascotavieja" value="<%= nombre%>"/>
                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Tipo</label>
                        <input class="form-control" value="<%= tipo%>" name="tipo" type="text" placeholder="Ingrese tipo de mascota" required>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Nombre de la mascota</label>
                        <input class="form-control" value="<%= nombre%>" name="nombre" type="text" placeholder="nombre de la mascota" required>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Raza</label>
                        <input class="form-control" value="<%= raza%>" name="raza" type="text" placeholder="raza de la mascota" required>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Edad</label>
                        <input class="form-control" value="<%= edad%>" name="edad" type="text" placeholder="Ingrese edad de la mascota" required>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Color de la mascota</label>
                        <input class="form-control" value="<%= color%>" name="color" type="text" placeholder="Color de la mascota" required>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Temperamento</label>
                        <input class="form-control" value="<%= temperamento%>" name="temperamento" type="text" placeholder="Ingrese el temperamento" required>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label"  for="focusedInput">Vacunas</label>
                        <br>
                        <select class="form-control"  name="vacunas">
                            <option value="Si" >Si  </option>
                            <option value="No" >No  </option>
                        </select>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Esterilizado</label>
                        <br>
                        <select class="form-control" name="esterilizado">
                            <option value="Si" >Si  </option>
                            <option value="No" >No  </option>
                        </select>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Desparacitado</label>
                        <br>
                        <select class="form-control" name="desparacitado">
                            <option value="Si" >Si  </option>
                            <option value="No" >No  </option>
                        </select>
                    </div>

                    <div class="form-group" style="left: 40px; color: #ffffff;">
                        <label class="control-label" for="focusedInput">Foto</label>
                        <input class="form-control" name="foto" type="text" placeholder="Ingrese la URL de la imagen" >
                    </div>
                    <br>
                    <br>
                    <input  class="btn btn-success" type="submit" value="GUARDAR" style="position:absolute; left:90px; top:858px;"/>

                </fieldset>

            </form>


        </div>
    </body>
</html>
