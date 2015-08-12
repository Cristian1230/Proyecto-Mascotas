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
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "postulacion", urlPatterns = {"/postulacion"})
public class postulacion extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet postulacion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet postulacion at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
         
            String nombre_completo = request.getParameter("nombre");
            String email = request.getParameter("email");
            String mascota = request.getParameter("mascota");
            String due = request.getParameter("due");
            String telefono = request.getParameter("telefono");
            String direccion = request.getParameter("direccion");
            String usuario = request.getParameter("usuario");
   
         

            ConexionDB mysql = new ConexionDB();
            Connection cn = mysql.Conectar();
            Statement st = cn.createStatement();
            
            String query = "insert into postulantes  values('"+ nombre_completo +"','"+ email +"','"+ mascota +"','"+ due +"','"+ telefono +"','"+ direccion +"','"+ usuario +"');";
            
            st.executeUpdate(query);
            
            Statement sta = cn.createStatement();
              String query2 = "insert into adoptadas values('"+ mascota +"','"+ due +"','"+ usuario +"');";
            st.executeUpdate(query2);
            
            HttpSession session = request.getSession(false);
  
         
             
                //Mandamos estos atributos a la página bienvenida.jsp
                request.getRequestDispatcher("mascotas-adoptadas.jsp").forward(request, response);
                
            
            
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
