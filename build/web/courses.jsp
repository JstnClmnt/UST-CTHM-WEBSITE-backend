<%-- 
    Document   : courses
    Created on : Sep 19, 2018, 1:55:05 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.CourseInfo"%>
<%@page import="bean.Course"%>
<%@page import="bean.Major"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM | ${course.course_title}</title>
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
    <body class="bigger-font">
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
                            <a class="nav-link" href="about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="news">News</a>
                        </li>
                        <c:choose>
                            <c:when test="${course.courseID<=1}">
                                <li class="nav-item dropdown active-tab">
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
                            </c:when>
                            <c:otherwise>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="TourMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Tourism Management
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="TourMgmtLink">
                                    <a class="dropdown-item" href="courses?course_id=1&major_id=1">Travel Operations and Service Management</a>
                                    <a class="dropdown-item" href="courses?course_id=1&major_id=2">Recreation and Leisure Management</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown active-tab">
                                    <a class="nav-link dropdown-toggle" href="#" id="HosMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Hospitality Management
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="HosMgmtLink">
                                        <a class="dropdown-item" href="courses?course_id=2&major_id=3">Culinary Entrepreneurship</a>
                                        <a class="dropdown-item" href="courses?course_id=2&major_id=4">Hospitality Leadership</a>
                                    </div>
                                </li>
                            </c:otherwise>
                            
                        </c:choose>
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
        </div>

        <div>
            <div>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100 car-img" src="img/home/car1.jpg" alt="First slide">
                            <div class="carousel-caption d-flex h-100 align-items-center justify-content-center">
                                <h1 class="lato">Make it <b>HAPPEN</b></h1>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 car-img" src="img/home/car2.jpg" alt="Second slide">
                            <div class="carousel-caption d-flex h-100 align-items-center justify-content-center">
                                <h1 class="lato">Be <b>PART</b> of us</h1>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 car-img" src="img/home/car3.jpg" alt="Third slide">
                            <div class="carousel-caption d-flex h-100 align-items-center justify-content-center">
                                <h1 class="lato">Share your <b>PASSION</b></h1>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="content-wrap">
                <div class="inner-content">
                    <h2 class="merriweather">${course.major.majorName}</h2><hr><br>
                    <div class="row lato justify">
                        <div class="col-4">
                            <div class="list-group" id="list-tab" role="tablist">
                            <c:forEach items="${course.courseinfo}" varStatus="loop" var="category">
                                <c:choose>
                                    <c:when test="${loop.first}">
                                        <a class="list-group-item list-group-item-action active" id="list-${category.title}-list" data-toggle="list" href="#list-${category.title}" role="tab" aria-controls="${category.title}">${category.icon}${category.title}</a>
                                   </c:when>
                                    <c:otherwise>
                                        <a class="list-group-item list-group-item-action" id="list-${category.title}-list" data-toggle="list" href="#list-${category.title}" role="tab" aria-controls="${category.title}">${category.icon}${category.title}</a>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                                             
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="tab-content" id="nav-tabContent">
                                <c:forEach items="${course.courseinfo}" varStatus="loop" var="category">
                                     <c:choose>
                                        <c:when test="${loop.first}">
                                            <div class="tab-pane fade show active" id="list-${category.title}" role="tabpanel" aria-labelledby="list-${category.title}-list">
                                                <h2 class="lato alumni-heading"><b>${category.title}</b></h2><br>
                                                <p>
                                                ${category.description}
                                                </p>
                                            </div>
                                        </c:when>
                                        <c:when test="${category.title=='Facilities'}">
                                            <div class="tab-pane fade show" id="list-${category.title}" role="tabpanel" aria-labelledby="list-${category.title}-list">
                                            <h2 class="lato alumni-heading"><b>${category.title}</b></h2><br><br>
                                            <div>
                                                <div id="carouselIndicators" class="carousel slide" data-ride="carousel">
                                                    <ol class="carousel-indicators">
                                                        <c:set var="count" value="0" scope="page" />
                                                        <c:forEach items="${facilitiesimage}" varStatus="loop" var="facimage">
                                                            <c:choose>
                                                            <c:when test="${loop.first}">
                                                                <li data-target="#carouselIndicators" data-slide-to="${count}" class="active"></li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li data-target="#carouselIndicators" data-slide-to="${count}"></li>
                                                            </c:otherwise>
                                                            </c:choose>
                                                            <c:set var="count" value="${count + 1}" scope="page"/>
                                                        </c:forEach>
                                                    </ol>
                                                    <div class="carousel-inner">
                                                        <c:forEach items="${facilitiesimage}" varStatus="loop" var="facimage">
                                                            <c:choose>
                                                            <c:when test="${loop.first}">
                                                            <div class="carousel-item active">
                                                                <img class="d-block w-100 img-fluid" src="ImageServlet?imgId=${facimage.image.imageId}" alt="First slide">
                                                            </div>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div class="carousel-item">
                                                                    <img class="d-block w-100 img-fluid" src="ImageServlet?imgId=${facimage.image.imageId}" alt="First slide">
                                                                </div>
                                                            </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>        
                                                    </div>
                                                                   
                                                    <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                        <span class="sr-only">Previous</span>
                                                    </a>
                                                    <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                        <span class="sr-only">Next</span>
                                                    </a>
                                                </div>
                                            </div>
                                                <br>
                                                <p>
                                                ${category.description}
                                                </p>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="tab-pane fade show" id="list-${category.title}" role="tabpanel" aria-labelledby="list-${category.title}-list">
                                                <h2 class="lato alumni-heading"><b>${category.title}</b></h2><br>
                                                <p>
                                                ${category.description}
                                                </p>
                                            </div>
                                        </c:otherwise>
                                     </c:choose>
                                </c:forEach>
                            </div>
                        </div>
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
