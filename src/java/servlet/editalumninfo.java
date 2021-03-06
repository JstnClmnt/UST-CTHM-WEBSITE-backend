/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.AlumniProfile;
import bean.Image;
import helper.AlumniProfileCRUD;
import helper.ImageCRUD;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import helper.jdbc.JDBC;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Justine Clemente
 */
public class editalumninfo extends HttpServlet {
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

      try { 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);
	
         // Process the uploaded file items
         Iterator i = fileItems.iterator();
         boolean noImage=true;
         String lastName="";
         String address="";
         String contactNumber="";
         String emailPrimary="";
         String emailSecondary="";
         String nationality="";
         String civilStatus="";
         String company="";
         String companyAddress="";
         String companyNumber="";
         String yearStarted="";
         String work="";
         String password="";
         String confirmpassword="";
         int alumniID=0;
         String fileName="";
         String fieldName;
         fileName=""; 
         String contentType="";
         boolean isInMemory = false;
         Image image=new Image();
         long sizeInBytes =0;
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            System.out.println(fi.getFieldName());
            if(fi.isFormField()){
                 if(fi.getFieldName().equals("lname")){
                     lastName=fi.getString();
                 }
                 else if(fi.getFieldName().equals("address")){
                     address=fi.getString();
                 }
                 else if(fi.getFieldName().equals("contactnum")){
                     contactNumber=fi.getString();
                 }
                 else if(fi.getFieldName().equals("inputEmail3")){
                     emailPrimary=fi.getString();
                 }                 
                 else if(fi.getFieldName().equals("Email2")){
                     emailSecondary=fi.getString();
                 }
                 else if(fi.getFieldName().equals("nationality")){
                     nationality=fi.getString();
                 }
                 else if(fi.getFieldName().equals("civstatus")){
                     civilStatus=fi.getString();
                 }
                 else if(fi.getFieldName().equals("pw")){
                     try{
                         password=fi.getString();
                     }
                     catch(Exception e){
                         password="None";
                     }
                 }            
                 else if(fi.getFieldName().equals("cpw")){
                    try{
                        confirmpassword=fi.getString();
                     }
                     catch(Exception e){
                        confirmpassword="None";
                     }
                 }
                 else if(fi.getFieldName().equals("company")){
                     company=fi.getString();
                 }
                 else if(fi.getFieldName().equals("companyNum")){
                     companyNumber=fi.getString();
                 }
                 else if(fi.getFieldName().equals("yrstart")){
                     yearStarted=fi.getString();
                 }
                 else if(fi.getFieldName().equals("companyAddress")){
                     companyAddress=fi.getString();
                 }
                 else if(fi.getFieldName().equals("position")){
                     work=fi.getString();
                 }
                 else if(fi.getFieldName().equals("alumniid")){
                     alumniID=Integer.parseInt(fi.getString());
                 }                 
             }
            else{
               System.out.println("HELLO???");
               fieldName = fi.getFieldName();
               fileName = fi.getName();
               contentType = fi.getContentType();
               isInMemory = fi.isInMemory();
               sizeInBytes = fi.getSize();
               System.out.println(fileName);
                if(sizeInBytes!=0){
                    System.out.println("With Image");
                    System.out.println(alumniID);
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
                     image.setImageId(imgId);
                     noImage=false;
               }
                else{
                    System.out.println("No Image");
                    noImage=true;
                
                }

            }                    
            
         }
         if(noImage==false){
            AlumniProfile oldalumni=AlumniProfileCRUD.readAlumniProfile(JDBC.getCon(), alumniID);
            AlumniProfile newAlumni=new AlumniProfile( alumniID,lastName,address, contactNumber, nationality,civilStatus,emailPrimary,emailSecondary, company, companyAddress,Integer.parseInt(yearStarted),companyNumber,work,image);
            System.out.println(newAlumni.getImage().getImageId());
            AlumniProfileCRUD.editProfile(JDBC.getCon(), newAlumni);
            if(!oldalumni.getImage().equals(null)){
                File oldFile=new File(oldalumni.getImage().getImgFilePath());
                if(oldFile.delete()){
                    System.out.println("Delete Image Success");
                }
            }
            ImageCRUD.deleteImage(JDBC.getCon(), oldalumni.getImage().getImageId());
            HttpSession session=request.getSession(true);
            newAlumni=AlumniProfileCRUD.readAlumniProfile(JDBC.getCon(), alumniID);
            session.setAttribute("alumni",newAlumni);
         }
         else{
            AlumniProfile newAlumni=new AlumniProfile( alumniID,lastName,address, contactNumber, nationality,civilStatus,emailPrimary,emailSecondary, company, companyAddress,Integer.parseInt(yearStarted),companyNumber,work,null);
            AlumniProfileCRUD.editProfileNoImage(JDBC.getCon(), newAlumni);
            HttpSession session=request.getSession(true);
            newAlumni=AlumniProfileCRUD.readAlumniProfile(JDBC.getCon(), alumniID);
            session.setAttribute("alumni",newAlumni);
         }
         if(!password.equals("")){
             if(password.equals(confirmpassword)){
                 AlumniProfileCRUD.changePassword(JDBC.getCon(), password, alumniID);
                 HttpSession session=request.getSession(true);
                 session.removeAttribute("alumni");
                 response.sendRedirect("home");
                 
             }
         }
         else{
            response.sendRedirect("profile.jsp");
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
