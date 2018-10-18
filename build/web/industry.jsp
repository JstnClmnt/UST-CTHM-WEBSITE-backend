<%-- 
    Document   : industry
    Created on : Oct 18, 2018, 2:31:43 AM
    Author     : Christian Justine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Stakeholders - Industry</title>
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

        <div class="white-bg navcol">
            <nav class="navbar navbar-expand-lg sticky-top lato">
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

        <div>
            <div class="content-wrap">
                <div class="inner-content">
                    <h2 class="merriweather">Industry</h2><hr><br>
                    <h4 class="lato alumni-heading text-center"><b>List of Employers</b></h4><br>
                    <div class="row">
                        <div class="col-sm-6">
                            <h5>Hotels</h5>
                            <ul>
                                <li><a href="#">Admiral Hotel</a></li>
                                <li><a href="#">Belmont Hotel Manila</a></li>
                                <li><a href="#">Conrad Hotel Manila</a></li>
                                <li><a href="#">Crowne Plaza Manila Galleria</a></li>
                                <li><a href="#">Diamond Hotel Philippines</a></li>
                                <li><a href="#">Dusit Thani Manila</a></li>
                                <li><a href="#">Edsa Shangri-La Manila</a></li>
                                <li><a href="#">Makati Shangri-La Manila</a></li>
                                <li><a href="#">Manila Hotel</a></li>
                                <li><a href="#">Marco Polo Ortigas Manila</a></li>
                                <li><a href="#">Marriot Hotel Manila</a></li>
                                <li><a href="#">Nobu Hotel Manila</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6">
                            <ul>
                                <li><a href="#">Novotel Manila Araneta Center</a></li>
                                <li><a href="#">Okada Manila</a></li>
                                <li><a href="#">Shangri-La at the Fort</a></li>                                
                            </ul><hr>
                            <h5>Airlines</h5>
                            <ul>
                                <li><a href="#">AirAsia Philippines</a></li>
                                <li><a href="#">Cebu Pacific</a></li>
                                <li><a href="#">PAL Express</a></li>
                                <li><a href="#">Philippine Airlines</a></li>
                                <li><a href="#">SkyJet</a></li>
                                <li><a href="#">Cebgo</a></li>
                                <li><a href="#">AirSWIFT</a></li>
                            </ul>
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
