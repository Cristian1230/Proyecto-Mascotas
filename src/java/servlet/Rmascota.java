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
@WebServlet(name = "Rmascota", urlPatterns = {"/Rmascota"})
public class Rmascota extends HttpServlet {

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
            out.println("<title>Servlet Rmascota</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Rmascota at " + request.getContextPath() + "</h1>");
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
                      
            String tipo = request.getParameter("tipo");
            String nombre = request.getParameter("nombre");
            String raza = request.getParameter("raza");
            String edad = request.getParameter("edad");
            String color = request.getParameter("color");
            String temperamento = request.getParameter("temperamento");
            String vacunas = request.getParameter("vacunas");
            String esterilizado = request.getParameter("esterilizado");
            String desparacitado = request.getParameter("desparacitado");
            String foto = request.getParameter("foto");
            
            
            String usuario = "Usuario";

            ConexionDB mysql = new ConexionDB();
            Connection cn = mysql.Conectar();
            Statement st = cn.createStatement();
            
            String query = "insert into mascotas (usuario, tipo, nombre, raza, edad, color, temperamento, vacunas, esterilizado, desparacitado, foto) values ('"+ usuario +"','"+ tipo +"','"+ nombre +"','"+ raza +"','"+ edad +"','"+ color +"','"+ temperamento +"','"+ vacunas +"','"+ esterilizado +"','"+ desparacitado +"','"+ foto +"');";
            
            st.executeUpdate(query);
            
            
            HttpSession session = request.getSession(true);
            session.setAttribute("tipo", tipo);
            session.setAttribute("nombre", nombre);
            session.setAttribute("raza",raza);
            session.setAttribute("edad", edad);
            session.setAttribute("color", color);
            session.setAttribute("temperamento", temperamento);
            session.setAttribute("vacunas",vacunas);
            session.setAttribute("esterilizado", esterilizado);
            session.setAttribute("desparacitado",desparacitado);
            session.setAttribute("foto",foto);
             
                //Mandamos estos atributos a la página bienvenida.jsp
                request.getRequestDispatcher("/mascotas.jsp").forward(request, response);
             
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
