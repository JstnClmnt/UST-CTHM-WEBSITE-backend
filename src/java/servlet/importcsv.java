/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.AlumniProfile;
import helper.AlumniProfileCRUD;
import helper.jdbc.JDBC;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Christian Justine
 */
public class importcsv extends HttpServlet {
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
         String caption="";
         String fileName="";
         String fieldName;
         fileName=""; 
         String contentType="";
         boolean isInMemory = false;
         long sizeInBytes =0;
         while ( i.hasNext () ) {
            FileItem fi = (FileItem)i.next();
            if(fi.isFormField()){
             }
            
            else{
               fieldName = fi.getFieldName();
               fileName = fi.getName();
               contentType = fi.getContentType();
               isInMemory = fi.isInMemory();
               sizeInBytes = fi.getSize();
                if(sizeInBytes!=0){
                    if( fileName.lastIndexOf("\\") >= 0 ) {
                        file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ;
                     } else {
                        file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ;
                     }
                    String firstName="";
                    String middleName="";
                    String lastName="";
                    String birthdate="";
                    String gender="";
                    String address="";
                    String postalCode="";
                    String contactNumber="";
                    String company="";
                    String work="";
                    String email="";
                    String nationality="";
                    String civilStatus="";
                    int yearGraduated=0;
                    String program="";
                    String major="";
                    fi.write( file ) ;
                    String username="";
                    String[] datearray=null;
                    String password="";
                    String data[]=new String[16];
                    BufferedReader in= new BufferedReader(new FileReader(file));
                    String read;
                    int y=0;
                    AlumniProfile alumni=new AlumniProfile();
                    while((read=in.readLine())!=null){
                        data=read.split(",");
                        if(y>0){
                            firstName=data[0];
                            middleName=data[1];
                            lastName=data[2];
                            birthdate=data[3];
                            gender=data[4];
                            address=data[5];
                            postalCode=data[6];
                            contactNumber=data[7];
                            company=data[8];
                            work=data[9];
                            email=data[10];
                            nationality=data[11];
                            civilStatus=data[12];
                            yearGraduated=Integer.parseInt(data[13]);
                            program=data[14];
                            major=data[15];
                            if(firstName.split(" ").length==2){
                                username=lastName.toLowerCase()+"."+firstName.split(" ")[0].toLowerCase()+firstName.split(" ")[1].toLowerCase();
                            }
                            else{
                                username=lastName.toLowerCase()+"."+firstName.toLowerCase();
                            }
                            datearray=birthdate.split("/");
                            if(Integer.parseInt(datearray[0])<10){
                                password="0"+datearray[0]+datearray[1]+datearray[2];
                                birthdate=datearray[2]+"-"+"0"+datearray[0]+"-"+datearray[1];
                            }
                            else{
                                password=datearray[0]+datearray[1]+datearray[2];
                                birthdate=datearray[2]+"-"+datearray[0]+"-"+datearray[1];
                            }
                            System.out.println(birthdate);
                            System.out.println("Password: "+password);
                            //alumni=new AlumniProfile(firstName,  middleName,  lastName, birthdate, gender,  address,  postalCode,  contactNumber,  company, work,  email, nationality,  civilStatus, yearGraduated,  program,  major,  username, password, null);
                            AlumniProfileCRUD.createProfileNoImage(JDBC.getCon(), alumni);
                            
                        }
                        y++;
                    }
                    file.delete();
		
               }

            }
            
         }
         response.sendRedirect("alumniprofilecms");
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
