<%-- 
    Document   : culinaryEntrep
    Created on : Aug 12, 2018, 1:21:57 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM | Culinary Entrepreneurship</title>
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
                        <a class="nav-link dropdown-toggle active-tab" href="#" id="HosMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                    <h2 class="merriweather">Major in Culinary Entrepreneurship</h2><hr><br>
                    <div class="row lato">
                        <div class="col-4">
                            <div class="list-group" id="list-tab" role="tablist">
                            <a class="list-group-item list-group-item-action active" id="list-intro-list" data-toggle="list" href="#list-intro" role="tab" aria-controls="intro">Introduction</a>
                            <a class="list-group-item list-group-item-action" id="list-progDesc-list" data-toggle="list" href="#list-progDesc" role="tab" aria-controls="progDesc">Program Description</a>
                            <a class="list-group-item list-group-item-action" id="list-outcomes-list" data-toggle="list" href="#list-outcomes" role="tab" aria-controls="outcomes">Program Intended Learning Outcomes</a>
                            <a class="list-group-item list-group-item-action" id="list-career-list" data-toggle="list" href="#list-career" role="tab" aria-controls="career">Career Opportunities</a>
                            <a class="list-group-item list-group-item-action" id="list-curriculum-list" data-toggle="list" href="#list-curriculum" role="tab" aria-controls="curriculum">Curriculum</a>
                            <a class="list-group-item list-group-item-action" id="list-activities-list" data-toggle="list" href="#list-activities" role="tab" aria-controls="activities">Student Activities</a>
                            <a class="list-group-item list-group-item-action" id="list-facilities-list" data-toggle="list" href="#list-facilities" role="tab" aria-controls="facilities">Facilities</a>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="list-intro" role="tabpanel" aria-labelledby="list-intro-list">
                                <h2 class="lato alumni-heading"><b>Introduction</b></h2><br>
                                <p>
                                    This program provides students with a synthesis of different skills, concepts, and principles specializing in hospitality training. It involves the study and application of practical and managerial knowledge and functions, such as hotel and restaurant operations, culinary arts, food service, hospitality education, and research that are essential in preparing the students to become adept future restaurateurs and hoteliers. Graduates from this program have career opportunities as Restaurant Operations manager, Executive Housekeeper, Front Office Staff, Front Office Manager, Management Trainee, Food and Beverage Director, Restaurant or Lodging Business Owner, Leisure and Recreation Consultant, Food Service Consultant, Academician, Food Stylist, Executive Chef, Independent Caterer, Cruise Line Staff, or Bartender.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-progDesc" role="tabpanel" aria-labelledby="list-progDesc-list">
                                <h2 class="lato alumni-heading"><b>Program Description</b></h2><br>
                                <p>
                                    BACHELOR OF SCIENCE IN HOSPITALITY MANAGEMENT
                                    <br><br>
                                    <b>Major in Culinary Entrepreneurship</b> program aims to provide the students the opportunity to explore possibilities in becoming future hospitality entrepreneurs running and managing personal or family business thru innovative and creative culinary concepts, products and services. The curriculum provides the students tools and strategies which shall fuel the business endeavors in the culinary industry which include restaurants, cafes, hotels, school food service, catering services among others.
                                    <br><br>
                                    <b></b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-outcomes" role="tabpanel" aria-labelledby="list-outcomes-list">
                                <h2 class="lato alumni-heading"><b>Program Intended Learning Outcomes</b></h2><br>
                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li><br>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li><br>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li><br>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li><br>
                                    <li> Integrate appropriate technology in planning for instruction.</li><br>
                                    <li> Discuss the tools used in assessment of and for learning.</li><br>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li><br>
                                    <li> Explain the dynamics of the school system.</li><br>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li><br>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li><br>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li><br>
                                </ol>
                            </div>
                            <div class="tab-pane fade" id="list-career" role="tabpanel" aria-labelledby="list-career-list">
                                <h2 class="lato alumni-heading"><b>Career Opportunities</b></h2><br>
                                <p>
                                    Fine Dining, Quick Service, Casual Restaurants, Managed Services, Catering, Beverages
                                    <br><br>   
                                    <b>Dining Room positions:</b>
                                    <ul>
                                        <li>Cashier</li>
                                        <li>Bartender</li>
                                        <li>Mixologist</li>
                                        <li>Oenologist</li>
                                        <li>Restaurant Steward</li>
                                        <li>Bar Supervisor</li>
                                        <li>Waiter/Food Attendant</li>
                                        <li>Room Service Waiter</li>
                                        <li>Sommelier</li>
                                        <li>Barista</li>
                                        <li>Head waiter</li>
                                        <li>Captain waiter</li>
                                        <li>Bar accountant</li>
                                        <li>Restaurant Supervisor</li>
                                        <li>Assistant Restaurant Manager</li>
                                        <li>Shift Leader</li>
                                        <li>Team Leader</li>
                                        <li>Room Service Manager</li>
                                        <li>Maitred Hotel</li>
                                        <li>F&B Director</li>
                                        <li>F&B Outlet Manager</li>
                                        <li>Restaurant Manager</li>
                                        <li>Outlet Manager</li>
                                    </ul>
                                    <br>
                                    <b>Managed Services</b>
                                    <br>
                                    <b>Kitchen positions:</b>
                                    <ul>
                                        <li>Receiving Clerk</li>
                                        <li>Stock Clerk</li>
                                        <li>Commis Pastry</li>
                                        <li>Baker</li>
                                        <li>Butcher</li>
                                        <li>Commis 1, 2,3</li>
                                    </ul>
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-curriculum" role="tabpanel" aria-labelledby="list-curriculum-list">
                                <h2 class="lato alumni-heading"><b>Curriculum</b></h2><br>
                                <p>
                                    The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-activities" role="tabpanel" aria-labelledby="list-activities-list">
                                <h2 class="lato alumni-heading"><b>Student Activities</b></h2><br>
                                <p>
                                    Enter your answer here
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-facilities" role="tabpanel" aria-labelledby="list-facilities-list">
                                <h2 class="lato alumni-heading"><b>Facilities</b></h2><br>
                                <p>
                                    Enter your answer here
                                </p>
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
