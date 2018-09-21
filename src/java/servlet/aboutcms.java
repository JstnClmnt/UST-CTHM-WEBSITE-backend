/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import helper.aboutCRUD;
import helper.jdbc.JDBC;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Justine Clemente
 */
public class aboutcms extends HttpServlet {

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
            int ch=Integer.parseInt(request.getParameter("aboutId"));
            RequestDispatcher view=null;
            switch(ch){
                case 1:
                    request.setAttribute("mission",aboutCRUD.readAbout(JDBC.getCon(), 1));
                    request.setAttribute("vision",aboutCRUD.readAbout(JDBC.getCon(), 2));
                    view=request.getRequestDispatcher("missionvision.jsp");
                    view.forward(request,response);
                    break;
                case 2:
                    request.setAttribute("mission",aboutCRUD.readAbout(JDBC.getCon(), 1));
                    request.setAttribute("vision",aboutCRUD.readAbout(JDBC.getCon(), 2));
                    view=request.getRequestDispatcher("missionvision.jsp");
                    view.forward(request,response);
                    break;
                case 3:
                    request.setAttribute("about",aboutCRUD.readAbout(JDBC.getCon(), 3));
                    view=request.getRequestDispatcher("aboutdefault.jsp");
                    view.forward(request,response);
                    break;
                case 4:
                    request.setAttribute("about",aboutCRUD.readAbout(JDBC.getCon(), 4));
                    view=request.getRequestDispatcher("aboutdefault.jsp");
                    view.forward(request,response);
                    break;
                case 5:
                    request.setAttribute("about",aboutCRUD.readAbout(JDBC.getCon(), 5));
                    view=request.getRequestDispatcher("orgchart.jsp");
                    view.forward(request,response);
                    break;
                case 6:
                    request.setAttribute("about",aboutCRUD.readAbout(JDBC.getCon(), 7));
                    view=request.getRequestDispatcher("aboutdefault.jsp");
                    view.forward(request,response);
                    break;
                case 7:
                    response.sendRedirect("cthmteam");
                    break;
                case 8:
                    request.setAttribute("about",aboutCRUD.readAbout(JDBC.getCon(), 8));
                    view=request.getRequestDispatcher("aboutdefault.jsp");
                    view.forward(request,response);
                    break;
                case 9:
                    request.setAttribute("about",aboutCRUD.readAbout(JDBC.getCon(), 8));
                    view=request.getRequestDispatcher("aboutdefault.jsp");
                    view.forward(request,response);
                    break;
                case 10:
                    request.setAttribute("about",aboutCRUD.readAbout(JDBC.getCon(), 10));
                    view=request.getRequestDispatcher("location.jsp");
                    view.forward(request,response);
                    break;
                    
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(aboutcms.class.getName()).log(Level.SEVERE, null, ex);
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
