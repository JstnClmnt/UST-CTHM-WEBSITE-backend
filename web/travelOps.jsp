<%-- 
    Document   : travelOps
    Created on : Aug 12, 2018, 1:25:48 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM | Travel Operations and Service Management</title>
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
                        <a class="nav-link dropdown-toggle active-tab" href="#" id="TourMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                    <h2 class="merriweather">Major in Travel Operations and Service Management</h2><hr><br>
                    <div class="row lato justify">
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
                                This covers the study of various components related to the travel and tour industry through technical, practical, and professional learning relevant to the different pillars of tourism, such as tour and travel operations, transportation, accommodation, food and beverage, events management, allied services, entertainment and recreation, tourism research and education, tourism planning and development, and other tourism services. Graduates from this program have career opportunities as Reservation Agents, Flight Attendants, Airline Food Service Crew, Ticket Agents, Training Staff, Baggage Handlers, Sales Representatives, Travel Agents, Travel Counselors, Tour Guides, Tour Escorts, Tour Coordinators, Researchers, Academicians, Travel Writers, Public Relations Officers, or Event Organizers.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-progDesc" role="tabpanel" aria-labelledby="list-progDesc-list">
                                <h2 class="lato alumni-heading"><b>Program Description</b></h2><br>
                                <p>
                                    The BACHELOR OF SCIENCE IN TOURISM MANAGEMENT
                                    <br><br>
                                    <b>Major in Travel Operations and Service Management</b> program covers the study of various components focusing on the management, operations and service delivery relevant to the travel and tourism industry. It encompasses technical, practical and professional learning and application of skills with respect to specific areas such as travel agency management, tour arranging and planning, travel industry operations and procedures, tourism marketing and promotion strategies, travel counseling, travel industry law, international and domestic operations, and travel and tourism policy.
                                    <br><br>
                                    <b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>
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
                                Reservation Agents<br>
                                Research Analyst<br>
                                Ground Handling Personnel<br>
                                Flight Attendant<br>
                                Training Staff<br>
                                Customer Service Representative<br>
                                Domestic travel counsellor<br>
                                International travel counsellor<br>
                                File clerks<br>
                                Tour Planner<br>
                                Tour Guide<br>
                                Reservationist<br>
                                Group coordinator<br>
                                Operations employee<br>
                                Travel Representative<br>
                                Economic Development Specialist<br>
                                Travel Promotions Staff<br>
                                Public Information Officer<br>
                                Public Relations Personnel<br>
                                Communications Specialist<br>
                                Travel Editor<br>
                                Media Liaison<br>
                                Media Specialist<br>
                                Travel Photographer<br>
                                Administrative Assistant<br>
                                Information Specialist<br>
                                Media Coordinator<br>
                                Travel Writer<br>
                                Package tour Coordinator<br>
                                Manager of Travel Literature<br>
                                Chief of News and Information<br>
                                Research Director<br>
                                Ticketing Manager<br>
                                Area Supervisor<br>
                                Airline Purser<br>
                                Airline Manager<br>
                                Country Manager<br>
                                Reservations Manager<br>
                                Area Manager<br>
                                Ticketing Manager<br>
                                Product Development Manager<br>
                                Director for Customer Care<br>
                                Customer Service Quality Director<br>
                                Manager of Travel Literature<br>
                                Chief of News and Information<br>
                                Tourism Center Director<br>
                            </div>
                            <div class="tab-pane fade" id="list-curriculum" role="tabpanel" aria-labelledby="list-curriculum-list">
                                <h2 class="lato alumni-heading"><b>Curriculum</b></h2><br>
                                The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.
                            </div>
                            <div class="tab-pane fade" id="list-activities" role="tabpanel" aria-labelledby="list-activities-list">
                                <h2 class="lato alumni-heading"><b>Student Activities</b></h2><br>
                                Enter your answer here
                            </div>
                            <div class="tab-pane fade" id="list-facilities" role="tabpanel" aria-labelledby="list-facilities-list">
                                <h2 class="lato alumni-heading"><b>Facilities</b></h2><br>
                                ...
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