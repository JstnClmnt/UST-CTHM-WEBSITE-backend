/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.Header;
import bean.Image;
import helper.ImageCRUD;
import helper.HeaderCRUD;
import helper.jdbc.JDBC;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.util.Iterator;
import java.util.List;
/**
 *
 * @author Christian Justine
 */
public class editheader extends HttpServlet {
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
    public void init( ){
      // Get the file location where it would be stored.
      filePath = getServletContext().getInitParameter("file-upload"); 
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    isMultipart = ServletFileUpload.isMultipartContent(request);
        response.setContentType("text/html");
        java.io.PrintWriter out = response.getWriter( );
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

      System.out.println("Halu");
      try { 
      System.out.println("Hello");
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);
	System.out.println(fileItems.isEmpty());
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
                System.out.println("Hello?");
            }
            else{
               System.out.println("Hello?");
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
                     image=new Image(file.getAbsolutePath(),fileName);
                     int imgId=ImageCRUD.createImage(JDBC.getCon(), image);
                     System.out.println(imgId);
                     image.setImageId(imgId);
                     Header oldHeader=HeaderCRUD.readHeader(JDBC.getCon(), 1);
                     Header header=new Header(image);
                    HeaderCRUD.editHeader(JDBC.getCon(), 1, header.getImage().getImageId());
                     ImageCRUD.deleteImage(JDBC.getCon(), oldHeader.getImage().getImageId());
                     File oldFile=new File(oldHeader.getImage().getImgFilePath());
                     if(oldFile.delete()){
                            System.out.println("Delete Image Success");
                        }
                     response.sendRedirect("headerfootercms");
               }

            }
            
         }

         } catch(Exception ex) {
            ex.printStackTrace();
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
