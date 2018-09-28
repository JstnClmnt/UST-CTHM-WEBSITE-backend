/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.About;
import bean.Image;
import helper.ImageCRUD;
import helper.aboutCRUD;
import helper.jdbc.JDBC;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;
/**
 *
 * @author Justine Clemente
 */
public class editabout extends HttpServlet {
   private boolean isMultipart;
   private String filePath;
   private int maxFileSize = 50 * 1024 *1000;
   private int maxMemSize = 4 * 1024* 10;
   private File file ;

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

                int post_id=Integer.parseInt(request.getParameter("postid"));
                System.out.println(post_id);
                if(post_id!=5&&post_id!=10){
                    
                    try {
                        String description=request.getParameter("description");
                        aboutCRUD.editAbout(JDBC.getCon(), post_id, description);
                        response.sendRedirect("aboutcms?aboutId="+post_id);
                    } catch (SQLException ex) {
                        Logger.getLogger(editabout.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                else{
                    isMultipart = ServletFileUpload.isMultipartContent(request);
                    if( !isMultipart ) {
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>Servlet upload</title>");  
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<p>No file uploaded</p>"); 
                        out.println("</body>");
                        out.println("</html>");
                        return;
                    }

                  DiskFileItemFactory factory = new DiskFileItemFactory();

                  // maximum size that will be stored in memory
                  factory.setSizeThreshold(maxMemSize);

                  // Location to save data that is larger than maxMemSize.
                  factory.setRepository(new File("D:\\NetBeans"));

                  // Create a new file upload handler
                  ServletFileUpload upload = new ServletFileUpload(factory);

                  // maximum file size to be uploaded.
                  upload.setSizeMax( maxFileSize );

                  try { 
                     // Parse the request to get file items.
                     List fileItems = upload.parseRequest(request);

                     // Process the uploaded file items
                     Iterator i = fileItems.iterator();
                     String fileName="";
                     String fieldName;
                     fileName=""; 
                     String contentType="";
                     boolean isInMemory = false;
                     Image image=new Image();
                     long sizeInBytes =0;
                     while ( i.hasNext () ) {
                        FileItem fi = (FileItem)i.next();
                        if(fi.isFormField()){
                             if(post_id==10){
                                 String description="";
                                if(fi.getFieldName().equals("description")){
                                    description=fi.getString();
                                    aboutCRUD.editAbout(JDBC.getCon(), post_id, description);
                                }
                             }
                         }

                        else{
                           fieldName = fi.getFieldName();
                           fileName = fi.getName();
                           contentType = fi.getContentType();
                           isInMemory = fi.isInMemory();
                           sizeInBytes = fi.getSize();
                           System.out.println(sizeInBytes);
                            if(sizeInBytes!=0){
                                // Write the file
                                 if( fileName.lastIndexOf("\\") >= 0 ) {
                                    file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ;
                                 } else {
                                    file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ;
                                 }
                                 fi.write( file ) ;
                                 System.out.println("img\\"+fileName);
                                 About about=aboutCRUD.readAbout(JDBC.getCon(), post_id);
                                 image=new Image(file.getAbsolutePath(),fileName);
                                 int imgId=ImageCRUD.createImage(JDBC.getCon(), image);
                                 image.setImageId(imgId);
                                 aboutCRUD.editAboutImage(JDBC.getCon(), post_id, imgId);
                                 ImageCRUD.deleteImage(JDBC.getCon(), about.getImg().getImageId());
   
                           }
                        }

                     }
                        response.sendRedirect("aboutcms?aboutId="+post_id);
                        System.out.print("success image");
                     } catch(Exception ex) {
                        ex.printStackTrace();
                     }
                
                }
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
