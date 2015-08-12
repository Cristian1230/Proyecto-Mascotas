/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import conecta.db.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Cristian
 */
@WebServlet(name = "usuarioServlet", urlPatterns = {"/usuarioServlet"})
public class usuarioServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out = response.getWriter();
        
           try {
            boolean buscar = false;
        
            String usuario = request.getParameter("usuario");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String rol = "";
            
            
            
            ConexionDB sqlite = new ConexionDB();
            java.sql.Connection cn = sqlite.Conectar();
            Statement st = cn.createStatement();
            ResultSet rs;
            
            String consulta = "Select * from usuarios where usuario='"+usuario+"' and password='"+ password +" ' ;";
            
            rs = st.executeQuery(consulta);
         
            while (rs.next()) {
                usuario = rs.getString(1);
                email = rs.getString(2);
                rol = rs.getString(3);
                password = rs.getString(4);
                buscar = true;
            }

            if (buscar) {
                
                //Creamos la sesion 
                HttpSession session = request.getSession(true);
                
         
                session.setAttribute("usuario", usuario);
                session.setAttribute("email", email);
                session.setAttribute("rol", rol);
                session.setAttribute("password", password);
                
                //Mandamos estos atributos a la página bienvenida.jsp
                request.getRequestDispatcher("/bienvenida.jsp").forward(request, response);
            } else {
                //De lo contrario vamos a la página errorLogin.jsp      
                request.getRequestDispatcher("/errorLogin.jsp").forward(request, response);      
            }
            out.close();
        } catch (SQLException ex) {
            out.println(ex.toString());
        }
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public String getMD5(String data) {
        String result = null;
        MessageDigest md;
        try {
            md = MessageDigest.getInstance("MD5");
            md.update(data.getBytes(Charset.forName("UTF-8")));
            result = String.format(Locale.ROOT, "%032x", new BigInteger(1, md.digest()));
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
        return result;
    }

}
