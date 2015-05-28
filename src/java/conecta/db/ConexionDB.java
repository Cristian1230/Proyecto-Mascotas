/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conecta.db;

import java.sql.*;

/**
 *
 * @author Cristian
 */
public class ConexionDB {

    public String host = "jdbc:mysql://localhost:3306/";
    public String dbName = "mascotas";
    public String user = "root";
    public String pass = "";
    public String url = host + dbName + "?user=" + user + "&password=" + pass;
  
    public Connection Conectar() {
        Connection link = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            link = DriverManager.getConnection(this.url);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Problema con la conexion");
        }
        return link;
    }
}



