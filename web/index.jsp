<%-- 
    Document   : index
    Created on : Aug 9, 2018, 11:51:45 PM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM | Home</title>
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
                        <a class="nav-link dropdown-toggle active-tab" href="index.html" id="HomeLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Home
                        </a>
                        <div class="dropdown-menu" aria-labelledby="HomeLink">
                            <a class="dropdown-item" href="index.html#announcements">Announcements</a>
                            <a class="dropdown-item" href="index.html#news">News and Updates</a>
                            <a class="dropdown-item" href="index.html#events">Events</a>
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
                        <a class="nav-link dropdown-toggle" href="#" id="StakeholdersLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                    <div id="announcements"> <!--****** Announcements ******-->
                        <h2 class="merriweather">Announcements</h2><hr>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="card bg-light mb-3" style="max-width: 21rem;">
                                    <div class="card-header"><b>NOW HIRING</b></div>
                                    <div class="card-body">
                                        <p class="card-text">CTHM is hiring for male and female professors.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="card bg-light mb-3" style="max-width: 21rem;">
                                    <div class="card-header"><b>SUSPENSION OF CLASSES</b></div>
                                    <div class="card-body">
                                        <p class="card-text">Classes are suspended today 09 May 2018 due to inclement weather</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="card bg-light mb-3" style="max-width: 21rem;">
                                    <div class="card-header"><b>THIRD TERM ENROLLMENT</b></div>
                                    <div class="card-body">
                                        <p class="card-text">Fees for 3rd term are now uploaded to Blackboard.</p>
                                    </div>
                                </div>
                            </div>
                        </div><!--****** ./Announcements ******-->
                        <br><br>
                        <div id="news">
                            <h2 class="merriweather">News and Updates</h2><hr><!--****** News ******-->
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="card" style="width: 21rem;">
                                        <img class="card-img-top" src="img/home/main-bldg.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class="card-title"><b>May 9, 2018</b></h5>
                                            <p class="card-text">CTHM admin, faculty become Certified Hospitality Educators by the American Hotel and Lodging Educational Institute</p>
                                            <a href="#" class="btn btn-primary">Read More</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="card" style="width: 21rem;">
                                        <img class="card-img-top" src="img/home/main-bldg.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class="card-title"><b>December 14, 2017</b></h5>
                                            <p class="card-text">UST reaps seven awards in PACUCOA assembly, recognized with highest number of accredited programs in the country</p>
                                            <a href="#" class="btn btn-primary">Read More</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="card" style="width: 21rem;">
                                        <img class="card-img-top" src="img/home/main-bldg.jpg" alt="Card image cap">
                                        <div class="card-body">
                                            <h5 class="card-title"><b>October 10, 2017</b></h5>
                                            <p class="card-text">CTHM admin, faculty become Certified Hospitality Educators by the American Hotel and Lodging Educational Institute</p>
                                            <a href="#" class="btn btn-primary">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--****** ./News ******-->
                        <br><br>
                        <div id="events"><!--****** Events ******-->
                            <h2 class="merriweather">Upcoming Events</h2><hr><br>
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
                                <div class="tab-pane fade show active" id="nav-jan" role="tabpanel" aria-labelledby="nav-jan-tab">jaaan<br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                                <div class="tab-pane fade" id="nav-feb" role="tabpanel" aria-labelledby="nav-feb-tab">.febbbbb<br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                                <div class="tab-pane fade" id="nav-mar" role="tabpanel" aria-labelledby="nav-mar-tab">marchhhhh...<br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>
                            </div>
                        </div><!--****** ./Events ******-->
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