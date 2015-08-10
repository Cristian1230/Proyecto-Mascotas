/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import conecta.db.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cristian
 */
@WebServlet(name = "GenerarPDF", urlPatterns = {"/GenerarPDF"})
public class GenerarPDF extends HttpServlet {

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
        Document document = new Document();

        try {
            ConexionDB sqlite = new ConexionDB();
            java.sql.Connection cn = sqlite.Conectar();
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM mascotas;");

            response.setContentType("APPLICATION/download");
            response.setHeader("Content-Disposition", "filename=Mascotas.pdf");
            PdfWriter.getInstance(document, response.getOutputStream());
            document.open();

            Image image = Image.getInstance("C:/Users/Cristian/Documents/NetBeansProjects/adopc-mascotas/web/imagenes/logo9.png");
            image.scaleAbsolute(100, 100);
            document.add(image);

            Paragraph preface = new Paragraph("LOVE MY PET");
            preface.setAlignment(Element.ALIGN_CENTER);
            document.add(preface);

            PdfPTable table = new PdfPTable(5); // 3 columns.
            table.setWidthPercentage(100); //Width 100%
            table.setSpacingBefore(10f); //Space before table
            table.setSpacingAfter(10f); //Space after table

            //Set Column widths
            float[] columnWidths = {1f, 1f, 1f, 1f, 1f};
            table.setWidths(columnWidths);

            PdfPCell cellusuario = new PdfPCell(new Paragraph("usario"));
            cellusuario.setBorderColor(BaseColor.BLUE);
            cellusuario.setPaddingLeft(10);
            cellusuario.setHorizontalAlignment(Element.ALIGN_CENTER);
            cellusuario.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell celltipo = new PdfPCell(new Paragraph("tipo"));
            celltipo.setBorderColor(BaseColor.BLUE);
            celltipo.setPaddingLeft(10);
            celltipo.setHorizontalAlignment(Element.ALIGN_CENTER);
            celltipo.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cellnombre = new PdfPCell(new Paragraph("nombre"));
            cellnombre.setBorderColor(BaseColor.BLUE);
            cellnombre.setPaddingLeft(10);
            cellnombre.setHorizontalAlignment(Element.ALIGN_CENTER);
            cellnombre.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell cellraza = new PdfPCell(new Paragraph("raza"));
            cellraza.setBorderColor(BaseColor.BLUE);
            cellraza.setPaddingLeft(10);
            cellraza.setHorizontalAlignment(Element.ALIGN_CENTER);
            cellraza.setVerticalAlignment(Element.ALIGN_MIDDLE);

            PdfPCell celledad = new PdfPCell(new Paragraph("edad"));
            celledad.setBorderColor(BaseColor.BLUE);
            celledad.setPaddingLeft(10);
            celledad.setHorizontalAlignment(Element.ALIGN_CENTER);
            celledad.setVerticalAlignment(Element.ALIGN_MIDDLE);

            table.addCell(cellusuario);
            table.addCell(celltipo);
            table.addCell(cellnombre);
            table.addCell(cellraza);
            table.addCell(celledad);

            while (rs.next()) {

                PdfPCell cell1 = new PdfPCell(new Paragraph(rs.getString(1)));
                cell1.setPaddingLeft(1);
                cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
                cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);
                table.addCell(cell1);

                PdfPCell cell2 = new PdfPCell(new Paragraph(rs.getString(2)));
                cell2.setPaddingLeft(2);
                cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell2.setBackgroundColor(BaseColor.LIGHT_GRAY);
                cell2.setVerticalAlignment(Element.ALIGN_MIDDLE);
                table.addCell(cell2);

                PdfPCell cell3 = new PdfPCell(new Paragraph(rs.getString(3)));
                cell3.setPaddingLeft(3);
                cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell3.setBackgroundColor(BaseColor.LIGHT_GRAY);
                cell3.setVerticalAlignment(Element.ALIGN_MIDDLE);
                table.addCell(cell3);

                PdfPCell cell4 = new PdfPCell(new Paragraph(rs.getString(4)));
                cell4.setPaddingLeft(4);
                cell4.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell4.setBackgroundColor(BaseColor.LIGHT_GRAY);
                cell4.setVerticalAlignment(Element.ALIGN_MIDDLE);
                table.addCell(cell4);

                PdfPCell cell5 = new PdfPCell(new Paragraph(rs.getString(5)));
                cell5.setPaddingLeft(5);
                cell5.setHorizontalAlignment(Element.ALIGN_CENTER);
                cell5.setBackgroundColor(BaseColor.LIGHT_GRAY);
                cell5.setVerticalAlignment(Element.ALIGN_MIDDLE);
                table.addCell(cell5);

            }

            document.add(table);
            //Add more content here
            cn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        document.close();
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
