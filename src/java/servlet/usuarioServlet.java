/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import conecta.db.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        processRequest(request, response);
        PrintWriter out = response.getWriter();
    try {
            boolean existeUser = false;
            //Guardamos los datos enviados desde la index
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");

            //establemos la conexion
            ConexionDB mysql = new ConexionDB();
            Connection cn = mysql.Conectar();

            String consult = "Select * from login where usuario=? && password=?";
            ResultSet rs = null;
            PreparedStatement pst = null;
            pst = cn.prepareStatement(consult);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            String m = "";            
            while (rs.next()) {
                //en caso de existir un conincidencia
                existeUser = true;
                //y remplazmos los atributos de dicho usuario
                m = rs.getString("usuario");           
            }
            if (existeUser){
                //para el usuario existente
                //Remplazamos los atributos que luego obtendremos de las paginas jsp
                request.setAttribute("usuario", m);              
                //mandamos estos atributos a la pagina de bienvenida.jsp
                request.getRequestDispatcher("/bienvenida.jsp").forward(request, response);    
            } else {
                //de lo contrario nos lleva la pagina errorLogin.jsp
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

}
