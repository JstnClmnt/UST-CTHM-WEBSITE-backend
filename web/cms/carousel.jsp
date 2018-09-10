<%-- 
    Document   : carousel
    Created on : Sep 8, 2018, 4:52:08 PM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <!--CSS--><!-- Latest compiled and minified CSS -->
        <link href="cms/css/style.css" rel="stylesheet" type="text/css" media="all">
        <link rel="stylesheet" href="cms/css/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="cms/css/bootstrap.min.css">
    </head>
    <body>
        <nav class="navbar navbar-default bar-nav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img class="shs-logo" alt="Brand" src="img\ust-cthm-logo.PNG" height="45px">
                    </a>
                </div>
            </div>
        </nav>
        <div id="throbber" style="display:none; min-height:120px;"></div>
        <div id="noty-holder"></div>
        <div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->

        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse navbar-inverse">
           
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-0"><i class="fa fa-home"></i> HOME<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-0" class="collapse">
                        <li><a href="carousel.html"><i class="fa fa-angle-double-right"></i> Banner</a></li>
                        <li><a href="newsUpdates.html"><i class="fa fa-angle-double-right"></i> News and Updates</a></li>
                        <li><a href="calendar.html"><i class="fa fa-angle-double-right"></i> Calendar of Events</a></li>
                        <li><a href="announcements.html"><i class="fa fa-angle-double-right"></i> Announcements</a></li>
                    </ul>
                </li>     
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-info-circle"></i>  ABOUT US<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-1" class="collapse">
                        <li><a href="misionVision.html"><i class="fa fa-angle-double-right"></i> Mission and Vision</a></li>
                        <li><a href="history.html"><i class="fa fa-angle-double-right"></i> History</a></li>
                        <li><a href="program.html"><i class="fa fa-angle-double-right"></i> Program</a></li>
                        <li><a href="orgChart.html"><i class="fa fa-angle-double-right"></i> Organizational Chart</a></li>
                        <li><a href="awards.html"><i class="fa fa-angle-double-right"></i> Awards</a></li>
                        <li><a href="cthmTeam.html"><i class="fa fa-angle-double-right"></i> CTHM Team</a></li>
                        <li><a href="facilities.html"><i class="fa fa-angle-double-right"></i> Facilities</a></li>
                        <li><a href="linkages.html"><i class="fa fa-angle-double-right"></i> Linkages</a></li>
                        <li><a href="location.html"><i class="fa fa-angle-double-right"></i> Location</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-A"><i class="fa fa-fw fa-plane"></i>  TOURISM MGMT <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-A" class="collapse">
                        <li><a href="travelOps.html"><i class="fa fa-angle-double-right"></i> Travel Operations</a></li>
                        <li><a href="recLeisure.html"><i class="fa fa-angle-double-right"></i> Recreation and Leisure</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-B"><i class="fa fa-fw fa-building-o"></i>  HOSPITALITY MGMT <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-B" class="collapse">
                        <li><a href="culinaryEntrep.html"><i class="fa fa-angle-double-right"></i> Culinary Entrep</a></li>
                        <li><a href="hospitalityLead.html"><i class="fa fa-angle-double-right"></i> Hospitality Leadership</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-support"></i>  SUPPORT SERVICES <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="admission.html"><i class="fa fa-angle-double-right"></i> Admission</a></li>
                        <li><a href="studentWelfare.html"><i class="fa fa-angle-double-right"></i> Student Welfare</a></li>
                        <li><a href="internationalization.html"><i class="fa fa-angle-double-right"></i> Internationalization</a></li>
                        <li><a href="community.html"><i class="fa fa-angle-double-right"></i> Community</a></li>
                        <li><a href="counseling.html"><i class="fa fa-angle-double-right"></i> Counseling</a></li>
                        <li><a href="centralLib.html"><i class="fa fa-angle-double-right"></i> Central Library</a></li>
                        <li><a href="healthService.html"><i class="fa fa-angle-double-right"></i> Health Service</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-3"><i class="fa fa-fw fa-users"></i>  STAKEHOLDERS <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-3" class="collapse">
                        <li><a href="students.html"><i class="fa fa-angle-double-right"></i> Students</a></li>
                        <li><a href="alumni.html"><i class="fa fa-angle-double-right"></i> Alumni</a></li>
                        <li><a href="industry.html"><i class="fa fa-angle-double-right"></i> Industry</a></li>
                    </ul>
                </li>  
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-0A"><i class="fa fa-user-circle"></i> ACCOUNT<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-0A" class="collapse">
                        <li><a href="changePassword.html"><i class="fa fa-angle-double-right"></i> Change Password</a></li>
                        <li><a href="index.html"><i class="fa fa-angle-double-right"></i> Log Out</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                
            </div>
            <!-- /.row -->
            <div class="content-wrap">
                <div class="col-sm-12" id="content">
                    <div class="title">
                        <h2 class="heading">Banner</h2>
                        &emsp;<a href="#">View Page</a>
                    </div>
                    <hr>
                    <div>
                        <div>
                            <img src="img/car2.jpg" class="home-img"/>
                        </div>
                        <br>
                        <form>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="well">
                                            <label for="exampleInputFile">Banner 1</label>
                                            <input type="file" id="exampleInputFile">
                                        </div>
                                    </div>
                                    <div class="col-sm-6"></div>
                                    <div class="col-sm-2">
                                        &emsp;&nbsp;
                                        <button type="button" class="btn btn-primary">Save Changes</button>
                                    </div>
                                </div>
                            </div>
                            <br>
                        </form>
                        <br><br>
                        <div>
                            <img src="img/car2.jpg" class="home-img"/>
                        </div>
                        <br>
                        <form>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="well">
                                            <label for="exampleInputFile">Banner 1</label>
                                            <input type="file" id="exampleInputFile">
                                        </div>
                                    </div>
                                    <div class="col-sm-6"></div>
                                    <div class="col-sm-2">
                                        &emsp;&nbsp;
                                        <button type="button" class="btn btn-primary">Save Changes</button>
                                    </div>
                                </div>
                            </div>
                            <br>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="cms/js/script.js"></script>
    <script type="text/javascript" src="cms/js/bootstrap.min.js"></script>

    </body>
</html>