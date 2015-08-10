<%-- 
    Document   : imagen
    Created on : 4/08/2015, 08:17:48 AM
    Author     : Cristian
--%>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String destination = "C:/Users/Cristian/Documents/NetBeansProjects/adopc-mascotas/web/files";
            
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setSizeThreshold(1024);

            factory.setRepository(new File(destination));

            ServletFileUpload upload = new ServletFileUpload(factory);

            try {
                List<FileItem> partes = upload.parseRequest(request);

                for (FileItem items : partes) {

                    File file = new File(destination, items.getName());
                    items.write(file);
                }
                
                out.print("Archivo subido..");
            } catch (Exception e) {
                out.write("Excepcion: " + e.getMessage() + "");
            }
            
        %>
        
    </body>
</html>
