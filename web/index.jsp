<%-- 
    Document   : index
    Created on : Aug 9, 2018, 11:51:45 PM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="bean.Announcements"%>
<%@page import="bean.News"%>
<%@page import="bean.Events"%>
<%@page import="bean.AlumniProfile"%>
<%@page import="bean.Header"%>
<%@page import="bean.Footer"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM | Home</title>
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <c:if test="${alumni.firstName==null}">
        <script type="text/javascript">
            $(window).on('load',function(){
                $('#myModal').modal('show');
            });
        </script>
        </c:if>
    </head>
    <body class="bigger-font" style>
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
                            <a class="nav-link dropdown-toggle active-tab" href="home">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about">About Us</a>
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
        </div>

        <!--ON PAGE LOAD MODAL (ito yung nagpopopup sa homepage)-->
              <!--ON PAGE LOAD MODAL (ito yung nagpopopup sa homepage)-->
        <div id="myModal" class="modal fade" tabindex="-1" role="dialog" >
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Welcome to UST-CTHM Official Website!</h5>
                        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button> -->
                    </div>
                    <div class="modal-body">
                        <center>
                            <p class="lato">Continue as...</p>
                            <div class="row">
                                <div class="col-sm-6">
                                    <button type="button" data-dismiss="modal" class="btn btn-primary btn-block">&nbsp;Guest&nbsp;</button>
                                </div>
                                <div class="col-sm-6">
                                    <a href="login.jsp" class="btn btn-success btn-block">Alumni</a>
                                </div>
                            </div>
                        </center>
                    </div>
                </div>
            </div>
        </div>
        <!--./ON PAGE LOAD MODAL-->
    
        <div>
            <div>
                <!--Carousel Pictures (ito yung may slider ng pictures)-->
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
                <!--./Carousel Pictures-->
            </div>

            <div class="content-wrap">
                <div class="inner-content">
                <!--****** Announcements ******-->
                    <div id="announcements"> 
                        <h2 class="merriweather"><i class="fas fa-bullhorn"></i> Announcements</h2><hr>
                        <div class="row">
                            <c:forEach items="${announcements}" var="announcement">
                            <div class="col-sm-4">
                                <div class="card bg-light mb-3" style="max-width: 21rem;">
                                    <div class="card-header"><b>${announcement.announcement}</b></div>
                                    <div class="card-body">
                                        <p class="card-text">${announcement.description}</p>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    <!--****** ./Announcements ******-->
                        <br><br>
                        <div id="news">
                        <!--****** News ******-->
                            <h2 class="merriweather"><i class="far fa-newspaper"></i> News and Updates</h2><hr>
                            <div class="row">
                                <c:forEach items="${news}" var="newses">
                                <div class="col-sm-4">
                                    <div class="card" style="width: 21rem;">
                                        <img class="card-img-top" src="ImageServlet?imgId=${newses.image.imageId}" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class="card-title"><b>${newses.publishedDate}</b></h5>
                                            <p class="card-text">${fn:substring(newses.newsDescription, 0, 25)}</p>
                                            <a href="newsPage?news_id=${newses.newsID}" class="btn btn-primary">Read More</a>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    <!--****** ./News ******-->
                        <br><br>
                        <div id="events"><!--****** Events ******-->
                            <h2 class="merriweather"><i class="far fa-calendar-alt"></i> Upcoming Events</h2><hr><br>
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-jan-tab" data-toggle="tab" href="#nav-jan" role="tab" aria-controls="nav-jan" aria-selected="true">Jan</a>
                                    <a class="nav-item nav-link" id="nav-feb-tab" data-toggle="tab" href="#nav-feb" role="tab" aria-controls="nav-feb" aria-selected="false">Feb</a>
                                    <a class="nav-item nav-link" id="nav-mar-tab" data-toggle="tab" href="#nav-mar" role="tab" aria-controls="nav-mar" aria-selected="false">Mar</a>
                                    <a class="nav-item nav-link" id="nav-apr-tab" data-toggle="tab" href="#nav-apr" role="tab" aria-controls="nav-apr" aria-selected="false">Apr</a>
                                    <a class="nav-item nav-link" id="nav-may-tab" data-toggle="tab" href="#nav-may" role="tab" aria-controls="nav-may" aria-selected="false">May</a>
                                    <a class="nav-item nav-link" id="nav-june-tab" data-toggle="tab" href="#nav-june" role="tab" aria-controls="nav-june" aria-selected="false">June</a>
                                    <a class="nav-item nav-link" id="nav-july-tab" data-toggle="tab" href="#nav-july" role="tab" aria-controls="nav-july" aria-selected="false">July</a>
                                    <a class="nav-item nav-link" id="nav-aug-tab" data-toggle="tab" href="#nav-aug" role="tab" aria-controls="nav-aug" aria-selected="false">Aug</a>
                                    <a class="nav-item nav-link" id="nav-sept-tab" data-toggle="tab" href="#nav-sept" role="tab" aria-controls="nav-sept" aria-selected="false">Sept</a>
                                    <a class="nav-item nav-link" id="nav-oct-tab" data-toggle="tab" href="#nav-oct" role="tab" aria-controls="nav-oct" aria-selected="false">Oct</a>
                                    <a class="nav-item nav-link" id="nav-nov-tab" data-toggle="tab" href="#nav-nov" role="tab" aria-controls="nav-nov" aria-selected="false">Nov</a>
                                    <a class="nav-item nav-link" id="nav-dec-tab" data-toggle="tab" href="#nav-dec" role="tab" aria-controls="nav-dec" aria-selected="false">Dec</a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-jan" role="tabpanel" aria-labelledby="nav-jan-tab">
                                    <c:forEach items="${jan}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-feb" role="tabpanel" aria-labelledby="nav-feb-tab">
                                    <c:forEach items="${feb}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-mar" role="tabpanel" aria-labelledby="nav-mar-tab">
                                    <c:forEach items="${mar}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-apr" role="tabpanel" aria-labelledby="nav-apr-tab">
                                     <c:forEach items="${apr}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-may" role="tabpanel" aria-labelledby="nav-may-tab">
                                    <c:forEach items="${may}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-june" role="tabpanel" aria-labelledby="nav-june-tab">
                                    <c:forEach items="${june}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                
                                </div>
                                <div class="tab-pane fade" id="nav-july" role="tabpanel" aria-labelledby="nav-july-tab">
                                    <c:forEach items="${july}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-aug" role="tabpanel" aria-labelledby="nav-aug-tab">
                                    <c:forEach items="${aug}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-sept" role="tabpanel" aria-labelledby="nav-sept-tab">
                                    <c:forEach items="${sept}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-oct" role="tabpanel" aria-labelledby="nav-oct-tab">
                                     <c:forEach items="${oct}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-nov" role="tabpanel" aria-labelledby="nav-nov-tab">
                                    <c:forEach items="${nov}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                </div>
                                <div class="tab-pane fade" id="nav-dec" role="tabpanel" aria-labelledby="nav-dec-tab">
                                    <c:forEach items="${dec}" var="event">
                                        <b>${event.eventDate}</b>-${event.eventTitle}
                                        <br>
                                        ${event.eventDescription}
                                        <br><br>
                                    </c:forEach>
                                
                                </div>
                            </div>
                        </div><!--****** ./Events ******-->
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