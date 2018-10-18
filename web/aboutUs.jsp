<%-- 
    Document   : aboutUs
    Created on : Aug 12, 2018, 1:07:44 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.About"%>
<%@page import="bean.Image"%>
<%@page import="bean.Administration"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM | About Us</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(window).on('load',function(){
                $('#myModal').modal('show');
            });
        </script>
    </head>
    <body>
          <!-- The social media icon bar -->
        <div class="icon-bar">
            <a href="#" class="facebook"><i class="fab fa-facebook"></i></a> 
            <a href="#" class="twitter"><i class="fab fa-twitter"></i></a> 
            <a href="#" class="google"><i class="fab fa-google"></i></a> 
            <a href="#" class="linkedin"><i class="fab fa-linkedin"></i></a>
            <a href="#" class="youtube"><i class="fab fa-youtube"></i></a> 
        </div>
        <div>
            <img class="header-img img-fluid" src="ImageServlet?imgId=${headerimage.image.imageId}" />
        </div>
        <div class="white-bg navcol bottom-spacer">
            <nav class="navbar navbar-expand-lg lato">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">
                    &#9776;
                </button>
                <div class="collapse navbar-collapse navbar-toggleable-md justify-content-center" id="mainNavbarCollapse">                    
                    <ul class="nav navbar-nav pull-lg-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="home">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active-tab" href="about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="news">News</a>
                        </li>
                        <!-- <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="news" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                News
                            </a>
                            <div class="dropdown-menu" aria-labelledby="HomeLink">
                                <a class="dropdown-item" href="news.html">News and Updates</a>
                                <a class="dropdown-item" href="events.html">Events</a>
                            </div>
                        </li> -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="TourMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Tourism Management
                            </a>
                            <div class="dropdown-menu" aria-labelledby="TourMgmtLink">
                            <a class="dropdown-item" href="courses?course_id=1&major_id=1">Travel Operations and Service Management</a>
                            <a class="dropdown-item" href="courses?course_id=1&major_id=2">Recreation and Leisure Management</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="HosMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Hospitality Management
                            </a>
                            <div class="dropdown-menu" aria-labelledby="HosMgmtLink">
                                <a class="dropdown-item" href="courses?course_id=2&major_id=3">Culinary Entrepreneurship</a>
                                <a class="dropdown-item" href="courses?course_id=2&major_id=4">Hospitality Leadership</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="StakeholdersLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Stakeholders
                            </a>
                            <div class="dropdown-menu" aria-labelledby="StakeholdersLink">
                            <a class="dropdown-item" href="students">Students</a>
                            <a class="dropdown-item" href="alumni">Alumni</a>
                            <a class="dropdown-item" href="industry.jsp">Industry</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="studentservices">Support Service</a>
                        </li>
                        <c:if test="${alumni.firstName!=null}">
                        <li class="nav-item">
                            <a class="nav-link" href="profile.jsp">Profile</a>
                        </li>
                        </c:if>
                    </ul>
            </div>
        </nav>

        <div>
            <img src="img/aboutUs/aboutus.png" class="aboutUsHeader">
            <div class="content-wrap">
                <div class="inner-content">
                    <div class="dean-message">
                        <h2 class="merriweather">Message from our Dean</h2><hr><br>
                        <div class="clearfix">
                            <img class="dean-pic" src="img\aboutUs\1.jpg">
                            <blockquote class="blockquote">
                                <p class="mb-0 lato dean-text">
                                    I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. I’m a great place for you to tell a story and let your users know a little more about you.
                                </p>
                                <footer class="blockquote-footer">ASST. PROF. MARIA CECILIA A. TIO CUISON, MEd, CHE, CGSP, <cite title="Source Title">CTHM Dean</cite></footer>
                            </blockquote>
                        </div>
                    </div><br><br>
                    <div class="about-us">
                        <h2 class="merriweather">About Us</h2><hr><br>
                        <div class="row lato list-about"><!-- list grp -->
                            <div class="col-4">
                                <div class="list-group" id="list-tab" role="tablist">
                                    <c:forEach items="${abouts}" varStatus="loop" var="about" >
                                        <c:choose>
                                        <c:when test="${loop.first}">
                                            <a class="list-group-item list-group-item-action active" id="list-${about.title}-list" data-toggle="list" href="#list-${about.title}" role="tab" aria-controls="${about.title}">${about.icon}${about.title}</a>
                                        </c:when>
                                        <c:otherwise>
                                             <a class="list-group-item list-group-item-action" id="list-${about.title}-list" data-toggle="list" href="#list-${about.title}" role="tab" aria-controls="${about.title}">${about.icon}${about.title}</a>
                                        </c:otherwise>
                                        </c:choose>
                                       
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-8">
                                <div class="tab-content" id="nav-tabContent">
                                    <c:forEach items="${abouts}" varStatus="loop" var="about" >
                                        <c:choose>
                                        <c:when test="${loop.first}">
                                            <div class="tab-pane fade show active" id="list-${about.title}" role="tabpanel" aria-labelledby="list-${about.title}-list">
                                                <h2 class="lato alumni-heading"><b>${about.title}</b></h2>
                                                ${about.description}
                                            </div>
                                        </c:when>
                                        <c:when test="${about.title=='Organizational Chart'}">
                                             <div class="tab-pane fade" id="list-${about.title}" role="tabpanel" aria-labelledby="list-${about.title}-list">
                                                <h2 class="lato alumni-heading"><b>${about.title}</b></h2>
                                                <img class="orgChart" src="ImageServlet?imgId=${about.img.imageId}">
                                                <p>${about.description}</p>
                                            </div>
                                        </c:when>
                                        <c:when test="${about.title=='Location Map and Contact Details'}">
                                             <div class="tab-pane fade" id="list-${about.title}" role="tabpanel" aria-labelledby="list-${about.title}-list">
                                                <h2 class="lato alumni-heading"><b>${about.title}</b></h2>
                                                <img class="map" src="ImageServlet?imgId=${about.img.imageId}">
                                                <p>${about.description}</p>
                                            </div>
                                        </c:when>
                                        <c:when test="${about.title=='CTHM Team'}">
                                            <div class="tab-pane fade" id="list-${about.title}" role="tabpanel" aria-labelledby="list-${about.title}-list">
                                            <h2 class="lato alumni-heading"><b>CTHM Administration</b></h2>
                                                <div>
                                                    <c:forEach items="${cthmteam}" var="admin">
                                                    <div class="clearfix">
                                                        <img class="team" src="ImageServlet?imgId=${admin.image.imageId}">
                                                        <p class="team-name">
                                                            <b>${admin.fullName}</b><br>
                                                            ${admin.position}
                                                        </p>
                                                    </div>
                                                    </c:forEach>
                                                </div><br><br>
                                                 <div>
                                                <h4 class="merriweather"><b>Support Staff</b></h4>
                                                ${about.description}
                                                </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="tab-pane fade" id="list-${about.title}" role="tabpanel" aria-labelledby="list-${about.title}-list">
                                            <h2 class="lato alumni-heading"><b>${about.title}</b></h2>
                                            ${about.description}
                                            </div>
                                        </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </div>
                            </div>
                        </div><!-- ./list grp -->
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="container-fluid blue-bg">
            <div class="row footer-text-wrap">
                <div class="col-sm-6 footer-left lato white-text">
                    <h4><b>${contact.title}</b></h4>
                    ${contact.description}
                </div>
                <div class="col-sm-6 footer-right lato white-text">
                    <h4><b>${address.title}</b></h4>
                    ${address.description}
                </div>
            </div><br>
        </footer>
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
         <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>