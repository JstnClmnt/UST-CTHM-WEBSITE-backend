package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class industry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Stakeholders - Industry</title>\n");
      out.write("        <!-- Font Awesome Icons -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\">\n");
      out.write("        \n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(window).on('load',function(){\n");
      out.write("                $('#myModal').modal('show');\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"bigger-font\">\n");
      out.write("        <!-- The social media icon bar -->\n");
      out.write("        <div class=\"icon-bar\">\n");
      out.write("            <a href=\"#\" class=\"facebook\"><i class=\"fab fa-facebook\"></i></a> \n");
      out.write("            <a href=\"#\" class=\"twitter\"><i class=\"fab fa-twitter\"></i></a> \n");
      out.write("            <a href=\"#\" class=\"google\"><i class=\"fab fa-google\"></i></a> \n");
      out.write("            <a href=\"#\" class=\"linkedin\"><i class=\"fab fa-linkedin\"></i></a>\n");
      out.write("            <a href=\"#\" class=\"youtube\"><i class=\"fab fa-youtube\"></i></a> \n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("            <img class=\"header-img img-fluid\" src=\"img/cthm-header-img.png\" />\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"white-bg navcol\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg sticky-top lato\">\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <button class=\"navbar-toggler hidden-lg-up\" type=\"button\" data-toggle=\"collapse\" data-target=\"#mainNavbarCollapse\">\n");
      out.write("                    &#9776;\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse navbar-toggleable-md justify-content-center\" id=\"mainNavbarCollapse\">                    \n");
      out.write("                    <ul class=\"nav navbar-nav pull-lg-right\">\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"index.html\">\n");
      out.write("                                Home\n");
      out.write("                            </a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"aboutUs.html\">About Us</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"news.html\">News</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"TourMgmtLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                Tourism Management\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"TourMgmtLink\">\n");
      out.write("                            <a class=\"dropdown-item\" href=\"travelOps.html\">Travel Operations and Service Management</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"recreationLeisure.html\">Recreation and Leisure Management</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"HosMgmtLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                Hospitality Management\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"HosMgmtLink\">\n");
      out.write("                            <a class=\"dropdown-item\" href=\"culinaryEntrep.html\">Culinary Entrepreneurship</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"hospitalityLead.html\">Hospitality Leadership</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"StakeholdersLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                Stakeholders\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"StakeholdersLink\">\n");
      out.write("                            <a class=\"dropdown-item\" href=\"students.html\">Students</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"alumni.html\">Alumni</a>\n");
      out.write("                            <a class=\"dropdown-item\" href=\"industry.html\">Industry</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"support.html\">Support Service</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div>\n");
      out.write("            <div class=\"content-wrap\">\n");
      out.write("                <div class=\"inner-content\">\n");
      out.write("                    <h2 class=\"merriweather\">Industry</h2><hr><br>\n");
      out.write("                    <h4 class=\"lato alumni-heading text-center\"><b>List of Employers</b></h4><br>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <h5>Hotels</h5>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">Admiral Hotel</a></li>\n");
      out.write("                                <li><a href=\"#\">Belmont Hotel Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Conrad Hotel Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Crowne Plaza Manila Galleria</a></li>\n");
      out.write("                                <li><a href=\"#\">Diamond Hotel Philippines</a></li>\n");
      out.write("                                <li><a href=\"#\">Dusit Thani Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Edsa Shangri-La Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Makati Shangri-La Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Manila Hotel</a></li>\n");
      out.write("                                <li><a href=\"#\">Marco Polo Ortigas Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Marriot Hotel Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Nobu Hotel Manila</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-6\">\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">Novotel Manila Araneta Center</a></li>\n");
      out.write("                                <li><a href=\"#\">Okada Manila</a></li>\n");
      out.write("                                <li><a href=\"#\">Shangri-La at the Fort</a></li>                                \n");
      out.write("                            </ul><hr>\n");
      out.write("                            <h5>Airlines</h5>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">AirAsia Philippines</a></li>\n");
      out.write("                                <li><a href=\"#\">Cebu Pacific</a></li>\n");
      out.write("                                <li><a href=\"#\">PAL Express</a></li>\n");
      out.write("                                <li><a href=\"#\">Philippine Airlines</a></li>\n");
      out.write("                                <li><a href=\"#\">SkyJet</a></li>\n");
      out.write("                                <li><a href=\"#\">Cebgo</a></li>\n");
      out.write("                                <li><a href=\"#\">AirSWIFT</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer class=\"container-fluid blue-bg\">\n");
      out.write("            <div class=\"row footer-text-wrap\">\n");
      out.write("                <div class=\"col-sm-6 footer-left lato white-text\">\n");
      out.write("                    <h4><b>Contact Us</b></h4>\n");
      out.write("                    <p>Telephone:<br>+63-2-406-1611 loc. 4488</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6 footer-right lato white-text\">\n");
      out.write("                    <h4><b>Address</b></h4>\n");
      out.write("                    <p>Office of the Dean<br>\n");
      out.write("                        G/F, Albertus Magnus Building<br>\n");
      out.write("                        University of Santo Tomas<br>\n");
      out.write("                        España Boulevard, Sampaloc, Manila 1008\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div><br>\n");
      out.write("        </footer>\n");
      out.write("         <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("         <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js\" integrity=\"sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh\" crossorigin=\"anonymous\"></script>\n");
      out.write("         <script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
