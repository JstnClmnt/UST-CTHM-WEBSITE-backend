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
            <img class="header-img img-fluid" src="img/cthm-header-img.png" />
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
                            <a class="dropdown-item" href="industry.html">Industry</a>
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
                        <!-- <div id="accordion" class="lato">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#missionVision" aria-expanded="true" aria-controls="missionVision">
                                            <b>Mission and Vision</b>
                                        </button>
                                    </h5>
                                </div>

                                <div id="missionVision" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <b>Mission</b><br>
                                        We commit ourselves in the formation of top-notch competent, committed, and compassionate Thomasian Tourism and Hospitality professionals for the service of the
                                        Church, the nation, and the global community<br><br>
                                        <b>Vision</b><br>
                                        We envision a premiere College of Tourism and Hospitality Management in the country
                                        recognized for its outstanding programs, producing world-class professionals
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#history" aria-expanded="false" aria-controls="history">
                                            <b>History</b>
                                        </button>
                                    </h5>
                                </div>
                                <div id="history" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        The idea of forming an Institution was conceived by the Tourism and HRM Departments during late 1990’s with the strong support and unwavering efforts of the College of Education. The need for establishing an Institute was realized by two departments because of the fast-paced changes and growth of the industry that greatly influenced the tourism and hospitality education. Likewise, by merging the two programs, student would be able to specialize and dedicate themselves in enhancing their knowledge and skills that would respond to the needs of the industry. Series of departmental meetings and brainstorming were conducted with the vision of forming a new academic unit in the University. The idea was presented to the Tourism and HRM Faculty until such time thatthe College of Education decided to merge the programs by having one Department In its initial stage, the Tourism and HRM Departments were temporarily relocated at the College of Education’s Mini-hotel in the year 2002. This was considered as the dry run to assess the viability of separating the departments from College of Education. Three years later, a formal proposal for institutionalization was submitted to the Academic Council. A thorough procedure that included meetings, deliberation and election were carried out. April 28, 2006 marked the establishment of the Tourism and HRM Departments as an Institution. Upon the approval of the College of Regents dated November 19, 2008; by the Academic Senate dated December 16, 2008; and the Board of Trustees dated January 20, 2009, the institute of Tourism and Hospitality Management was finally converted in to the College of Tourism and Hospitality Management. In 2015, both programs of the CTHM (Hotel and Restaurant Management and Travel Management) received the coveted Center of Excellence distinction from the Commission on Higher Education.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#program" aria-expanded="false" aria-controls="program">
                                            <b>Program Educational Objectives</b>
                                        </button>
                                    </h5>
                                </div>
                                <div id="program" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <b>A few years after graduation, the graduates of the College of Tourism and Hospitality of the University of Santo Tomas are expected to:</b><br><br>
                                        <ol>
                                            <li>Employ a solid understanding and the need for continuous upgrading of the managerial and operational competencies of tourism and hospitality through reflective practice consistent with the global standards and Christian values;</li>
                                            <li>Assess industry-academe trends and issues to generate research undertakings in tourism and hospitality through the basis of specific standards and criteria within personal, professional, societal, and ethical context;</li>
                                            <li>Practice effective interpersonal and communication skills through collaboration, use of information technology and respect for cultural diversity; and</li>
                                            <li>Exhibit Christian leadership promoting life advocacies through project implementation for social and economic transformation.</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#orgChart" aria-expanded="false" aria-controls="orgChart">
                                        Collapsible Group Item #3
                                        </button>
                                    </h5>
                                </div>
                                <div id="orgChart" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#awards" aria-expanded="false" aria-controls="awards">
                                        Collapsible Group Item #3
                                        </button>
                                    </h5>
                                </div>
                                <div id="awards" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#cthmTeam" aria-expanded="false" aria-controls="cthmTeam">
                                        Collapsible Group Item #3
                                        </button>
                                    </h5>
                                </div>
                                <div id="cthmTeam" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#facilities" aria-expanded="false" aria-controls="facilities">
                                        Collapsible Group Item #3
                                        </button>
                                    </h5>
                                </div>
                                <div id="facilities" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                    </div>
                                </div>
                            </div>
                        </div>./accordion -->
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