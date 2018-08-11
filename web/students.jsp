<%-- 
    Document   : students
    Created on : Aug 12, 2018, 1:24:15 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST CTHM | Students</title>
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
    <body>
        <div class="green-bg header">
            <div>
                <a class="header-link" href="index.html">
                    <div class="row header-content">
                        <div class="col-sm-2">
                            <img class="ust-logo" src="img/ust-logo.png">
                        </div>
                        <div class="col-sm-8 header-text">
                            <p class="lato ust-text">University of Santo Tomas</p><br>
                            <p class="merriweather cthm-text">COLLEGE OF TOURISM AND HOSPITALITY MANAGEMENT</p>
                        </div>
                        <div class="col-sm-2">
                            <img class="cthm-logo" src="img/cthm-logo.png">
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg white-bg sticky-top lato">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="index.html" id="HomeLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Home
                        </a>
                        <div class="dropdown-menu" aria-labelledby="HomeLink">
                            <a class="dropdown-item" href="index.html#announcements">Announcements</a>
                            <a class="dropdown-item" href="index.html#news">News and Updates</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutUs.html">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="TourMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Tourism Management
                        </a>
                        <div class="dropdown-menu" aria-labelledby="TourMgmtLink">
                        <a class="dropdown-item" href="travelOps.html">Travel Operations and Service Management</a>
                        <a class="dropdown-item" href="recreationLeisure.html">Recreation and Leisure Management</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="HosMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Hospitality Management
                        </a>
                        <div class="dropdown-menu" aria-labelledby="HosMgmtLink">
                        <a class="dropdown-item" href="culinaryEntrep.html">Culinary Entrepreneurship</a>
                        <a class="dropdown-item" href="hospitalityLead.html">Hospitality Leadership</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active-tab" href="#" id="StakeholdersLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Stakeholders
                        </a>
                        <div class="dropdown-menu" aria-labelledby="StakeholdersLink">
                        <a class="dropdown-item" href="students.html">Students</a>
                        <a class="dropdown-item" href="alumni.html">Alumni</a>
                        <a class="dropdown-item" href="industry.html">Industry</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="support.html">Support Service</a>
                    </li>
                </ul>
            </div>
        </nav>

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
                    <h2 class="merriweather">List of Student Organizations</h2><hr><br>
                    <div class="row lato">
                        <div class="col-4">
                            <div class="list-group" id="list-tab" role="tablist">
                            <a class="list-group-item list-group-item-action active" id="list-socc-list" data-toggle="list" href="#list-socc" role="tab" aria-controls="socc">SOCC</a>
                            <a class="list-group-item list-group-item-action" id="list-sc-list" data-toggle="list" href="#list-sc" role="tab" aria-controls="sc">CTHM SC</a>
                            <a class="list-group-item list-group-item-action" id="list-csc-list" data-toggle="list" href="#list-csc" role="tab" aria-controls="csc">CSC</a>
                            <a class="list-group-item list-group-item-action" id="list-mtn-list" data-toggle="list" href="#list-mtn" role="tab" aria-controls="mtn">MOUNTAINEERING</a>
                            <a class="list-group-item list-group-item-action" id="list-pax-list" data-toggle="list" href="#list-pax" role="tab" aria-controls="pax">PAX ROMANA</a>
                            <a class="list-group-item list-group-item-action" id="list-scarlet-list" data-toggle="list" href="#list-scarlet" role="tab" aria-controls="scarlet">SCARLET</a>
                            <a class="list-group-item list-group-item-action" id="list-gawi-list" data-toggle="list" href="#list-gawi" role="tab" aria-controls="gawi">SALINGGAWI</a>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="list-socc" role="tabpanel" aria-labelledby="list-socc-list">
                                <h3 class="merriweather center">SOCC</h3><br>
                                <img class="featured-img" src="img/home/main-bldg.jpg"><br><br>
                                <h4 class="lato bold">About</h4>
                                <p>
                                    Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.
                                </p>
                                <hr>
                                <h4 class="lato bold">Objectives</h4>
                                <p>
                                    Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.
                                </p>
                                <hr>
                                <h4 class="lato bold">Offices</h4>
                                <p>
                                    Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.
                                </p>
                                <hr>
                                <h4 class="lato bold">Phone</h4>
                                <p>
                                    Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.
                                </p>
                                <hr>
                                <h4 class="lato bold">Activities</h4>
                                <p>
                                    Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.Tell people more about this item. What's it about and what makes it interesting? To make this item your own click here > Add & Manage Items.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-sc" role="tabpanel" aria-labelledby="list-sc-list">
                                sc
                            </div>
                            <div class="tab-pane fade" id="list-csc" role="tabpanel" aria-labelledby="list-csc-list">
                                csc
                            </div>
                            <div class="tab-pane fade" id="list-mtn" role="tabpanel" aria-labelledby="list-mtn-list">
                                MOUNTAINEERING
                            </div>
                            <div class="tab-pane fade" id="list-pax" role="tabpanel" aria-labelledby="list-pax-list">
                                PAX ROMANA
                            </div>
                            <div class="tab-pane fade" id="list-scarlet" role="tabpanel" aria-labelledby="list-scarlet-list">
                                SCARLET
                            </div>
                            <div class="tab-pane fade" id="list-gawi" role="tabpanel" aria-labelledby="list-gawi-list">
                                SALINGGAWI
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="container-fluid green-bg">
            <div class="row footer-text-wrap">
                <div class="col-sm-6 footer-left lato white-text">
                    <h4><b>Contact Us</b></h4>
                    <p>Telephone:<br>+63-2-406-1611 loc. 4488</p>
                </div>
                <div class="col-sm-6 footer-right lato white-text">
                    <h4><b>Address</b></h4>
                    <p>Office of the Dean<br>
                        G/F, Albertus Magnus Building<br>
                        University of Santo Tomas<br>
                        España Boulevard, Sampaloc, Manila 1008
                    </p>
                </div>
            </div><br>
        </footer>
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
         <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>